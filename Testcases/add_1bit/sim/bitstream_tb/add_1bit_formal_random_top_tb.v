//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: add_1bit
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Mar 20 11:54:32 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module add_1bit_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:3] clk;

// ----- Shared inputs -------
	reg a;
	reg b;

// ----- FPGA fabric outputs -------
	wire c;

// ----- FPGA fabric instanciation -------
	// add_1bit_top_formal_verification FPGA_DUT(
	// 	a,
	// 	b,
	// 	c_gfpga
	// );
// ----- End FPGA Fabric Instanication -------

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
		// assign scan_reset[0] = 1'b1;

// ----- Clock 'clk' Initialization -------
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
		`include "../add_1bit/PinMapping.v"

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
		initial begin
			`include "../../bitstream_text.txt"
			// config_enable[0]=1'b1;
			// CFG_DONE=1'b1;
			#10;
			
			// a <= 1'b0;
			// b <= 1'b0;
			// #10
			a = 1'b0;
			b = 1'b0;
			#15
			if (c === 0)
			  $display("Status: Test Passed");
			else  
			  $display("Status: Test Failed");
			  
			a = 1'b0; 
			b = 1'b1;
			#15
			if (c === 1)
			  $display("Status: Test Passed");
			else  
			  $display("Status: Test Failed");
		  
			a = 1'b1;
			b = 1'b0;
			#15
			if (c === 1)
			  $display("Status: Test Passed");
			else  
			  $display("Status: Test Failed");
	  
			a = 1'b1;
			b = 1'b1;
			#15
			if (c === 0)
			  $display("Status: Test Passed");
			else  
			  $display("Status: Test Failed");
		  
			  a = 1'b0;
			  b = 1'b1;
			  #15
			  if (c === 1)
			  $display("Status: Test Passed");
			  else  
			  $display("Status: Test Failed");
	  
			  a = 1'b1;
			  b = 1'b0;
			  #15
			  if (c === 1)
			  $display("Status: Test Passed");
			  else  
			  $display("Status: Test Failed");
	  
			  a = 1'b1;
			  b = 1'b1;
			  #15
			  if (c === 0)
				$display("Status: Test Passed");
			  else  
				$display("Status: Test Failed");
			  #10
			  $finish;
	end

// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("add_1bit_formal.vcd");
		$dumpvars(1, add_1bit_top_formal_verification_random_tb);
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
// ----- END Verilog module for add_1bit_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype none

