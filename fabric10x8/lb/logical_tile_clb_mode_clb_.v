//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: clb
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: clb -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_clb_ -----
module logical_tile_clb_mode_clb_(config_enable,
                                  prog_clock,
                                  scan_enable,
                                  global_reset,
                                  scan_mode,
                                  clb_I30,
                                  clb_I20,
                                  clb_I10,
                                  clb_I00,
                                  clb_IS0,
                                  clb_cin,
                                  clb_cascdn_i,
                                  clb_cascup_i,
                                  clb_sc_in,
                                  clb_clk,
                                  ccff_head,
                                  clb_O0,
                                  clb_cout,
                                  clb_cascdn_o,
                                  clb_cascup_o,
                                  clb_sc_out,
                                  ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] global_reset;
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- INPUT PORTS -----
input [0:11] clb_I30;
//----- INPUT PORTS -----
input [0:11] clb_I20;
//----- INPUT PORTS -----
input [0:11] clb_I10;
//----- INPUT PORTS -----
input [0:11] clb_I00;
//----- INPUT PORTS -----
input [0:5] clb_IS0;
//----- INPUT PORTS -----
input [0:0] clb_cin;
//----- INPUT PORTS -----
input [0:0] clb_cascdn_i;
//----- INPUT PORTS -----
input [0:0] clb_cascup_i;
//----- INPUT PORTS -----
input [0:1] clb_sc_in;
//----- INPUT PORTS -----
input [0:15] clb_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:23] clb_O0;
//----- OUTPUT PORTS -----
output [0:0] clb_cout;
//----- OUTPUT PORTS -----
output [0:0] clb_cascdn_o;
//----- OUTPUT PORTS -----
output [0:0] clb_cascup_o;
//----- OUTPUT PORTS -----
output [0:1] clb_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:23] logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_sc_out;
wire [0:3] mux_tree_clock_size16_0_sram;
wire [0:3] mux_tree_clock_size16_0_sram_inv;
wire [0:4] mux_tree_size24_0_sram;
wire [0:4] mux_tree_size24_0_sram_inv;
wire [0:4] mux_tree_size24_10_sram;
wire [0:4] mux_tree_size24_10_sram_inv;
wire [0:4] mux_tree_size24_11_sram;
wire [0:4] mux_tree_size24_11_sram_inv;
wire [0:4] mux_tree_size24_12_sram;
wire [0:4] mux_tree_size24_12_sram_inv;
wire [0:4] mux_tree_size24_13_sram;
wire [0:4] mux_tree_size24_13_sram_inv;
wire [0:4] mux_tree_size24_14_sram;
wire [0:4] mux_tree_size24_14_sram_inv;
wire [0:4] mux_tree_size24_15_sram;
wire [0:4] mux_tree_size24_15_sram_inv;
wire [0:4] mux_tree_size24_16_sram;
wire [0:4] mux_tree_size24_16_sram_inv;
wire [0:4] mux_tree_size24_17_sram;
wire [0:4] mux_tree_size24_17_sram_inv;
wire [0:4] mux_tree_size24_18_sram;
wire [0:4] mux_tree_size24_18_sram_inv;
wire [0:4] mux_tree_size24_19_sram;
wire [0:4] mux_tree_size24_19_sram_inv;
wire [0:4] mux_tree_size24_1_sram;
wire [0:4] mux_tree_size24_1_sram_inv;
wire [0:4] mux_tree_size24_20_sram;
wire [0:4] mux_tree_size24_20_sram_inv;
wire [0:4] mux_tree_size24_21_sram;
wire [0:4] mux_tree_size24_21_sram_inv;
wire [0:4] mux_tree_size24_22_sram;
wire [0:4] mux_tree_size24_22_sram_inv;
wire [0:4] mux_tree_size24_23_sram;
wire [0:4] mux_tree_size24_23_sram_inv;
wire [0:4] mux_tree_size24_24_sram;
wire [0:4] mux_tree_size24_24_sram_inv;
wire [0:4] mux_tree_size24_25_sram;
wire [0:4] mux_tree_size24_25_sram_inv;
wire [0:4] mux_tree_size24_26_sram;
wire [0:4] mux_tree_size24_26_sram_inv;
wire [0:4] mux_tree_size24_27_sram;
wire [0:4] mux_tree_size24_27_sram_inv;
wire [0:4] mux_tree_size24_28_sram;
wire [0:4] mux_tree_size24_28_sram_inv;
wire [0:4] mux_tree_size24_29_sram;
wire [0:4] mux_tree_size24_29_sram_inv;
wire [0:4] mux_tree_size24_2_sram;
wire [0:4] mux_tree_size24_2_sram_inv;
wire [0:4] mux_tree_size24_30_sram;
wire [0:4] mux_tree_size24_30_sram_inv;
wire [0:4] mux_tree_size24_31_sram;
wire [0:4] mux_tree_size24_31_sram_inv;
wire [0:4] mux_tree_size24_3_sram;
wire [0:4] mux_tree_size24_3_sram_inv;
wire [0:4] mux_tree_size24_4_sram;
wire [0:4] mux_tree_size24_4_sram_inv;
wire [0:4] mux_tree_size24_5_sram;
wire [0:4] mux_tree_size24_5_sram_inv;
wire [0:4] mux_tree_size24_6_sram;
wire [0:4] mux_tree_size24_6_sram_inv;
wire [0:4] mux_tree_size24_7_sram;
wire [0:4] mux_tree_size24_7_sram_inv;
wire [0:4] mux_tree_size24_8_sram;
wire [0:4] mux_tree_size24_8_sram_inv;
wire [0:4] mux_tree_size24_9_sram;
wire [0:4] mux_tree_size24_9_sram_inv;
wire [0:4] mux_tree_size32_0_sram;
wire [0:4] mux_tree_size32_0_sram_inv;
wire [0:4] mux_tree_size32_10_sram;
wire [0:4] mux_tree_size32_10_sram_inv;
wire [0:4] mux_tree_size32_11_sram;
wire [0:4] mux_tree_size32_11_sram_inv;
wire [0:4] mux_tree_size32_12_sram;
wire [0:4] mux_tree_size32_12_sram_inv;
wire [0:4] mux_tree_size32_13_sram;
wire [0:4] mux_tree_size32_13_sram_inv;
wire [0:4] mux_tree_size32_14_sram;
wire [0:4] mux_tree_size32_14_sram_inv;
wire [0:4] mux_tree_size32_15_sram;
wire [0:4] mux_tree_size32_15_sram_inv;
wire [0:4] mux_tree_size32_1_sram;
wire [0:4] mux_tree_size32_1_sram_inv;
wire [0:4] mux_tree_size32_2_sram;
wire [0:4] mux_tree_size32_2_sram_inv;
wire [0:4] mux_tree_size32_3_sram;
wire [0:4] mux_tree_size32_3_sram_inv;
wire [0:4] mux_tree_size32_4_sram;
wire [0:4] mux_tree_size32_4_sram_inv;
wire [0:4] mux_tree_size32_5_sram;
wire [0:4] mux_tree_size32_5_sram_inv;
wire [0:4] mux_tree_size32_6_sram;
wire [0:4] mux_tree_size32_6_sram_inv;
wire [0:4] mux_tree_size32_7_sram;
wire [0:4] mux_tree_size32_7_sram_inv;
wire [0:4] mux_tree_size32_8_sram;
wire [0:4] mux_tree_size32_8_sram_inv;
wire [0:4] mux_tree_size32_9_sram;
wire [0:4] mux_tree_size32_9_sram_inv;
wire [0:2] mux_tree_size6_0_sram;
wire [0:2] mux_tree_size6_0_sram_inv;
wire [0:2] mux_tree_size6_1_sram;
wire [0:2] mux_tree_size6_1_sram_inv;
wire [0:2] mux_tree_size6_2_sram;
wire [0:2] mux_tree_size6_2_sram_inv;
wire [0:2] mux_tree_size6_3_sram;
wire [0:2] mux_tree_size6_3_sram_inv;
wire [0:2] mux_tree_size6_4_sram;
wire [0:2] mux_tree_size6_4_sram_inv;
wire [0:2] mux_tree_size6_5_sram;
wire [0:2] mux_tree_size6_5_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper logical_tile_clb_mode_default__fle_wrapper_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.fle_wrapper_II({mux_tree_size32_0_out, mux_tree_size32_1_out, mux_tree_size24_0_out, mux_tree_size24_1_out, mux_tree_size24_2_out, mux_tree_size24_3_out, mux_tree_size32_2_out, mux_tree_size32_3_out, mux_tree_size24_4_out, mux_tree_size24_5_out, mux_tree_size24_6_out, mux_tree_size24_7_out, mux_tree_size32_4_out, mux_tree_size32_5_out, mux_tree_size24_8_out, mux_tree_size24_9_out, mux_tree_size24_10_out, mux_tree_size24_11_out, mux_tree_size32_6_out, mux_tree_size32_7_out, mux_tree_size24_12_out, mux_tree_size24_13_out, mux_tree_size24_14_out, mux_tree_size24_15_out, mux_tree_size32_8_out, mux_tree_size32_9_out, mux_tree_size24_16_out, mux_tree_size24_17_out, mux_tree_size24_18_out, mux_tree_size24_19_out, mux_tree_size32_10_out, mux_tree_size32_11_out, mux_tree_size24_20_out, mux_tree_size24_21_out, mux_tree_size24_22_out, mux_tree_size24_23_out, mux_tree_size32_12_out, mux_tree_size32_13_out, mux_tree_size24_24_out, mux_tree_size24_25_out, mux_tree_size24_26_out, mux_tree_size24_27_out, mux_tree_size32_14_out, mux_tree_size32_15_out, mux_tree_size24_28_out, mux_tree_size24_29_out, mux_tree_size24_30_out, mux_tree_size24_31_out}),
		.fle_wrapper_SS({mux_tree_size6_0_out, mux_tree_size6_1_out, mux_tree_size6_2_out, mux_tree_size6_3_out, mux_tree_size6_4_out, mux_tree_size6_5_out}),
		.fle_wrapper_cin(direct_interc_27_out),
		.fle_wrapper_clk(mux_tree_clock_size16_0_out),
		.fle_wrapper_cascdn_i(logical_tile_clb_mode_default__fle_wrapper_0_undriven_fle_wrapper_cascdn_i),
		.fle_wrapper_cascup_i(logical_tile_clb_mode_default__fle_wrapper_0_undriven_fle_wrapper_cascup_i),
		.fle_wrapper_sc_in({direct_interc_28_out, direct_interc_29_out}),
		.ccff_head(ccff_head),
		.fle_wrapper_out(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[0:23]),
		.fle_wrapper_cout(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_cout),
		.fle_wrapper_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_0_undriven_fle_wrapper_cascdn_o),
		.fle_wrapper_cascup_o(logical_tile_clb_mode_default__fle_wrapper_0_undriven_fle_wrapper_cascup_o),
		.fle_wrapper_sc_out(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_sc_out[0:1]),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_0_ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[0]),
		.out(clb_O0[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[1]),
		.out(clb_O0[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2]),
		.out(clb_O0[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[3]),
		.out(clb_O0[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[4]),
		.out(clb_O0[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5]),
		.out(clb_O0[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[6]),
		.out(clb_O0[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[7]),
		.out(clb_O0[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8]),
		.out(clb_O0[8]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[9]),
		.out(clb_O0[9]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[10]),
		.out(clb_O0[10]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11]),
		.out(clb_O0[11]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[12]),
		.out(clb_O0[12]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[13]),
		.out(clb_O0[13]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14]),
		.out(clb_O0[14]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[15]),
		.out(clb_O0[15]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[16]),
		.out(clb_O0[16]));

	direct_interc direct_interc_17_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17]),
		.out(clb_O0[17]));

	direct_interc direct_interc_18_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[18]),
		.out(clb_O0[18]));

	direct_interc direct_interc_19_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[19]),
		.out(clb_O0[19]));

	direct_interc direct_interc_20_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20]),
		.out(clb_O0[20]));

	direct_interc direct_interc_21_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[21]),
		.out(clb_O0[21]));

	direct_interc direct_interc_22_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[22]),
		.out(clb_O0[22]));

	direct_interc direct_interc_23_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]),
		.out(clb_O0[23]));

	direct_interc direct_interc_24_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_cout),
		.out(clb_cout));

	direct_interc direct_interc_25_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_sc_out[0]),
		.out(clb_sc_out[0]));

	direct_interc direct_interc_26_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_sc_out[1]),
		.out(clb_sc_out[1]));

	direct_interc direct_interc_27_ (
		.in(clb_cin),
		.out(direct_interc_27_out));

	direct_interc direct_interc_28_ (
		.in(clb_sc_in[0]),
		.out(direct_interc_28_out));

	direct_interc direct_interc_29_ (
		.in(clb_sc_in[1]),
		.out(direct_interc_29_out));

	mux_tree_size32 mux_fle_wrapper_0_II_0 (
		.in({clb_I00[0:11], clb_I30[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_0_sram[0:4]),
		.sram_inv(mux_tree_size32_0_sram_inv[0:4]),
		.out(mux_tree_size32_0_out));

	mux_tree_size32 mux_fle_wrapper_0_II_1 (
		.in({clb_I10[0:11], clb_I20[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_1_sram[0:4]),
		.sram_inv(mux_tree_size32_1_sram_inv[0:4]),
		.out(mux_tree_size32_1_out));

	mux_tree_size32 mux_fle_wrapper_0_II_6 (
		.in({clb_I00[0:11], clb_I30[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_2_sram[0:4]),
		.sram_inv(mux_tree_size32_2_sram_inv[0:4]),
		.out(mux_tree_size32_2_out));

	mux_tree_size32 mux_fle_wrapper_0_II_7 (
		.in({clb_I10[0:11], clb_I20[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_3_sram[0:4]),
		.sram_inv(mux_tree_size32_3_sram_inv[0:4]),
		.out(mux_tree_size32_3_out));

	mux_tree_size32 mux_fle_wrapper_0_II_12 (
		.in({clb_I00[0:11], clb_I30[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_4_sram[0:4]),
		.sram_inv(mux_tree_size32_4_sram_inv[0:4]),
		.out(mux_tree_size32_4_out));

	mux_tree_size32 mux_fle_wrapper_0_II_13 (
		.in({clb_I10[0:11], clb_I20[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_5_sram[0:4]),
		.sram_inv(mux_tree_size32_5_sram_inv[0:4]),
		.out(mux_tree_size32_5_out));

	mux_tree_size32 mux_fle_wrapper_0_II_18 (
		.in({clb_I00[0:11], clb_I30[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_6_sram[0:4]),
		.sram_inv(mux_tree_size32_6_sram_inv[0:4]),
		.out(mux_tree_size32_6_out));

	mux_tree_size32 mux_fle_wrapper_0_II_19 (
		.in({clb_I10[0:11], clb_I20[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_7_sram[0:4]),
		.sram_inv(mux_tree_size32_7_sram_inv[0:4]),
		.out(mux_tree_size32_7_out));

	mux_tree_size32 mux_fle_wrapper_0_II_24 (
		.in({clb_I00[0:11], clb_I30[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_8_sram[0:4]),
		.sram_inv(mux_tree_size32_8_sram_inv[0:4]),
		.out(mux_tree_size32_8_out));

	mux_tree_size32 mux_fle_wrapper_0_II_25 (
		.in({clb_I10[0:11], clb_I20[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_9_sram[0:4]),
		.sram_inv(mux_tree_size32_9_sram_inv[0:4]),
		.out(mux_tree_size32_9_out));

	mux_tree_size32 mux_fle_wrapper_0_II_30 (
		.in({clb_I00[0:11], clb_I30[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_10_sram[0:4]),
		.sram_inv(mux_tree_size32_10_sram_inv[0:4]),
		.out(mux_tree_size32_10_out));

	mux_tree_size32 mux_fle_wrapper_0_II_31 (
		.in({clb_I10[0:11], clb_I20[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_11_sram[0:4]),
		.sram_inv(mux_tree_size32_11_sram_inv[0:4]),
		.out(mux_tree_size32_11_out));

	mux_tree_size32 mux_fle_wrapper_0_II_36 (
		.in({clb_I00[0:11], clb_I30[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_12_sram[0:4]),
		.sram_inv(mux_tree_size32_12_sram_inv[0:4]),
		.out(mux_tree_size32_12_out));

	mux_tree_size32 mux_fle_wrapper_0_II_37 (
		.in({clb_I10[0:11], clb_I20[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_13_sram[0:4]),
		.sram_inv(mux_tree_size32_13_sram_inv[0:4]),
		.out(mux_tree_size32_13_out));

	mux_tree_size32 mux_fle_wrapper_0_II_42 (
		.in({clb_I00[0:11], clb_I30[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_14_sram[0:4]),
		.sram_inv(mux_tree_size32_14_sram_inv[0:4]),
		.out(mux_tree_size32_14_out));

	mux_tree_size32 mux_fle_wrapper_0_II_43 (
		.in({clb_I10[0:11], clb_I20[0:11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[2], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[5], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[8], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[11], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[14], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[17], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[20], logical_tile_clb_mode_default__fle_wrapper_0_fle_wrapper_out[23]}),
		.sram(mux_tree_size32_15_sram[0:4]),
		.sram_inv(mux_tree_size32_15_sram_inv[0:4]),
		.out(mux_tree_size32_15_out));

	mux_tree_size32_mem mem_fle_wrapper_0_II_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_0_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_0_ccff_tail),
		.mem_out(mux_tree_size32_0_sram[0:4]),
		.mem_outb(mux_tree_size32_0_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_1_ccff_tail),
		.mem_out(mux_tree_size32_1_sram[0:4]),
		.mem_outb(mux_tree_size32_1_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_2_ccff_tail),
		.mem_out(mux_tree_size32_2_sram[0:4]),
		.mem_outb(mux_tree_size32_2_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_3_ccff_tail),
		.mem_out(mux_tree_size32_3_sram[0:4]),
		.mem_outb(mux_tree_size32_3_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_4_ccff_tail),
		.mem_out(mux_tree_size32_4_sram[0:4]),
		.mem_outb(mux_tree_size32_4_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_5_ccff_tail),
		.mem_out(mux_tree_size32_5_sram[0:4]),
		.mem_outb(mux_tree_size32_5_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_18 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_6_ccff_tail),
		.mem_out(mux_tree_size32_6_sram[0:4]),
		.mem_outb(mux_tree_size32_6_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_19 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_7_ccff_tail),
		.mem_out(mux_tree_size32_7_sram[0:4]),
		.mem_outb(mux_tree_size32_7_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_24 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_8_ccff_tail),
		.mem_out(mux_tree_size32_8_sram[0:4]),
		.mem_outb(mux_tree_size32_8_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_25 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_9_ccff_tail),
		.mem_out(mux_tree_size32_9_sram[0:4]),
		.mem_outb(mux_tree_size32_9_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_30 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_19_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_10_ccff_tail),
		.mem_out(mux_tree_size32_10_sram[0:4]),
		.mem_outb(mux_tree_size32_10_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_31 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_11_ccff_tail),
		.mem_out(mux_tree_size32_11_sram[0:4]),
		.mem_outb(mux_tree_size32_11_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_36 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_23_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_12_ccff_tail),
		.mem_out(mux_tree_size32_12_sram[0:4]),
		.mem_outb(mux_tree_size32_12_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_37 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_13_ccff_tail),
		.mem_out(mux_tree_size32_13_sram[0:4]),
		.mem_outb(mux_tree_size32_13_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_42 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_27_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_14_ccff_tail),
		.mem_out(mux_tree_size32_14_sram[0:4]),
		.mem_outb(mux_tree_size32_14_sram_inv[0:4]));

	mux_tree_size32_mem mem_fle_wrapper_0_II_43 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size32_mem_15_ccff_tail),
		.mem_out(mux_tree_size32_15_sram[0:4]),
		.mem_outb(mux_tree_size32_15_sram_inv[0:4]));

	mux_tree_size24 mux_fle_wrapper_0_II_2 (
		.in({clb_I00[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_0_sram[0:4]),
		.sram_inv(mux_tree_size24_0_sram_inv[0:4]),
		.out(mux_tree_size24_0_out));

	mux_tree_size24 mux_fle_wrapper_0_II_3 (
		.in({clb_I10[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_1_sram[0:4]),
		.sram_inv(mux_tree_size24_1_sram_inv[0:4]),
		.out(mux_tree_size24_1_out));

	mux_tree_size24 mux_fle_wrapper_0_II_4 (
		.in({clb_I00[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_2_sram[0:4]),
		.sram_inv(mux_tree_size24_2_sram_inv[0:4]),
		.out(mux_tree_size24_2_out));

	mux_tree_size24 mux_fle_wrapper_0_II_5 (
		.in({clb_I10[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_3_sram[0:4]),
		.sram_inv(mux_tree_size24_3_sram_inv[0:4]),
		.out(mux_tree_size24_3_out));

	mux_tree_size24 mux_fle_wrapper_0_II_8 (
		.in({clb_I00[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_4_sram[0:4]),
		.sram_inv(mux_tree_size24_4_sram_inv[0:4]),
		.out(mux_tree_size24_4_out));

	mux_tree_size24 mux_fle_wrapper_0_II_9 (
		.in({clb_I10[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_5_sram[0:4]),
		.sram_inv(mux_tree_size24_5_sram_inv[0:4]),
		.out(mux_tree_size24_5_out));

	mux_tree_size24 mux_fle_wrapper_0_II_10 (
		.in({clb_I00[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_6_sram[0:4]),
		.sram_inv(mux_tree_size24_6_sram_inv[0:4]),
		.out(mux_tree_size24_6_out));

	mux_tree_size24 mux_fle_wrapper_0_II_11 (
		.in({clb_I10[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_7_sram[0:4]),
		.sram_inv(mux_tree_size24_7_sram_inv[0:4]),
		.out(mux_tree_size24_7_out));

	mux_tree_size24 mux_fle_wrapper_0_II_14 (
		.in({clb_I00[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_8_sram[0:4]),
		.sram_inv(mux_tree_size24_8_sram_inv[0:4]),
		.out(mux_tree_size24_8_out));

	mux_tree_size24 mux_fle_wrapper_0_II_15 (
		.in({clb_I10[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_9_sram[0:4]),
		.sram_inv(mux_tree_size24_9_sram_inv[0:4]),
		.out(mux_tree_size24_9_out));

	mux_tree_size24 mux_fle_wrapper_0_II_16 (
		.in({clb_I00[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_10_sram[0:4]),
		.sram_inv(mux_tree_size24_10_sram_inv[0:4]),
		.out(mux_tree_size24_10_out));

	mux_tree_size24 mux_fle_wrapper_0_II_17 (
		.in({clb_I10[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_11_sram[0:4]),
		.sram_inv(mux_tree_size24_11_sram_inv[0:4]),
		.out(mux_tree_size24_11_out));

	mux_tree_size24 mux_fle_wrapper_0_II_20 (
		.in({clb_I00[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_12_sram[0:4]),
		.sram_inv(mux_tree_size24_12_sram_inv[0:4]),
		.out(mux_tree_size24_12_out));

	mux_tree_size24 mux_fle_wrapper_0_II_21 (
		.in({clb_I10[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_13_sram[0:4]),
		.sram_inv(mux_tree_size24_13_sram_inv[0:4]),
		.out(mux_tree_size24_13_out));

	mux_tree_size24 mux_fle_wrapper_0_II_22 (
		.in({clb_I00[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_14_sram[0:4]),
		.sram_inv(mux_tree_size24_14_sram_inv[0:4]),
		.out(mux_tree_size24_14_out));

	mux_tree_size24 mux_fle_wrapper_0_II_23 (
		.in({clb_I10[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_15_sram[0:4]),
		.sram_inv(mux_tree_size24_15_sram_inv[0:4]),
		.out(mux_tree_size24_15_out));

	mux_tree_size24 mux_fle_wrapper_0_II_26 (
		.in({clb_I00[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_16_sram[0:4]),
		.sram_inv(mux_tree_size24_16_sram_inv[0:4]),
		.out(mux_tree_size24_16_out));

	mux_tree_size24 mux_fle_wrapper_0_II_27 (
		.in({clb_I10[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_17_sram[0:4]),
		.sram_inv(mux_tree_size24_17_sram_inv[0:4]),
		.out(mux_tree_size24_17_out));

	mux_tree_size24 mux_fle_wrapper_0_II_28 (
		.in({clb_I00[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_18_sram[0:4]),
		.sram_inv(mux_tree_size24_18_sram_inv[0:4]),
		.out(mux_tree_size24_18_out));

	mux_tree_size24 mux_fle_wrapper_0_II_29 (
		.in({clb_I10[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_19_sram[0:4]),
		.sram_inv(mux_tree_size24_19_sram_inv[0:4]),
		.out(mux_tree_size24_19_out));

	mux_tree_size24 mux_fle_wrapper_0_II_32 (
		.in({clb_I00[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_20_sram[0:4]),
		.sram_inv(mux_tree_size24_20_sram_inv[0:4]),
		.out(mux_tree_size24_20_out));

	mux_tree_size24 mux_fle_wrapper_0_II_33 (
		.in({clb_I10[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_21_sram[0:4]),
		.sram_inv(mux_tree_size24_21_sram_inv[0:4]),
		.out(mux_tree_size24_21_out));

	mux_tree_size24 mux_fle_wrapper_0_II_34 (
		.in({clb_I00[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_22_sram[0:4]),
		.sram_inv(mux_tree_size24_22_sram_inv[0:4]),
		.out(mux_tree_size24_22_out));

	mux_tree_size24 mux_fle_wrapper_0_II_35 (
		.in({clb_I10[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_23_sram[0:4]),
		.sram_inv(mux_tree_size24_23_sram_inv[0:4]),
		.out(mux_tree_size24_23_out));

	mux_tree_size24 mux_fle_wrapper_0_II_38 (
		.in({clb_I00[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_24_sram[0:4]),
		.sram_inv(mux_tree_size24_24_sram_inv[0:4]),
		.out(mux_tree_size24_24_out));

	mux_tree_size24 mux_fle_wrapper_0_II_39 (
		.in({clb_I10[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_25_sram[0:4]),
		.sram_inv(mux_tree_size24_25_sram_inv[0:4]),
		.out(mux_tree_size24_25_out));

	mux_tree_size24 mux_fle_wrapper_0_II_40 (
		.in({clb_I00[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_26_sram[0:4]),
		.sram_inv(mux_tree_size24_26_sram_inv[0:4]),
		.out(mux_tree_size24_26_out));

	mux_tree_size24 mux_fle_wrapper_0_II_41 (
		.in({clb_I10[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_27_sram[0:4]),
		.sram_inv(mux_tree_size24_27_sram_inv[0:4]),
		.out(mux_tree_size24_27_out));

	mux_tree_size24 mux_fle_wrapper_0_II_44 (
		.in({clb_I00[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_28_sram[0:4]),
		.sram_inv(mux_tree_size24_28_sram_inv[0:4]),
		.out(mux_tree_size24_28_out));

	mux_tree_size24 mux_fle_wrapper_0_II_45 (
		.in({clb_I10[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_29_sram[0:4]),
		.sram_inv(mux_tree_size24_29_sram_inv[0:4]),
		.out(mux_tree_size24_29_out));

	mux_tree_size24 mux_fle_wrapper_0_II_46 (
		.in({clb_I00[0:11], clb_I30[0:11]}),
		.sram(mux_tree_size24_30_sram[0:4]),
		.sram_inv(mux_tree_size24_30_sram_inv[0:4]),
		.out(mux_tree_size24_30_out));

	mux_tree_size24 mux_fle_wrapper_0_II_47 (
		.in({clb_I10[0:11], clb_I20[0:11]}),
		.sram(mux_tree_size24_31_sram[0:4]),
		.sram_inv(mux_tree_size24_31_sram_inv[0:4]),
		.out(mux_tree_size24_31_out));

	mux_tree_size24_mem mem_fle_wrapper_0_II_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_0_ccff_tail),
		.mem_out(mux_tree_size24_0_sram[0:4]),
		.mem_outb(mux_tree_size24_0_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_1_ccff_tail),
		.mem_out(mux_tree_size24_1_sram[0:4]),
		.mem_outb(mux_tree_size24_1_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_2_ccff_tail),
		.mem_out(mux_tree_size24_2_sram[0:4]),
		.mem_outb(mux_tree_size24_2_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_3_ccff_tail),
		.mem_out(mux_tree_size24_3_sram[0:4]),
		.mem_outb(mux_tree_size24_3_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_4_ccff_tail),
		.mem_out(mux_tree_size24_4_sram[0:4]),
		.mem_outb(mux_tree_size24_4_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_5_ccff_tail),
		.mem_out(mux_tree_size24_5_sram[0:4]),
		.mem_outb(mux_tree_size24_5_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_6_ccff_tail),
		.mem_out(mux_tree_size24_6_sram[0:4]),
		.mem_outb(mux_tree_size24_6_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_7_ccff_tail),
		.mem_out(mux_tree_size24_7_sram[0:4]),
		.mem_outb(mux_tree_size24_7_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_8_ccff_tail),
		.mem_out(mux_tree_size24_8_sram[0:4]),
		.mem_outb(mux_tree_size24_8_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_9_ccff_tail),
		.mem_out(mux_tree_size24_9_sram[0:4]),
		.mem_outb(mux_tree_size24_9_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_10_ccff_tail),
		.mem_out(mux_tree_size24_10_sram[0:4]),
		.mem_outb(mux_tree_size24_10_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_11_ccff_tail),
		.mem_out(mux_tree_size24_11_sram[0:4]),
		.mem_outb(mux_tree_size24_11_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_20 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_12_ccff_tail),
		.mem_out(mux_tree_size24_12_sram[0:4]),
		.mem_outb(mux_tree_size24_12_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_21 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_13_ccff_tail),
		.mem_out(mux_tree_size24_13_sram[0:4]),
		.mem_outb(mux_tree_size24_13_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_22 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_14_ccff_tail),
		.mem_out(mux_tree_size24_14_sram[0:4]),
		.mem_outb(mux_tree_size24_14_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_23 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_15_ccff_tail),
		.mem_out(mux_tree_size24_15_sram[0:4]),
		.mem_outb(mux_tree_size24_15_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_26 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_16_ccff_tail),
		.mem_out(mux_tree_size24_16_sram[0:4]),
		.mem_outb(mux_tree_size24_16_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_27 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_16_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_17_ccff_tail),
		.mem_out(mux_tree_size24_17_sram[0:4]),
		.mem_outb(mux_tree_size24_17_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_28 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_17_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_18_ccff_tail),
		.mem_out(mux_tree_size24_18_sram[0:4]),
		.mem_outb(mux_tree_size24_18_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_29 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_18_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_19_ccff_tail),
		.mem_out(mux_tree_size24_19_sram[0:4]),
		.mem_outb(mux_tree_size24_19_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_32 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_20_ccff_tail),
		.mem_out(mux_tree_size24_20_sram[0:4]),
		.mem_outb(mux_tree_size24_20_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_33 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_20_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_21_ccff_tail),
		.mem_out(mux_tree_size24_21_sram[0:4]),
		.mem_outb(mux_tree_size24_21_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_34 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_21_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_22_ccff_tail),
		.mem_out(mux_tree_size24_22_sram[0:4]),
		.mem_outb(mux_tree_size24_22_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_35 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_22_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_23_ccff_tail),
		.mem_out(mux_tree_size24_23_sram[0:4]),
		.mem_outb(mux_tree_size24_23_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_38 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_24_ccff_tail),
		.mem_out(mux_tree_size24_24_sram[0:4]),
		.mem_outb(mux_tree_size24_24_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_39 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_24_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_25_ccff_tail),
		.mem_out(mux_tree_size24_25_sram[0:4]),
		.mem_outb(mux_tree_size24_25_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_40 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_25_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_26_ccff_tail),
		.mem_out(mux_tree_size24_26_sram[0:4]),
		.mem_outb(mux_tree_size24_26_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_41 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_26_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_27_ccff_tail),
		.mem_out(mux_tree_size24_27_sram[0:4]),
		.mem_outb(mux_tree_size24_27_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_44 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size32_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_28_ccff_tail),
		.mem_out(mux_tree_size24_28_sram[0:4]),
		.mem_outb(mux_tree_size24_28_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_45 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_28_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_29_ccff_tail),
		.mem_out(mux_tree_size24_29_sram[0:4]),
		.mem_outb(mux_tree_size24_29_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_46 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_29_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_30_ccff_tail),
		.mem_out(mux_tree_size24_30_sram[0:4]),
		.mem_outb(mux_tree_size24_30_sram_inv[0:4]));

	mux_tree_size24_mem mem_fle_wrapper_0_II_47 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_30_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_31_ccff_tail),
		.mem_out(mux_tree_size24_31_sram[0:4]),
		.mem_outb(mux_tree_size24_31_sram_inv[0:4]));

	mux_tree_size6 mux_fle_wrapper_0_SS_0 (
		.in(clb_IS0[0:5]),
		.sram(mux_tree_size6_0_sram[0:2]),
		.sram_inv(mux_tree_size6_0_sram_inv[0:2]),
		.out(mux_tree_size6_0_out));

	mux_tree_size6 mux_fle_wrapper_0_SS_1 (
		.in(clb_IS0[0:5]),
		.sram(mux_tree_size6_1_sram[0:2]),
		.sram_inv(mux_tree_size6_1_sram_inv[0:2]),
		.out(mux_tree_size6_1_out));

	mux_tree_size6 mux_fle_wrapper_0_SS_2 (
		.in(clb_IS0[0:5]),
		.sram(mux_tree_size6_2_sram[0:2]),
		.sram_inv(mux_tree_size6_2_sram_inv[0:2]),
		.out(mux_tree_size6_2_out));

	mux_tree_size6 mux_fle_wrapper_0_SS_3 (
		.in(clb_IS0[0:5]),
		.sram(mux_tree_size6_3_sram[0:2]),
		.sram_inv(mux_tree_size6_3_sram_inv[0:2]),
		.out(mux_tree_size6_3_out));

	mux_tree_size6 mux_fle_wrapper_0_SS_4 (
		.in(clb_IS0[0:5]),
		.sram(mux_tree_size6_4_sram[0:2]),
		.sram_inv(mux_tree_size6_4_sram_inv[0:2]),
		.out(mux_tree_size6_4_out));

	mux_tree_size6 mux_fle_wrapper_0_SS_5 (
		.in(clb_IS0[0:5]),
		.sram(mux_tree_size6_5_sram[0:2]),
		.sram_inv(mux_tree_size6_5_sram_inv[0:2]),
		.out(mux_tree_size6_5_out));

	mux_tree_size6_mem mem_fle_wrapper_0_SS_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_31_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_0_ccff_tail),
		.mem_out(mux_tree_size6_0_sram[0:2]),
		.mem_outb(mux_tree_size6_0_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_wrapper_0_SS_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_1_ccff_tail),
		.mem_out(mux_tree_size6_1_sram[0:2]),
		.mem_outb(mux_tree_size6_1_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_wrapper_0_SS_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_2_ccff_tail),
		.mem_out(mux_tree_size6_2_sram[0:2]),
		.mem_outb(mux_tree_size6_2_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_wrapper_0_SS_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_3_ccff_tail),
		.mem_out(mux_tree_size6_3_sram[0:2]),
		.mem_outb(mux_tree_size6_3_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_wrapper_0_SS_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_4_ccff_tail),
		.mem_out(mux_tree_size6_4_sram[0:2]),
		.mem_outb(mux_tree_size6_4_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_wrapper_0_SS_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_5_ccff_tail),
		.mem_out(mux_tree_size6_5_sram[0:2]),
		.mem_outb(mux_tree_size6_5_sram_inv[0:2]));

	mux_tree_clock_size16 mux_fle_wrapper_0_clk_0 (
		.in(clb_clk[0:15]),
		.sram(mux_tree_clock_size16_0_sram[0:3]),
		.sram_inv(mux_tree_clock_size16_0_sram_inv[0:3]),
		.out(mux_tree_clock_size16_0_out));

	mux_tree_clock_size16_mem mem_fle_wrapper_0_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_5_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_clock_size16_0_sram[0:3]),
		.mem_outb(mux_tree_clock_size16_0_sram_inv[0:3]));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_clb_ -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: clb -----
