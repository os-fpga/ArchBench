//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: mux_8_1
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Mar 20 15:53:57 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module mux_8_1_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [3:0] clk;

// ----- Shared inputs -------
	reg D0;
	reg D1;
	reg D2;
	reg D3;
	reg D4;
	reg D5;
	reg D6;
	reg D7;
	reg S0;
	reg S1;
	reg S2;

// ----- FPGA fabric outputs -------
	wire out;

// ----- FPGA fabric instanciation -------
	// mux_8_1_top_formal_verification FPGA_DUT(
	// 	D0,
	// 	D1,
	// 	D2,
	// 	D3,
	// 	D4,
	// 	D5,
	// 	D6,
	// 	D7,
	// 	S0,
	// 	S1,
	// 	S2,
	// 	out_gfpga
	// );
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
	// wire [0:0] config_enable;
	wire [0:0] prog_clock;
	// wire [0:0] CFG_DONE;
	wire global_resetn;
	
	// ----- FPGA top-level module to be capsulated -----
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
	
	// ----- Begin Connect Global ports of FPGA top module -----
		// assign config_enable = 1'b0;
		assign prog_clock = 1'b0;
		// assign CFG_DONE = 1'b1;
		assign test_en = 1'b0;
		assign scan_mode = 1'b0;
		assign scan_clk = 1'b0;
		assign global_resetn = 1'b1;
// ----- End FPGA Fabric Instanication -------

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
		`include "../mux_8_1/PinMapping.v"
		initial begin
			`include "../../bitstream_text.txt"
			// config_enable[0]=1'b1;
			// CFG_DONE[0]=1'b1;
			$display("Simulation start");
	
			D0 <= 1'b1;
			D1 <= 1'b0;
			D2 <= 1'b1;
			D3 <= 1'b0;
			D4 <= 1'b1;
			D5 <= 1'b0;
			D6 <= 1'b1;
			D7 <= 1'b0;
	
			S0 <= 1'b0;
			S1 <= 1'b0;
			S2 <= 1'b0;
			#5;
			if(out==0)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b1;
			S1 <= 1'b0;
			S2 <= 1'b0;
			#5;
			if(out==1)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b0;
			S1 <= 1'b1;
			S2 <= 1'b0;
			#5;
			if(out==0)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b1;
			S1 <= 1'b1;
			S2 <= 1'b0;
			#5;
			if(out==1)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b0;
			S1 <= 1'b0;
			S2 <= 1'b1;
			#5;
			if(out==0)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b1;
			S1 <= 1'b0;
			S2 <= 1'b1;
			#5;
			if(out==1)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b0;
			S1 <= 1'b1;
			S2 <= 1'b1;
			#5;
			if(out==0)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b1;
			S1 <= 1'b1;
			S2 <= 1'b1;
			#5;
			if(out==1)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#10;
			$finish;
	end

// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("mux_8_1.vcd");
		$dumpvars(1, mux_8_1_top_formal_verification_random_tb);
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
// ----- END Verilog module for mux_8_1_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype none

