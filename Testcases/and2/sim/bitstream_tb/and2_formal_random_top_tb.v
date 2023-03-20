`timescale 1ns / 1ps

`default_nettype none

module and2_top_formal_verification_random_tb;

  reg clk;
	reg a;
	reg b;
	wire c;
  wire [0:639] gfpga_pad_QL_PREIO_A2F;
	wire [0:639] gfpga_pad_QL_PREIO_F2A;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_DEF0;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_DEF1;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:9] ccff_head;
	wire [0:9] ccff_tail;
	wire test_en;
	wire scan_mode;
	wire scan_clk;
	// bit config_enable;
	wire prog_clock;
	// bit [0:0] CFG_DONE;
	bit global_resetn;

  fpga_top U0_formal_verification (
		clk,	
		test_en,
		scan_mode,
		scan_clk,
		prog_clock,
		global_resetn,
		gfpga_pad_QL_PREIO_A2F[0:639],
		gfpga_pad_QL_PREIO_F2A[0:639],
		gfpga_pad_QL_PREIO_F2A_DEF0[0:639],
		gfpga_pad_QL_PREIO_F2A_DEF1[0:639],
		gfpga_pad_QL_PREIO_F2A_CLK[0:639],
		ccff_head[0:9],
		ccff_tail[0:9]);

		assign prog_clock[0] = 1'b0;
		// assign CFG_DONE[0] = 1'b1;
		assign test_en[0] = 1'b0;
		assign scan_mode[0] = 1'b0;
		assign scan_clk[0] = 1'b0;
		// assign clk[0] = 1'b0;
		// assign clk[1] = 1'b0;
		// assign clk[2] = 1'b0;
		// assign clk[3] = 1'b0;
		assign global_resetn = 1'b1;
    
    initial begin
			clk[0] <= 1'b0;
			clk[1] <= 1'b0;
			clk[2] <= 1'b0;
			clk[3] <= 1'b0;
			while(1) begin
				#1
				clk[0] <= !clk[0];
				clk[1] <= !clk[1];
				clk[2] <= !clk[2];
				clk[3] <= !clk[3];
			end
		end
		`include "../and2/PinMapping.v"

	initial begin
    `include "../../bitstream_text.txt"
  // config_enable[0] = 1'b1;
  // CFG_DONE[0] = 1'b1;
  // #10;

    a = 1'b0;
    b = 1'b0;
    #5;
    if (c === 0)
      $display("Status: Test Passed");
    else  
      $display("Status: Test Failed");

    a = 1'b0; 
    b = 1'b1;
    #5;
    if (c === 0)
      $display("Status: Test Passed");
    else  
      $display("Status: Test Failed");

    a = 1'b1;
    b = 1'b0;
    #5;
    if (c === 0)
      $display("Status: Test Passed");
    else  
      $display("Status: Test Failed");

    a = 1'b1;
    b = 1'b1;
    #5;
    if (c === 1)
      $display("Status: Test Passed");
    else  
      $display("Status: Test Failed");

    a = 1'b0;
    b = 1'b1;
    #5;
    if (c === 0)
      $display("Status: Test Passed");
    else  
      $display("Status: Test Failed");

    a = 1'b1;
    b = 1'b0;
    #5;
    if (c === 0)
      $display("Status: Test Passed");
    else  
      $display("Status: Test Failed");

    a = 1'b1;
    b = 1'b1;
    #5;
    if (c === 1)
      $display("Status: Test Passed");
    else  
      $display("Status: Test Failed");
    #5;
    $finish;
	end

	initial begin
		$dumpfile("and2_formal.vcd");
		$dumpvars(1, and2_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

