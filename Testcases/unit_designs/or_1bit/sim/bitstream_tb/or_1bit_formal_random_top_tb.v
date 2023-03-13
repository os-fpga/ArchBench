`timescale 1ns / 1ps

`default_nettype none

module or_1bit_top_formal_verification_random_tb;
	reg [0:0] a;
	reg [0:0] b;
	wire [0:0] c;

	reg [0:3] clk;
	wire [0:0] global_reset;
	wire [0:0] scan_reset;
	wire [0:639] gfpga_pad_QL_PREIO_A2F;
	wire [0:639] gfpga_pad_QL_PREIO_F2A;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_DEF0;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_DEF1;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:9] ccff_head;
	wire [0:9] ccff_tail;
	wire [0:0] test_en;
	wire [0:0] scan_mode;
	wire [0:0] scan_clk;
	bit [0:0] config_enable;
	wire [0:0] prog_clock;
	bit [0:0] CFG_DONE;
	
		fpga_top U0_formal_verification (
			.clk(clk[0:3]),
			.global_reset(global_reset[0]),
			.scan_reset(scan_reset[0]),
			.test_en(test_en[0]),
			.scan_mode(scan_mode[0]),
			.scan_clk(scan_clk[0]),
			.config_enable(config_enable[0]),
			.prog_clock(prog_clock[0]),
			.CFG_DONE(CFG_DONE[0]),
			.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[0:639]),
			.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[0:639]),
			.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[0:639]),
			.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[0:639]),
			.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[0:639]),
			.ccff_head(ccff_head[0:9]),
			.ccff_tail(ccff_tail[0:9]));
	
		assign prog_clock[0] = 1'b0;
		assign test_en[0] = 1'b0;
		assign scan_mode[0] = 1'b0;
		assign scan_clk[0] = 1'b0;
		assign global_reset[0] = 1'b1;
		assign scan_reset[0] = 1'b1;

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
		  `include "../or_1bit/PinMapping.v"

	initial begin 
	`include "../../bitstream_text.txt"
	config_enable[0] = 1'b1;
	CFG_DONE[0] = 1'b1;
	a <= 1'b0;
	b <= 1'b0;

      #5
	  a = 1'b0;
	  b = 1'b0;
	  #5
	  if (c === 0)
		$display("Status: Test Passed");
	  else  
		$display("Status: Test Failed");
		
	  a = 1'b0; 
	  b = 1'b1;
	  #5
	  if (c === 1)
		$display("Status: Test Passed");
	  else  
		$display("Status: Test Failed");

	  a = 1'b1;
	  b = 1'b0;
	  #5
	  if (c === 1)
		$display("Status: Test Passed");
	  else  
		$display("Status: Test Failed");

	  a = 1'b1;
	  b = 1'b1;
	  #5
	  if (c === 1)
		$display("Status: Test Passed");
	  else  
		$display("Status: Test Failed");

	  a = 1'b0;
	  b = 1'b1;
	  #5
	  if (c === 1)
		$display("Status: Test Passed");
	  else  
		$display("Status: Test Failed");

	  a = 1'b1;
	  b = 1'b0;
	  #5
	  if (c === 1)
		$display("Status: Test Passed");
	  else  
		$display("Status: Test Failed");
	  #5
	  $finish;
	end

endmodule

`default_nettype none

