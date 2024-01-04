`define STATE_IDLE     3'b000
`define STATE_READY    3'b001
`define STATE_LOCATING 3'b010
`define STATE_SHIFTING 3'b011
`define STATE_DONE     3'b111

// #define SIZE 10
// int A[SIZE] = {893, 40, 3233, 4267, 2669, 2541, 9073, 6023, 5681, 4622};
// 0x31
module qsort
#(  parameter SIZE = 10)
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
    reg [3:0] input_count;  // counting how many elements have been recieved  
    reg [31:0] sorted_array [0:SIZE-1];
    reg write_ack;
    reg [31:0] new_element;
    reg [3:0] compare_index;

    wire write_addr_hit = (wbs_adr_i == 32'h3810_0000)? 1:0;
    wire data_valid = write_addr_hit & wbs_stb_i & wbs_we_i;

    wire read_addr_hit = (wbs_adr_i == 32'h3810_0010)? 1:0;
    wire data_request = read_addr_hit & wbs_stb_i & ~wbs_we_i;
    
    wire less_than = ($signed(new_element) <= $signed(sorted_array[compare_index]))? 1:0;
    assign ready = (state==`STATE_READY)? 1:0;
    assign done = (state==`STATE_DONE)? 1:0;
    assign wbs_dat_o = (state==`STATE_DONE)? sorted_array[compare_index]:32'h0000_0000;
    wire read_ack = ((state==`STATE_DONE) && (data_request==1))? 1:0;
    assign wbs_ack_o = (state==`STATE_DONE)? read_ack:write_ack;

    integer i;
    always @(posedge wb_clk_i) begin
        if(wb_rst_i)begin
            write_ack <= 0;
            new_element <= 0;
            compare_index <= 0;
            input_count <= 0;
            for(i=0;i<SIZE-1;i=i+1)begin
                sorted_array[i] <= 32'h7FFF_FFFF;
            end
        end
        else begin
            write_ack <= (data_valid==1 && state==`STATE_READY)? 1:0;
            case(state)
                `STATE_IDLE:begin
                end
                `STATE_READY:begin
                    new_element <= (data_valid==1)? wbs_dat_i:new_element;
                    input_count <= (data_valid==1)? input_count+1:input_count;
                end
                `STATE_LOCATING:begin
                    compare_index <= (less_than==1)? compare_index:compare_index+1;
                end
                `STATE_SHIFTING:begin
                    sorted_array[0] <= (compare_index==0)? new_element:sorted_array[0];
                    sorted_array[1] <= (compare_index==1)? new_element: (compare_index<1)? sorted_array[0]:sorted_array[1];
                    sorted_array[2] <= (compare_index==2)? new_element: (compare_index<2)? sorted_array[1]:sorted_array[2];
                    sorted_array[3] <= (compare_index==3)? new_element: (compare_index<3)? sorted_array[2]:sorted_array[3];
                    sorted_array[4] <= (compare_index==4)? new_element: (compare_index<4)? sorted_array[3]:sorted_array[4];
                    sorted_array[5] <= (compare_index==5)? new_element: (compare_index<5)? sorted_array[4]:sorted_array[5];
                    sorted_array[6] <= (compare_index==6)? new_element: (compare_index<6)? sorted_array[5]:sorted_array[6];
                    sorted_array[7] <= (compare_index==7)? new_element: (compare_index<7)? sorted_array[6]:sorted_array[7];
                    sorted_array[8] <= (compare_index==8)? new_element: (compare_index<8)? sorted_array[7]:sorted_array[8];
                    sorted_array[9] <= (compare_index==9)? new_element: (compare_index<9)? sorted_array[8]:sorted_array[9];
                    compare_index <= 0;
                end
                `STATE_DONE:begin
                    compare_index <= (read_ack==1)? compare_index+1:compare_index;    
                end
            endcase
        end
    end

    always@(*)begin
        case(state)
            `STATE_IDLE:begin
                next_state = `STATE_IDLE;
            end
            `STATE_READY:begin
                next_state = (data_valid==1)? `STATE_LOCATING:`STATE_READY;
            end
            `STATE_LOCATING:begin
                next_state = (less_than==1 || compare_index==SIZE-1)? `STATE_SHIFTING:`STATE_LOCATING;
            end
            `STATE_SHIFTING:begin
                next_state = (input_count==SIZE)? `STATE_DONE:`STATE_READY;
            end
            `STATE_DONE:begin
                next_state = `STATE_DONE;
            end
        endcase
    end

    always @(posedge wb_clk_i or posedge wb_rst_i) begin
        if(wb_rst_i)begin
            state <= `STATE_READY;
        end
        else begin
            state <= next_state;
        end
    end
endmodule
