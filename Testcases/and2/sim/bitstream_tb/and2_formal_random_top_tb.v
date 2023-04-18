`timescale 1ns / 1ps

`default_nettype none

module and2_top_formal_verification_random_tb;
	reg clock0;
	wire [0:7] clk;

	reg a;
	reg b;
	wire c;
	
wire [0:2303] gfpga_pad_QL_PREIO_A2F;
wire [0:2303] gfpga_pad_QL_PREIO_F2A;
wire [0:2303] gfpga_pad_QL_PREIO_F2A_DEF0;
wire [0:2303] gfpga_pad_QL_PREIO_F2A_DEF1;
wire [0:2303] gfpga_pad_QL_PREIO_F2A_CLK;
wire [0:9] ccff_head;
wire [0:9] ccff_tail;
bit global_resetn;
wire scan_en;
wire scan_mode;
wire prog_clock;

	fpga_top U0_formal_verification (
		clk[0:7],
		global_resetn,
		scan_en,
		scan_mode,
		prog_clock,
		gfpga_pad_QL_PREIO_A2F[0:2303],
		gfpga_pad_QL_PREIO_F2A[0:2303],
		gfpga_pad_QL_PREIO_F2A_DEF0[0:2303],
		gfpga_pad_QL_PREIO_F2A_DEF1[0:2303],
		gfpga_pad_QL_PREIO_F2A_CLK[0:2303],
		ccff_head[0:9],
		ccff_tail[0:9]);

	assign prog_clock = 1'b0;
	// assign global_resetn = 1'b0;
	assign scan_en = 1'b0;
	assign scan_mode = 1'b0;
	assign clk[0] = clock0;
	assign clk[1] = 1'b0;
	assign clk[2] = 1'b0;
	assign clk[3] = 1'b0;
	assign clk[4] = 1'b0;
	assign clk[5] = 1'b0;
	assign clk[6] = 1'b0;
	assign clk[7] = 1'b0;
	
	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end
	`include "../and2/PinMapping.v"

initial begin
	`include "../../bitstream_text.txt"
	// config_enable[0] = 1'b1;
	// CFG_DONE[0] = 1'b1;
	// global_resetn=1'b0;

	a = 1'b0;
	b = 1'b0;
	#5;
	global_resetn<=1'b1;
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
		$dumpfile("and2.vcd");
		$dumpvars(1, and2_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

