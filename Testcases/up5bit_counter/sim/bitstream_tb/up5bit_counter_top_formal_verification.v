//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog netlist for pre-configured FPGA fabric by design: up5bit_counter
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed May  3 16:13:06 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module up5bit_counter_top_formal_verification (
input [0:0] clk,
input [0:0] reset,
output [0:0] out[4],
output [0:0] out[3],
output [0:0] out[2],
output [0:0] out[1],
output [0:0] out[0]);

// ----- Local wires for FPGA fabric -----
wire [0:7] clk_fm;
wire [0:2303] gfpga_pad_QL_PREIO_A2F_fm;
wire [0:2303] gfpga_pad_QL_PREIO_F2A_fm;
wire [0:2303] gfpga_pad_QL_PREIO_F2A_CLK_fm;
wire [0:9] ccff_head_fm;
wire [0:9] ccff_tail_fm;
wire [0:0] global_resetn_fm;
wire [0:0] scan_en_fm;
wire [0:0] scan_mode_fm;
wire [0:0] prog_clock_fm;
wire [0:2] rwm_fm;

// ----- FPGA top-level module to be capsulated -----
	fpga_top U0_formal_verification (
		.clk(clk_fm[0:7]),
		.global_resetn(global_resetn_fm[0]),
		.scan_en(scan_en_fm[0]),
		.scan_mode(scan_mode_fm[0]),
		.prog_clock(prog_clock_fm[0]),
		.rwm(rwm_fm[0:2]),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F_fm[0:2303]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A_fm[0:2303]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK_fm[0:2303]),
		.ccff_head(ccff_head_fm[0:9]),
		.ccff_tail(ccff_tail_fm[0:9]));

// ----- Begin Connect Global ports of FPGA top module -----
	assign prog_clock_fm[0] = 1'b0;
	assign global_resetn_fm[0] = 1'b0;
	assign scan_en_fm[0] = 1'b0;
	assign scan_mode_fm[0] = 1'b0;
	assign rwm_fm[0] = 1'b0;
	assign rwm_fm[1] = 1'b0;
	assign rwm_fm[2] = 1'b0;
	assign clk_fm[0] = clock0[0];
	assign clk_fm[1] = 1'b0;
	assign clk_fm[2] = 1'b0;
	assign clk_fm[3] = 1'b0;
