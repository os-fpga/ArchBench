//-------------------------------------------------------
//  Functionality: An n-bit non synchronous counters
//  Author:        Azfar 
//-------------------------------------------------------
`define CLK_CNTR 8

module multi_clocks(
    input  wire reset0,
    input  wire reset1,
    input  wire reset2,
    input  wire reset3,
    input  wire reset4,
    input  wire reset5,
    input  wire reset6,
    input  wire reset7,
    input  wire reset8,
    input  wire reset9,
    input  wire reset10,
    input  wire reset11,
    input  wire reset12,
    input  wire reset13,
    input  wire reset14,
    input  wire reset15,
    input  wire design_clk_0,
    input  wire design_clk_1,
    input  wire design_clk_2,
    input  wire design_clk_3,
    input  wire design_clk_4,
    input  wire design_clk_5,
    input  wire design_clk_6,
    input  wire design_clk_7,
    input  wire design_clk_8,
    input  wire design_clk_9,
    input  wire design_clk_10,
    input  wire design_clk_11,
    input  wire design_clk_12,
    input  wire design_clk_13,
    input  wire design_clk_14,
    input  wire design_clk_15,
    output wire [`CLK_CNTR - 1:0] cnt0,
    output wire [`CLK_CNTR - 1:0] cnt1,
    output wire [`CLK_CNTR - 1:0] cnt2,
    output wire [`CLK_CNTR - 1:0] cnt3,
    output wire [`CLK_CNTR - 1:0] cnt4,
    output wire [`CLK_CNTR - 1:0] cnt5,
    output wire [`CLK_CNTR - 1:0] cnt6,
    output wire [`CLK_CNTR - 1:0] cnt7,
    output wire [`CLK_CNTR - 1:0] cnt8,
    output wire [`CLK_CNTR - 1:0] cnt9,
    output wire [`CLK_CNTR - 1:0] cnt10,
    output wire [`CLK_CNTR - 1:0] cnt11,
    output wire [`CLK_CNTR - 1:0] cnt12,
    output wire [`CLK_CNTR - 1:0] cnt13,
    output wire [`CLK_CNTR - 1:0] cnt14,
    output wire [`CLK_CNTR - 1:0] cnt15
);
    

    simple_8bit_counter  a0(reset0,design_clk_0,cnt0);
    simple_8bit_counter  a1(reset1,design_clk_1,cnt1);
    simple_8bit_counter  a2(reset2,design_clk_2,cnt2);
    simple_8bit_counter  a3(reset3,design_clk_3,cnt3);
    simple_8bit_counter  a4(reset4,design_clk_4,cnt4);
    simple_8bit_counter  a5(reset5,design_clk_5,cnt5);
    simple_8bit_counter  a6(reset6,design_clk_6,cnt6);
    simple_8bit_counter  a7(reset7,design_clk_7,cnt7);
    simple_8bit_counter  a8(reset8,design_clk_8,cnt8);
    simple_8bit_counter  a9(reset9,design_clk_9,cnt9);
    simple_8bit_counter a10(reset10,design_clk_10,cnt10);
    simple_8bit_counter a11(reset11,design_clk_11,cnt11);
    simple_8bit_counter a12(reset12,design_clk_12,cnt12);
    simple_8bit_counter a13(reset13,design_clk_13,cnt13);
    simple_8bit_counter a14(reset14,design_clk_14,cnt14);
    simple_8bit_counter a15(reset15,design_clk_15,cnt15);


endmodule

module simple_8bit_counter(
    input  wire reset,
    input  wire clk,
    output wire [`CLK_CNTR - 1:0] cnt
);
    reg [`CLK_CNTR - 1:0] cnt_reg;
    assign cnt = cnt_reg;
    always @(posedge clk or negedge reset) begin
        if(!reset)begin
            cnt_reg <= {`CLK_CNTR{1'b0}};
        end else begin
            cnt_reg <= cnt_reg + 1;
        end
    end 
endmodule