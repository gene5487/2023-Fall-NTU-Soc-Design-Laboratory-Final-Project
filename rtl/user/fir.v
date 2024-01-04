module fir
#(
    parameter Tape_Num = 11,
    parameter Data_Num = 11
) (
    input wire wb_clk_i,
    input wire wb_rst_i,
    input wire wbs_stb_i,
    input wire wbs_cyc_i,
    input wire wbs_we_i,
    input wire [3:0] wbs_sel_i,
    input wire [31:0] wbs_dat_i,
    input wire [31:0] wbs_adr_i,
    output wire wbs_ack_o,
    output wire [31:0] wbs_dat_o,

    output wire ready,
    output wire done
);
    integer i;
    // state parameter
    localparam STATE_IDLE = 0;
    localparam STATE_INIT_TAP = 1;
    localparam STATE_SHIFT_DATA = 2;
    localparam STATE_CALC = 3;
    localparam STATE_DONE = 4;

    // state reg
    reg [2:0] state, next_state;

    // Tap reg
    reg signed [31:0] tap_reg [0:Tape_Num-1];

    reg signed [31:0] tap_reg_next [0:Tape_Num-1];
    // Data reg
    reg signed [31:0] data_reg [0:Tape_Num-1];
    reg signed [31:0] data_reg_next [0:Tape_Num-1];

    // Data IO ref
    reg signed [31:0] data_in, data_in_next;
    reg signed [31:0] data_out, data_out_next;

    // flag
    reg x_updated, x_updated_next;  // indicate new input has been processed

    // IO signal
    wire write_addr_hit = (wbs_adr_i == 32'h3820_0000) ? 1 : 0;
    wire data_valid = write_addr_hit & wbs_stb_i & wbs_we_i;
    
    wire read_addr_hit = (wbs_adr_i == 32'h3820_0010) ? 1 : 0;
    wire data_request = read_addr_hit & wbs_stb_i & ~wbs_we_i;

    wire write_ack = (data_valid == 1) ? 1 : 0;

    // output reg
    reg wbs_ack_o_reg, wbs_ack_o_reg_next;
    reg [31:0] wbs_dat_o_reg, wbs_dat_o_reg_next;
    reg ready_reg, ready_reg_next;
    reg done_reg, done_reg_next;

    // Counter & addr reg
    reg [5:0] addr_reg, addr_reg_next;
    reg [5:0] data_count, data_count_next;

    // Continuous assignment
    assign wbs_ack_o = wbs_ack_o_reg;
    assign wbs_dat_o = wbs_dat_o_reg;
    assign ready = ready_reg;
    assign done = done_reg;

    // combinational part
    // logic
    always @(*) begin
        // ready_reg_next = (data_valid == 1) ? 0 : ready_reg;
        ready_reg_next = (data_valid == 1) ? 0 : (data_request == 1 && done_reg == 1)? 1 : ready_reg;
        done_reg_next = (data_request == 1 && done_reg == 1) ? 0 : done_reg;
        data_in_next = (data_valid == 1) ? wbs_dat_i : data_in;
        data_out_next = data_out;
        wbs_ack_o_reg_next = (done_reg == 1 && data_request == 1) ? 1 : write_ack;
        wbs_dat_o_reg_next = wbs_dat_o_reg;
        addr_reg_next = addr_reg;
        x_updated_next = (data_valid == 1) ? 1 : x_updated;
        data_count_next = data_count;
        for (i = 0; i < Tape_Num; i=i+1) begin
            tap_reg_next[i] = tap_reg[i];
            data_reg_next[i] = data_reg[i];
        end
        case (state)
            STATE_IDLE: begin
            end 
            STATE_INIT_TAP: begin
                if (addr_reg < Tape_Num) begin
                    if (x_updated == 1) begin
                        tap_reg_next[addr_reg] = data_in;
                        addr_reg_next = addr_reg + 1;
                        x_updated_next = 0;
                        ready_reg_next = 1;
                    end
                end
                else begin
                    addr_reg_next = 0;
                end
            end
            STATE_SHIFT_DATA: begin
                if (addr_reg < Tape_Num-1) begin
                    data_reg_next[addr_reg] = data_reg[addr_reg+1];
                    addr_reg_next = addr_reg + 1;
                end
                else if (addr_reg == Tape_Num-1) begin
                    if (x_updated == 1) begin
                        data_reg_next[addr_reg] = data_in;
                        addr_reg_next = addr_reg + 1;
                        x_updated_next = 0;
                        // ready_reg_next = 1;
                    end
                end
                else begin
                    addr_reg_next = 0;
                    data_count_next = data_count + 1;
                end
            end
            STATE_CALC: begin
                if (addr_reg < Tape_Num) begin
                    data_out_next = $signed(data_out) + ($signed(data_reg[addr_reg]) * $signed(tap_reg[addr_reg]));
                    addr_reg_next = addr_reg + 1;
                end
                else begin
                    addr_reg_next = 0;
                    wbs_dat_o_reg_next = data_out;
                    done_reg_next = 1;
                end
            end
            STATE_DONE: begin
                data_out_next = 0;
                if (data_count < Data_Num) begin
                    // ready_reg_next = 1;
                end
                else begin
                    data_count_next = 0;
                    for (i = 0; i < Tape_Num; i=i+1) begin
                        tap_reg_next[i] = 0;
                        data_reg_next[i] = 0;
                    end
                    // ready_reg_next = 1;
                end
            end
        endcase
    end

    // FSM
    always @(*) begin
        next_state = state;
        case (state)
            STATE_IDLE: begin
                next_state = (data_valid == 1) ? STATE_INIT_TAP : STATE_IDLE;
            end
            STATE_INIT_TAP: begin
                next_state = (addr_reg == Tape_Num) ? STATE_SHIFT_DATA : STATE_INIT_TAP;
            end
            STATE_SHIFT_DATA: begin
                next_state = (addr_reg == Tape_Num) ? STATE_CALC : STATE_SHIFT_DATA;
            end
            STATE_CALC: begin
                next_state = (addr_reg == Tape_Num) ? STATE_DONE : STATE_CALC;
            end
            STATE_DONE: begin
                next_state = (addr_reg == Data_Num) ? STATE_IDLE : STATE_SHIFT_DATA;
            end
        endcase
    end


    // sequential part
    // tap/data reg array
    always @(posedge wb_clk_i or posedge wb_rst_i) begin
        if (wb_rst_i) begin
            for (i = 0; i < Tape_Num; i=i+1) begin
                tap_reg[i] <= 0;
                data_reg[i] <= 0;
            end
            addr_reg <= 0;
            x_updated <= 0;
            data_count <= 0;
        end
        else begin
            for (i = 0; i < Tape_Num; i=i+1) begin
                tap_reg[i] <= tap_reg_next[i];
                data_reg[i] <= data_reg_next[i];
            end
            addr_reg <= addr_reg_next;
            x_updated <= x_updated_next;
            data_count <= data_count_next;
        end
    end

    // FSM state
    always @(posedge wb_clk_i or posedge wb_rst_i) begin
        if (wb_rst_i) begin
            state <= STATE_IDLE;
        end
        else begin
            state <= next_state;
        end
    end

    // wishbone output reg
    always @(posedge wb_clk_i or posedge wb_rst_i) begin
        if (wb_rst_i) begin
            wbs_ack_o_reg <= 0;
            wbs_dat_o_reg <= 0;
            ready_reg <= 1;
            done_reg <= 0;
        end
        else begin
            wbs_ack_o_reg <= wbs_ack_o_reg_next;
            wbs_dat_o_reg <= wbs_dat_o_reg_next;
            ready_reg <= ready_reg_next;
            done_reg <= done_reg_next;
        end
    end

    // Data IO reg
    always @(posedge wb_clk_i or posedge wb_rst_i) begin
        if (wb_rst_i) begin
            data_in <= 0;
            data_out <= 0;
        end
        else begin
            data_in <= data_in_next;
            data_out <= data_out_next;
        end
    end
endmodule
