//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: and2
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Aug 21 15:04:24 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module and2_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg clock0;

// ----- Shared inputs -------
	reg a;
	reg b;

// ----- FPGA fabric outputs -------
	wire c;

	wire [0:15] clk;
	wire [0:2303] gfpga_pad_QL_PREIO_A2F;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:513] bl_config_region_0;
	wire [0:406] wl_config_region_0;
	bit global_resetn;
	wire scan_en;
	wire scan_mode;

// ----- FPGA fabric instanciation -------
	// and2_top_formal_verification FPGA_DUT(
	// 	.a(a),
	// 	.b(b),
	// 	.c(c)
	// );
	fpga_top U0_formal_verification (
		.clk(clk[0:15]),
		.global_resetn(global_resetn),
		.scan_en(scan_en),
		.scan_mode(scan_mode),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[0:2303]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[0:2303]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[0:2303]),
		.bl_config_region_0(bl_config_region_0[0:513]),
		.wl_config_region_0(wl_config_region_0[0:406]));

// ----- Begin Connect Global ports of FPGA top module -----
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
	assign clk[8] = 1'b0;
	assign clk[9] = 1'b0;
	assign clk[10] = 1'b0;
	assign clk[11] = 1'b0;
	assign clk[12] = 1'b0;
	assign clk[13] = 1'b0;
	assign clk[14] = 1'b0;
	assign clk[15] = 1'b0;
// ----- End FPGA Fabric Instanication -------

// ----- Clock 'clk' Initialization -------
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
	// config_enable = 1'b1;
	// CFG_DONE = 1'b1;
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
// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("and2_formal.vcd");
		$dumpvars(1, and2_top_formal_verification_random_tb);
	end
// ----- END output waveform to VCD file -------

// initial begin
// 	$timeformat(-9, 2, "ns", 20);
// 	$display("Simulation start");
// // ----- Can be changed by the user for his/her need -------
// 	#20
// 	$display("Simulation Succeed");
// 	$finish;
// end

endmodule
// ----- END Verilog module for and2_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype none

