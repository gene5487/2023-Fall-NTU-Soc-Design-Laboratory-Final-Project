`define STATE_IDLE     3'b000
`define STATE_READY    3'b001
`define STATE_DONE     3'b010


// #define SIZE 16
// int A[SIZE] = {893, 40, 3233, 4267, 2669, 2541, 9073, 6023, 5681, 4622};
// 0x31
module mm
#(  parameter SIZE = 16)
(
  input wire    wb_clk_i,
  input wire    wb_rst_i,
  input wire    wbs_stb_i,  // valid
  input wire    wbs_cyc_i,  // not used
  input wire    wbs_we_i,   // 1:write 0:read
  input wire    [3:0] wbs_sel_i,  // not used
  input wire    [31:0] wbs_dat_i,
  input wire    [31:0] wbs_adr_i,
  output wire   wbs_ack_o,
  output wire   [31:0] wbs_dat_o,

  output wire   ready,  
  output wire   done
);
    reg [2:0] state, next_state;
    reg [5:0] input_count;  // counting how many elements have been recieved  
    reg [3:0] output_count;

    reg [3:0] B [0:SIZE-1];
    reg [3:0] A [0:3];
    reg [31:0] mm_out [0:15];
    reg write_ack;
    reg data_valid_delay;
    wire counter_on = (data_valid_delay==0) && (data_valid==1);

    wire write_addr_hit = (wbs_adr_i == 32'h3830_0000)? 1:0;
    wire data_valid = write_addr_hit & wbs_stb_i & wbs_we_i;

    wire read_addr_hit = (wbs_adr_i == 32'h3830_0010)? 1:0;
    wire data_request = read_addr_hit & wbs_stb_i & ~wbs_we_i;
    

    assign ready = (state==`STATE_READY)? 1:0;
    assign done = (state==`STATE_DONE)? 1:0;

    assign wbs_dat_o = (state==`STATE_DONE)? mm_out[output_count]:32'h0000_0000;
    wire read_ack = ((state==`STATE_DONE) && (data_request==1))? 1:0;
    assign wbs_ack_o = (state==`STATE_DONE)? read_ack:write_ack;

    integer i;
    integer j;
    always @(posedge wb_clk_i) begin
        data_valid_delay <= data_valid;
        if(wb_rst_i)begin
            input_count <= 0;
            output_count <= 0;
            for(i=0;i<SIZE;i=i+1)begin
                B[i] <= 0;
                mm_out[i] <= 0;
            end
            for(j=0;i<4;i=i+1)begin
                A[i] <= 0;
            end
        end
        else begin
            write_ack <= (data_valid==1 && state==`STATE_READY)? 1:0;
            input_count <= (counter_on==1)? input_count+1:input_count;

            if(input_count<16) begin
                B[input_count] <= (data_valid==1)? wbs_dat_i:B[input_count];
            end
            else begin
                if(data_valid)begin
                    A[3] = wbs_dat_i;
                    for(j=0;j<3;j=j+1)begin
                        A[j] <= A[j+1];
                    end
                end else begin
                end
            end

            output_count <= (read_ack==1)? output_count+1:output_count; 
        end
    end
    reg [31:0] out1;
    reg [31:0] out2;
    reg [31:0] out3;
    reg [31:0] out4;
    always @(*) begin
        out1 = A[0]*B[0]+A[1]*B[4]+A[2]*B[8]+A[3]*B[12];
        out2 = A[0]*B[1]+A[1]*B[5]+A[2]*B[9]+A[3]*B[13];
        out3 = A[0]*B[2]+A[1]*B[6]+A[2]*B[10]+A[3]*B[14];
        out4 = A[0]*B[3]+A[1]*B[7]+A[2]*B[11]+A[3]*B[15];
    end

    always @(posedge wb_clk_i) begin
        case(input_count)
            6'd20:begin
                mm_out[0] <= out1;
                mm_out[1] <= out2;
                mm_out[2] <= out3;
                mm_out[3] <= out4;
            end
            6'd24:begin
                mm_out[4] <= out1;
                mm_out[5] <= out2;
                mm_out[6] <= out3;
                mm_out[7] <= out4;
            end
            6'd28:begin
                mm_out[8] <= out1;
                mm_out[9] <= out2;
                mm_out[10] <= out3;
                mm_out[11] <= out4;
            end
            6'd32:begin
                mm_out[12] <= out1;
                mm_out[13] <= out2;
                mm_out[14] <= out3;
                mm_out[15] <= out4;
            end
        endcase
    end

    always@(*)begin
        case(state)
            `STATE_IDLE:begin
                next_state = `STATE_IDLE;
            end
            `STATE_READY:begin
                next_state = (input_count==32)?`STATE_DONE:`STATE_READY;
            end
            `STATE_DONE:begin
                next_state = `STATE_DONE;
            end
        endcase
    end

    always @(posedge wb_clk_i, posedge wb_rst_i) begin
        if(wb_rst_i)begin
            state <= `STATE_READY;
        end
        else begin
            state <= next_state;
        end
    end

endmodule

