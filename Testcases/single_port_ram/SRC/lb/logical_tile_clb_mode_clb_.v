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
                                  clb_I0,
                                  clb_I1,
                                  clb_I2,
                                  clb_I3,
                                  clb_IS,
                                  clb_sc_in,
                                  clb_cin,
                                  clb_cin_trick,
                                  clb_global_reset,
                                  clb_scan_reset,
                                  clb_clk,
                                  ccff_head,
                                  clb_O,
                                  clb_sc_out,
                                  clb_cout,
                                  ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:9] clb_I0;
//----- INPUT PORTS -----
input [0:9] clb_I1;
//----- INPUT PORTS -----
input [0:9] clb_I2;
//----- INPUT PORTS -----
input [0:9] clb_I3;
//----- INPUT PORTS -----
input [0:5] clb_IS;
//----- INPUT PORTS -----
input [0:0] clb_sc_in;
//----- INPUT PORTS -----
input [0:0] clb_cin;
//----- INPUT PORTS -----
input [0:0] clb_cin_trick;
//----- INPUT PORTS -----
input [0:0] clb_global_reset;
//----- INPUT PORTS -----
input [0:0] clb_scan_reset;
//----- INPUT PORTS -----
input [0:3] clb_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:19] clb_O;
//----- OUTPUT PORTS -----
output [0:0] clb_sc_out;
//----- OUTPUT PORTS -----
output [0:0] clb_cout;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] logical_tile_clb_mode_default__fle_0_fle_out;
wire [0:1] logical_tile_clb_mode_default__fle_1_fle_out;
wire [0:1] logical_tile_clb_mode_default__fle_2_fle_out;
wire [0:1] logical_tile_clb_mode_default__fle_3_fle_out;
wire [0:1] logical_tile_clb_mode_default__fle_4_fle_out;
wire [0:1] logical_tile_clb_mode_default__fle_5_fle_out;
wire [0:1] logical_tile_clb_mode_default__fle_6_fle_out;
wire [0:1] logical_tile_clb_mode_default__fle_7_fle_out;
wire [0:4] mux_tree_size20_0_sram;
wire [0:4] mux_tree_size20_0_sram_inv;
wire [0:4] mux_tree_size20_10_sram;
wire [0:4] mux_tree_size20_10_sram_inv;
wire [0:4] mux_tree_size20_11_sram;
wire [0:4] mux_tree_size20_11_sram_inv;
wire [0:4] mux_tree_size20_12_sram;
wire [0:4] mux_tree_size20_12_sram_inv;
wire [0:4] mux_tree_size20_13_sram;
wire [0:4] mux_tree_size20_13_sram_inv;
wire [0:4] mux_tree_size20_14_sram;
wire [0:4] mux_tree_size20_14_sram_inv;
wire [0:4] mux_tree_size20_15_sram;
wire [0:4] mux_tree_size20_15_sram_inv;
wire [0:4] mux_tree_size20_16_sram;
wire [0:4] mux_tree_size20_16_sram_inv;
wire [0:4] mux_tree_size20_17_sram;
wire [0:4] mux_tree_size20_17_sram_inv;
wire [0:4] mux_tree_size20_18_sram;
wire [0:4] mux_tree_size20_18_sram_inv;
wire [0:4] mux_tree_size20_19_sram;
wire [0:4] mux_tree_size20_19_sram_inv;
wire [0:4] mux_tree_size20_1_sram;
wire [0:4] mux_tree_size20_1_sram_inv;
wire [0:4] mux_tree_size20_20_sram;
wire [0:4] mux_tree_size20_20_sram_inv;
wire [0:4] mux_tree_size20_21_sram;
wire [0:4] mux_tree_size20_21_sram_inv;
wire [0:4] mux_tree_size20_22_sram;
wire [0:4] mux_tree_size20_22_sram_inv;
wire [0:4] mux_tree_size20_23_sram;
wire [0:4] mux_tree_size20_23_sram_inv;
wire [0:4] mux_tree_size20_2_sram;
wire [0:4] mux_tree_size20_2_sram_inv;
wire [0:4] mux_tree_size20_3_sram;
wire [0:4] mux_tree_size20_3_sram_inv;
wire [0:4] mux_tree_size20_4_sram;
wire [0:4] mux_tree_size20_4_sram_inv;
wire [0:4] mux_tree_size20_5_sram;
wire [0:4] mux_tree_size20_5_sram_inv;
wire [0:4] mux_tree_size20_6_sram;
wire [0:4] mux_tree_size20_6_sram_inv;
wire [0:4] mux_tree_size20_7_sram;
wire [0:4] mux_tree_size20_7_sram_inv;
wire [0:4] mux_tree_size20_8_sram;
wire [0:4] mux_tree_size20_8_sram_inv;
wire [0:4] mux_tree_size20_9_sram;
wire [0:4] mux_tree_size20_9_sram_inv;
wire [0:4] mux_tree_size28_0_sram;
wire [0:4] mux_tree_size28_0_sram_inv;
wire [0:4] mux_tree_size28_10_sram;
wire [0:4] mux_tree_size28_10_sram_inv;
wire [0:4] mux_tree_size28_11_sram;
wire [0:4] mux_tree_size28_11_sram_inv;
wire [0:4] mux_tree_size28_12_sram;
wire [0:4] mux_tree_size28_12_sram_inv;
wire [0:4] mux_tree_size28_13_sram;
wire [0:4] mux_tree_size28_13_sram_inv;
wire [0:4] mux_tree_size28_14_sram;
wire [0:4] mux_tree_size28_14_sram_inv;
wire [0:4] mux_tree_size28_15_sram;
wire [0:4] mux_tree_size28_15_sram_inv;
wire [0:4] mux_tree_size28_1_sram;
wire [0:4] mux_tree_size28_1_sram_inv;
wire [0:4] mux_tree_size28_2_sram;
wire [0:4] mux_tree_size28_2_sram_inv;
wire [0:4] mux_tree_size28_3_sram;
wire [0:4] mux_tree_size28_3_sram_inv;
wire [0:4] mux_tree_size28_4_sram;
wire [0:4] mux_tree_size28_4_sram_inv;
wire [0:4] mux_tree_size28_5_sram;
wire [0:4] mux_tree_size28_5_sram_inv;
wire [0:4] mux_tree_size28_6_sram;
wire [0:4] mux_tree_size28_6_sram_inv;
wire [0:4] mux_tree_size28_7_sram;
wire [0:4] mux_tree_size28_7_sram_inv;
wire [0:4] mux_tree_size28_8_sram;
wire [0:4] mux_tree_size28_8_sram_inv;
wire [0:4] mux_tree_size28_9_sram;
wire [0:4] mux_tree_size28_9_sram_inv;
wire [0:4] mux_tree_size30_0_sram;
wire [0:4] mux_tree_size30_0_sram_inv;
wire [0:4] mux_tree_size30_1_sram;
wire [0:4] mux_tree_size30_1_sram_inv;
wire [0:4] mux_tree_size30_2_sram;
wire [0:4] mux_tree_size30_2_sram_inv;
wire [0:4] mux_tree_size30_3_sram;
wire [0:4] mux_tree_size30_3_sram_inv;
wire [0:4] mux_tree_size30_4_sram;
wire [0:4] mux_tree_size30_4_sram_inv;
wire [0:4] mux_tree_size30_5_sram;
wire [0:4] mux_tree_size30_5_sram_inv;
wire [0:4] mux_tree_size30_6_sram;
wire [0:4] mux_tree_size30_6_sram_inv;
wire [0:4] mux_tree_size30_7_sram;
wire [0:4] mux_tree_size30_7_sram_inv;
wire [0:1] mux_tree_size4_0_sram;
wire [0:1] mux_tree_size4_0_sram_inv;
wire [0:1] mux_tree_size4_1_sram;
wire [0:1] mux_tree_size4_1_sram_inv;
wire [0:1] mux_tree_size4_2_sram;
wire [0:1] mux_tree_size4_2_sram_inv;
wire [0:1] mux_tree_size4_3_sram;
wire [0:1] mux_tree_size4_3_sram_inv;
wire [0:1] mux_tree_size4_4_sram;
wire [0:1] mux_tree_size4_4_sram_inv;
wire [0:1] mux_tree_size4_5_sram;
wire [0:1] mux_tree_size4_5_sram_inv;
wire [0:1] mux_tree_size4_6_sram;
wire [0:1] mux_tree_size4_6_sram_inv;
wire [0:1] mux_tree_size4_7_sram;
wire [0:1] mux_tree_size4_7_sram_inv;
wire [0:2] mux_tree_size6_0_sram;
wire [0:2] mux_tree_size6_0_sram_inv;
wire [0:2] mux_tree_size6_10_sram;
wire [0:2] mux_tree_size6_10_sram_inv;
wire [0:2] mux_tree_size6_11_sram;
wire [0:2] mux_tree_size6_11_sram_inv;
wire [0:2] mux_tree_size6_12_sram;
wire [0:2] mux_tree_size6_12_sram_inv;
wire [0:2] mux_tree_size6_13_sram;
wire [0:2] mux_tree_size6_13_sram_inv;
wire [0:2] mux_tree_size6_14_sram;
wire [0:2] mux_tree_size6_14_sram_inv;
wire [0:2] mux_tree_size6_15_sram;
wire [0:2] mux_tree_size6_15_sram_inv;
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
wire [0:2] mux_tree_size6_6_sram;
wire [0:2] mux_tree_size6_6_sram_inv;
wire [0:2] mux_tree_size6_7_sram;
wire [0:2] mux_tree_size6_7_sram_inv;
wire [0:2] mux_tree_size6_8_sram;
wire [0:2] mux_tree_size6_8_sram_inv;
wire [0:2] mux_tree_size6_9_sram;
wire [0:2] mux_tree_size6_9_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fle_in({mux_tree_size28_0_out, mux_tree_size30_0_out, mux_tree_size28_1_out, mux_tree_size20_0_out, mux_tree_size20_1_out, mux_tree_size20_2_out}),
		.fle_cin(mux_tree_size2_0_out),
		.fle_sc_in(direct_interc_18_out),
		.fle_reset(mux_tree_size6_0_out),
		.fle_enable(mux_tree_size6_1_out),
		.fle_clk(mux_tree_size4_0_out),
		.ccff_head(ccff_head),
		.fle_out(logical_tile_clb_mode_default__fle_0_fle_out[0:1]),
		.fle_cout(logical_tile_clb_mode_default__fle_0_fle_cout),
		.fle_sc_out(logical_tile_clb_mode_default__fle_0_fle_sc_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_0_ccff_tail));

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fle_in({mux_tree_size28_2_out, mux_tree_size30_1_out, mux_tree_size28_3_out, mux_tree_size20_3_out, mux_tree_size20_4_out, mux_tree_size20_5_out}),
		.fle_cin(direct_interc_19_out),
		.fle_sc_in(direct_interc_20_out),
		.fle_reset(mux_tree_size6_2_out),
		.fle_enable(mux_tree_size6_3_out),
		.fle_clk(mux_tree_size4_1_out),
		.ccff_head(logical_tile_clb_mode_default__fle_0_ccff_tail),
		.fle_out(logical_tile_clb_mode_default__fle_1_fle_out[0:1]),
		.fle_cout(logical_tile_clb_mode_default__fle_1_fle_cout),
		.fle_sc_out(logical_tile_clb_mode_default__fle_1_fle_sc_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_1_ccff_tail));

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fle_in({mux_tree_size28_4_out, mux_tree_size30_2_out, mux_tree_size28_5_out, mux_tree_size20_6_out, mux_tree_size20_7_out, mux_tree_size20_8_out}),
		.fle_cin(direct_interc_21_out),
		.fle_sc_in(direct_interc_22_out),
		.fle_reset(mux_tree_size6_4_out),
		.fle_enable(mux_tree_size6_5_out),
		.fle_clk(mux_tree_size4_2_out),
		.ccff_head(logical_tile_clb_mode_default__fle_1_ccff_tail),
		.fle_out(logical_tile_clb_mode_default__fle_2_fle_out[0:1]),
		.fle_cout(logical_tile_clb_mode_default__fle_2_fle_cout),
		.fle_sc_out(logical_tile_clb_mode_default__fle_2_fle_sc_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_2_ccff_tail));

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fle_in({mux_tree_size28_6_out, mux_tree_size30_3_out, mux_tree_size28_7_out, mux_tree_size20_9_out, mux_tree_size20_10_out, mux_tree_size20_11_out}),
		.fle_cin(direct_interc_23_out),
		.fle_sc_in(direct_interc_24_out),
		.fle_reset(mux_tree_size6_6_out),
		.fle_enable(mux_tree_size6_7_out),
		.fle_clk(mux_tree_size4_3_out),
		.ccff_head(logical_tile_clb_mode_default__fle_2_ccff_tail),
		.fle_out(logical_tile_clb_mode_default__fle_3_fle_out[0:1]),
		.fle_cout(logical_tile_clb_mode_default__fle_3_fle_cout),
		.fle_sc_out(logical_tile_clb_mode_default__fle_3_fle_sc_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_3_ccff_tail));

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fle_in({mux_tree_size28_8_out, mux_tree_size30_4_out, mux_tree_size28_9_out, mux_tree_size20_12_out, mux_tree_size20_13_out, mux_tree_size20_14_out}),
		.fle_cin(direct_interc_25_out),
		.fle_sc_in(direct_interc_26_out),
		.fle_reset(mux_tree_size6_8_out),
		.fle_enable(mux_tree_size6_9_out),
		.fle_clk(mux_tree_size4_4_out),
		.ccff_head(logical_tile_clb_mode_default__fle_3_ccff_tail),
		.fle_out(logical_tile_clb_mode_default__fle_4_fle_out[0:1]),
		.fle_cout(logical_tile_clb_mode_default__fle_4_fle_cout),
		.fle_sc_out(logical_tile_clb_mode_default__fle_4_fle_sc_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_4_ccff_tail));

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fle_in({mux_tree_size28_10_out, mux_tree_size30_5_out, mux_tree_size28_11_out, mux_tree_size20_15_out, mux_tree_size20_16_out, mux_tree_size20_17_out}),
		.fle_cin(direct_interc_27_out),
		.fle_sc_in(direct_interc_28_out),
		.fle_reset(mux_tree_size6_10_out),
		.fle_enable(mux_tree_size6_11_out),
		.fle_clk(mux_tree_size4_5_out),
		.ccff_head(logical_tile_clb_mode_default__fle_4_ccff_tail),
		.fle_out(logical_tile_clb_mode_default__fle_5_fle_out[0:1]),
		.fle_cout(logical_tile_clb_mode_default__fle_5_fle_cout),
		.fle_sc_out(logical_tile_clb_mode_default__fle_5_fle_sc_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_5_ccff_tail));

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fle_in({mux_tree_size28_12_out, mux_tree_size30_6_out, mux_tree_size28_13_out, mux_tree_size20_18_out, mux_tree_size20_19_out, mux_tree_size20_20_out}),
		.fle_cin(direct_interc_29_out),
		.fle_sc_in(direct_interc_30_out),
		.fle_reset(mux_tree_size6_12_out),
		.fle_enable(mux_tree_size6_13_out),
		.fle_clk(mux_tree_size4_6_out),
		.ccff_head(logical_tile_clb_mode_default__fle_5_ccff_tail),
		.fle_out(logical_tile_clb_mode_default__fle_6_fle_out[0:1]),
		.fle_cout(logical_tile_clb_mode_default__fle_6_fle_cout),
		.fle_sc_out(logical_tile_clb_mode_default__fle_6_fle_sc_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_6_ccff_tail));

	logical_tile_clb_mode_default__fle logical_tile_clb_mode_default__fle_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fle_in({mux_tree_size28_14_out, mux_tree_size30_7_out, mux_tree_size28_15_out, mux_tree_size20_21_out, mux_tree_size20_22_out, mux_tree_size20_23_out}),
		.fle_cin(direct_interc_31_out),
		.fle_sc_in(direct_interc_32_out),
		.fle_reset(mux_tree_size6_14_out),
		.fle_enable(mux_tree_size6_15_out),
		.fle_clk(mux_tree_size4_7_out),
		.ccff_head(logical_tile_clb_mode_default__fle_6_ccff_tail),
		.fle_out(logical_tile_clb_mode_default__fle_7_fle_out[0:1]),
		.fle_cout(logical_tile_clb_mode_default__fle_7_fle_cout),
		.fle_sc_out(logical_tile_clb_mode_default__fle_7_fle_sc_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_7_ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_0_fle_out[0]),
		.out(clb_O[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_1_fle_out[0]),
		.out(clb_O[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_2_fle_out[0]),
		.out(clb_O[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_3_fle_out[0]),
		.out(clb_O[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_4_fle_out[0]),
		.out(clb_O[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_5_fle_out[0]),
		.out(clb_O[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_6_fle_out[0]),
		.out(clb_O[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_7_fle_out[0]),
		.out(clb_O[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_0_fle_out[1]),
		.out(clb_O[10]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_1_fle_out[1]),
		.out(clb_O[11]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_clb_mode_default__fle_2_fle_out[1]),
		.out(clb_O[12]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_clb_mode_default__fle_3_fle_out[1]),
		.out(clb_O[13]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_clb_mode_default__fle_4_fle_out[1]),
		.out(clb_O[14]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_clb_mode_default__fle_5_fle_out[1]),
		.out(clb_O[15]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_clb_mode_default__fle_6_fle_out[1]),
		.out(clb_O[16]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_clb_mode_default__fle_7_fle_out[1]),
		.out(clb_O[17]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_clb_mode_default__fle_7_fle_sc_out),
		.out(clb_sc_out));

	direct_interc direct_interc_17_ (
		.in(logical_tile_clb_mode_default__fle_7_fle_cout),
		.out(clb_cout));

	direct_interc direct_interc_18_ (
		.in(clb_sc_in),
		.out(direct_interc_18_out));

	direct_interc direct_interc_19_ (
		.in(logical_tile_clb_mode_default__fle_0_fle_cout),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(logical_tile_clb_mode_default__fle_0_fle_sc_out),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(logical_tile_clb_mode_default__fle_1_fle_cout),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(logical_tile_clb_mode_default__fle_1_fle_sc_out),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(logical_tile_clb_mode_default__fle_2_fle_cout),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(logical_tile_clb_mode_default__fle_2_fle_sc_out),
		.out(direct_interc_24_out));

	direct_interc direct_interc_25_ (
		.in(logical_tile_clb_mode_default__fle_3_fle_cout),
		.out(direct_interc_25_out));

	direct_interc direct_interc_26_ (
		.in(logical_tile_clb_mode_default__fle_3_fle_sc_out),
		.out(direct_interc_26_out));

	direct_interc direct_interc_27_ (
		.in(logical_tile_clb_mode_default__fle_4_fle_cout),
		.out(direct_interc_27_out));

	direct_interc direct_interc_28_ (
		.in(logical_tile_clb_mode_default__fle_4_fle_sc_out),
		.out(direct_interc_28_out));

	direct_interc direct_interc_29_ (
		.in(logical_tile_clb_mode_default__fle_5_fle_cout),
		.out(direct_interc_29_out));

	direct_interc direct_interc_30_ (
		.in(logical_tile_clb_mode_default__fle_5_fle_sc_out),
		.out(direct_interc_30_out));

	direct_interc direct_interc_31_ (
		.in(logical_tile_clb_mode_default__fle_6_fle_cout),
		.out(direct_interc_31_out));

	direct_interc direct_interc_32_ (
		.in(logical_tile_clb_mode_default__fle_6_fle_sc_out),
		.out(direct_interc_32_out));

	mux_tree_size28 mux_fle_0_in_0 (
		.in({clb_I0[0:9], clb_I3[0:9], logical_tile_clb_mode_default__fle_0_fle_out[0:1], logical_tile_clb_mode_default__fle_1_fle_out[0:1], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1]}),
		.sram(mux_tree_size28_0_sram[0:4]),
		.sram_inv(mux_tree_size28_0_sram_inv[0:4]),
		.out(mux_tree_size28_0_out));

	mux_tree_size28 mux_fle_0_in_2 (
		.in({clb_I0[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_6_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size28_1_sram[0:4]),
		.sram_inv(mux_tree_size28_1_sram_inv[0:4]),
		.out(mux_tree_size28_1_out));

	mux_tree_size28 mux_fle_1_in_0 (
		.in({clb_I0[0:9], clb_I3[0:9], logical_tile_clb_mode_default__fle_0_fle_out[0:1], logical_tile_clb_mode_default__fle_1_fle_out[0:1], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1]}),
		.sram(mux_tree_size28_2_sram[0:4]),
		.sram_inv(mux_tree_size28_2_sram_inv[0:4]),
		.out(mux_tree_size28_2_out));

	mux_tree_size28 mux_fle_1_in_2 (
		.in({clb_I0[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_6_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size28_3_sram[0:4]),
		.sram_inv(mux_tree_size28_3_sram_inv[0:4]),
		.out(mux_tree_size28_3_out));

	mux_tree_size28 mux_fle_2_in_0 (
		.in({clb_I0[0:9], clb_I3[0:9], logical_tile_clb_mode_default__fle_0_fle_out[0:1], logical_tile_clb_mode_default__fle_1_fle_out[0:1], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1]}),
		.sram(mux_tree_size28_4_sram[0:4]),
		.sram_inv(mux_tree_size28_4_sram_inv[0:4]),
		.out(mux_tree_size28_4_out));

	mux_tree_size28 mux_fle_2_in_2 (
		.in({clb_I0[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_6_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size28_5_sram[0:4]),
		.sram_inv(mux_tree_size28_5_sram_inv[0:4]),
		.out(mux_tree_size28_5_out));

	mux_tree_size28 mux_fle_3_in_0 (
		.in({clb_I0[0:9], clb_I3[0:9], logical_tile_clb_mode_default__fle_0_fle_out[0:1], logical_tile_clb_mode_default__fle_1_fle_out[0:1], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1]}),
		.sram(mux_tree_size28_6_sram[0:4]),
		.sram_inv(mux_tree_size28_6_sram_inv[0:4]),
		.out(mux_tree_size28_6_out));

	mux_tree_size28 mux_fle_3_in_2 (
		.in({clb_I0[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_6_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size28_7_sram[0:4]),
		.sram_inv(mux_tree_size28_7_sram_inv[0:4]),
		.out(mux_tree_size28_7_out));

	mux_tree_size28 mux_fle_4_in_0 (
		.in({clb_I0[0:9], clb_I3[0:9], logical_tile_clb_mode_default__fle_0_fle_out[0:1], logical_tile_clb_mode_default__fle_1_fle_out[0:1], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1]}),
		.sram(mux_tree_size28_8_sram[0:4]),
		.sram_inv(mux_tree_size28_8_sram_inv[0:4]),
		.out(mux_tree_size28_8_out));

	mux_tree_size28 mux_fle_4_in_2 (
		.in({clb_I0[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_6_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size28_9_sram[0:4]),
		.sram_inv(mux_tree_size28_9_sram_inv[0:4]),
		.out(mux_tree_size28_9_out));

	mux_tree_size28 mux_fle_5_in_0 (
		.in({clb_I0[0:9], clb_I3[0:9], logical_tile_clb_mode_default__fle_0_fle_out[0:1], logical_tile_clb_mode_default__fle_1_fle_out[0:1], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1]}),
		.sram(mux_tree_size28_10_sram[0:4]),
		.sram_inv(mux_tree_size28_10_sram_inv[0:4]),
		.out(mux_tree_size28_10_out));

	mux_tree_size28 mux_fle_5_in_2 (
		.in({clb_I0[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_6_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size28_11_sram[0:4]),
		.sram_inv(mux_tree_size28_11_sram_inv[0:4]),
		.out(mux_tree_size28_11_out));

	mux_tree_size28 mux_fle_6_in_0 (
		.in({clb_I0[0:9], clb_I3[0:9], logical_tile_clb_mode_default__fle_0_fle_out[0:1], logical_tile_clb_mode_default__fle_1_fle_out[0:1], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1]}),
		.sram(mux_tree_size28_12_sram[0:4]),
		.sram_inv(mux_tree_size28_12_sram_inv[0:4]),
		.out(mux_tree_size28_12_out));

	mux_tree_size28 mux_fle_6_in_2 (
		.in({clb_I0[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_6_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size28_13_sram[0:4]),
		.sram_inv(mux_tree_size28_13_sram_inv[0:4]),
		.out(mux_tree_size28_13_out));

	mux_tree_size28 mux_fle_7_in_0 (
		.in({clb_I0[0:9], clb_I3[0:9], logical_tile_clb_mode_default__fle_0_fle_out[0:1], logical_tile_clb_mode_default__fle_1_fle_out[0:1], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1]}),
		.sram(mux_tree_size28_14_sram[0:4]),
		.sram_inv(mux_tree_size28_14_sram_inv[0:4]),
		.out(mux_tree_size28_14_out));

	mux_tree_size28 mux_fle_7_in_2 (
		.in({clb_I0[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_6_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size28_15_sram[0:4]),
		.sram_inv(mux_tree_size28_15_sram_inv[0:4]),
		.out(mux_tree_size28_15_out));

	mux_tree_size28_mem mem_fle_0_in_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_clb_mode_default__fle_7_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_0_ccff_tail),
		.mem_out(mux_tree_size28_0_sram[0:4]),
		.mem_outb(mux_tree_size28_0_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_0_in_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size30_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_1_ccff_tail),
		.mem_out(mux_tree_size28_1_sram[0:4]),
		.mem_outb(mux_tree_size28_1_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_1_in_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_2_ccff_tail),
		.mem_out(mux_tree_size28_2_sram[0:4]),
		.mem_outb(mux_tree_size28_2_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_1_in_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size30_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_3_ccff_tail),
		.mem_out(mux_tree_size28_3_sram[0:4]),
		.mem_outb(mux_tree_size28_3_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_2_in_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_4_ccff_tail),
		.mem_out(mux_tree_size28_4_sram[0:4]),
		.mem_outb(mux_tree_size28_4_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_2_in_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size30_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_5_ccff_tail),
		.mem_out(mux_tree_size28_5_sram[0:4]),
		.mem_outb(mux_tree_size28_5_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_3_in_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_6_ccff_tail),
		.mem_out(mux_tree_size28_6_sram[0:4]),
		.mem_outb(mux_tree_size28_6_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_3_in_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size30_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_7_ccff_tail),
		.mem_out(mux_tree_size28_7_sram[0:4]),
		.mem_outb(mux_tree_size28_7_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_4_in_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_8_ccff_tail),
		.mem_out(mux_tree_size28_8_sram[0:4]),
		.mem_outb(mux_tree_size28_8_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_4_in_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size30_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_9_ccff_tail),
		.mem_out(mux_tree_size28_9_sram[0:4]),
		.mem_outb(mux_tree_size28_9_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_5_in_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_10_ccff_tail),
		.mem_out(mux_tree_size28_10_sram[0:4]),
		.mem_outb(mux_tree_size28_10_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_5_in_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size30_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_11_ccff_tail),
		.mem_out(mux_tree_size28_11_sram[0:4]),
		.mem_outb(mux_tree_size28_11_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_6_in_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_12_ccff_tail),
		.mem_out(mux_tree_size28_12_sram[0:4]),
		.mem_outb(mux_tree_size28_12_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_6_in_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size30_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_13_ccff_tail),
		.mem_out(mux_tree_size28_13_sram[0:4]),
		.mem_outb(mux_tree_size28_13_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_7_in_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_14_ccff_tail),
		.mem_out(mux_tree_size28_14_sram[0:4]),
		.mem_outb(mux_tree_size28_14_sram_inv[0:4]));

	mux_tree_size28_mem mem_fle_7_in_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size30_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size28_mem_15_ccff_tail),
		.mem_out(mux_tree_size28_15_sram[0:4]),
		.mem_outb(mux_tree_size28_15_sram_inv[0:4]));

	mux_tree_size30 mux_fle_0_in_1 (
		.in({clb_I1[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size30_0_sram[0:4]),
		.sram_inv(mux_tree_size30_0_sram_inv[0:4]),
		.out(mux_tree_size30_0_out));

	mux_tree_size30 mux_fle_1_in_1 (
		.in({clb_I1[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size30_1_sram[0:4]),
		.sram_inv(mux_tree_size30_1_sram_inv[0:4]),
		.out(mux_tree_size30_1_out));

	mux_tree_size30 mux_fle_2_in_1 (
		.in({clb_I1[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size30_2_sram[0:4]),
		.sram_inv(mux_tree_size30_2_sram_inv[0:4]),
		.out(mux_tree_size30_2_out));

	mux_tree_size30 mux_fle_3_in_1 (
		.in({clb_I1[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size30_3_sram[0:4]),
		.sram_inv(mux_tree_size30_3_sram_inv[0:4]),
		.out(mux_tree_size30_3_out));

	mux_tree_size30 mux_fle_4_in_1 (
		.in({clb_I1[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size30_4_sram[0:4]),
		.sram_inv(mux_tree_size30_4_sram_inv[0:4]),
		.out(mux_tree_size30_4_out));

	mux_tree_size30 mux_fle_5_in_1 (
		.in({clb_I1[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size30_5_sram[0:4]),
		.sram_inv(mux_tree_size30_5_sram_inv[0:4]),
		.out(mux_tree_size30_5_out));

	mux_tree_size30 mux_fle_6_in_1 (
		.in({clb_I1[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size30_6_sram[0:4]),
		.sram_inv(mux_tree_size30_6_sram_inv[0:4]),
		.out(mux_tree_size30_6_out));

	mux_tree_size30 mux_fle_7_in_1 (
		.in({clb_I1[0:9], clb_I2[0:9], logical_tile_clb_mode_default__fle_2_fle_out[0:1], logical_tile_clb_mode_default__fle_3_fle_out[0:1], logical_tile_clb_mode_default__fle_4_fle_out[0:1], logical_tile_clb_mode_default__fle_5_fle_out[0:1], logical_tile_clb_mode_default__fle_7_fle_out[0:1]}),
		.sram(mux_tree_size30_7_sram[0:4]),
		.sram_inv(mux_tree_size30_7_sram_inv[0:4]),
		.out(mux_tree_size30_7_out));

	mux_tree_size30_mem mem_fle_0_in_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size30_mem_0_ccff_tail),
		.mem_out(mux_tree_size30_0_sram[0:4]),
		.mem_outb(mux_tree_size30_0_sram_inv[0:4]));

	mux_tree_size30_mem mem_fle_1_in_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size30_mem_1_ccff_tail),
		.mem_out(mux_tree_size30_1_sram[0:4]),
		.mem_outb(mux_tree_size30_1_sram_inv[0:4]));

	mux_tree_size30_mem mem_fle_2_in_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size30_mem_2_ccff_tail),
		.mem_out(mux_tree_size30_2_sram[0:4]),
		.mem_outb(mux_tree_size30_2_sram_inv[0:4]));

	mux_tree_size30_mem mem_fle_3_in_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size30_mem_3_ccff_tail),
		.mem_out(mux_tree_size30_3_sram[0:4]),
		.mem_outb(mux_tree_size30_3_sram_inv[0:4]));

	mux_tree_size30_mem mem_fle_4_in_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size30_mem_4_ccff_tail),
		.mem_out(mux_tree_size30_4_sram[0:4]),
		.mem_outb(mux_tree_size30_4_sram_inv[0:4]));

	mux_tree_size30_mem mem_fle_5_in_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size30_mem_5_ccff_tail),
		.mem_out(mux_tree_size30_5_sram[0:4]),
		.mem_outb(mux_tree_size30_5_sram_inv[0:4]));

	mux_tree_size30_mem mem_fle_6_in_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size30_mem_6_ccff_tail),
		.mem_out(mux_tree_size30_6_sram[0:4]),
		.mem_outb(mux_tree_size30_6_sram_inv[0:4]));

	mux_tree_size30_mem mem_fle_7_in_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size30_mem_7_ccff_tail),
		.mem_out(mux_tree_size30_7_sram[0:4]),
		.mem_outb(mux_tree_size30_7_sram_inv[0:4]));

	mux_tree_size20 mux_fle_0_in_3 (
		.in({clb_I1[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_0_sram[0:4]),
		.sram_inv(mux_tree_size20_0_sram_inv[0:4]),
		.out(mux_tree_size20_0_out));

	mux_tree_size20 mux_fle_0_in_4 (
		.in({clb_I0[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_1_sram[0:4]),
		.sram_inv(mux_tree_size20_1_sram_inv[0:4]),
		.out(mux_tree_size20_1_out));

	mux_tree_size20 mux_fle_0_in_5 (
		.in({clb_I1[0:9], clb_I2[0:9]}),
		.sram(mux_tree_size20_2_sram[0:4]),
		.sram_inv(mux_tree_size20_2_sram_inv[0:4]),
		.out(mux_tree_size20_2_out));

	mux_tree_size20 mux_fle_1_in_3 (
		.in({clb_I1[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_3_sram[0:4]),
		.sram_inv(mux_tree_size20_3_sram_inv[0:4]),
		.out(mux_tree_size20_3_out));

	mux_tree_size20 mux_fle_1_in_4 (
		.in({clb_I0[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_4_sram[0:4]),
		.sram_inv(mux_tree_size20_4_sram_inv[0:4]),
		.out(mux_tree_size20_4_out));

	mux_tree_size20 mux_fle_1_in_5 (
		.in({clb_I1[0:9], clb_I2[0:9]}),
		.sram(mux_tree_size20_5_sram[0:4]),
		.sram_inv(mux_tree_size20_5_sram_inv[0:4]),
		.out(mux_tree_size20_5_out));

	mux_tree_size20 mux_fle_2_in_3 (
		.in({clb_I1[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_6_sram[0:4]),
		.sram_inv(mux_tree_size20_6_sram_inv[0:4]),
		.out(mux_tree_size20_6_out));

	mux_tree_size20 mux_fle_2_in_4 (
		.in({clb_I0[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_7_sram[0:4]),
		.sram_inv(mux_tree_size20_7_sram_inv[0:4]),
		.out(mux_tree_size20_7_out));

	mux_tree_size20 mux_fle_2_in_5 (
		.in({clb_I1[0:9], clb_I2[0:9]}),
		.sram(mux_tree_size20_8_sram[0:4]),
		.sram_inv(mux_tree_size20_8_sram_inv[0:4]),
		.out(mux_tree_size20_8_out));

	mux_tree_size20 mux_fle_3_in_3 (
		.in({clb_I1[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_9_sram[0:4]),
		.sram_inv(mux_tree_size20_9_sram_inv[0:4]),
		.out(mux_tree_size20_9_out));

	mux_tree_size20 mux_fle_3_in_4 (
		.in({clb_I0[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_10_sram[0:4]),
		.sram_inv(mux_tree_size20_10_sram_inv[0:4]),
		.out(mux_tree_size20_10_out));

	mux_tree_size20 mux_fle_3_in_5 (
		.in({clb_I1[0:9], clb_I2[0:9]}),
		.sram(mux_tree_size20_11_sram[0:4]),
		.sram_inv(mux_tree_size20_11_sram_inv[0:4]),
		.out(mux_tree_size20_11_out));

	mux_tree_size20 mux_fle_4_in_3 (
		.in({clb_I1[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_12_sram[0:4]),
		.sram_inv(mux_tree_size20_12_sram_inv[0:4]),
		.out(mux_tree_size20_12_out));

	mux_tree_size20 mux_fle_4_in_4 (
		.in({clb_I0[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_13_sram[0:4]),
		.sram_inv(mux_tree_size20_13_sram_inv[0:4]),
		.out(mux_tree_size20_13_out));

	mux_tree_size20 mux_fle_4_in_5 (
		.in({clb_I1[0:9], clb_I2[0:9]}),
		.sram(mux_tree_size20_14_sram[0:4]),
		.sram_inv(mux_tree_size20_14_sram_inv[0:4]),
		.out(mux_tree_size20_14_out));

	mux_tree_size20 mux_fle_5_in_3 (
		.in({clb_I1[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_15_sram[0:4]),
		.sram_inv(mux_tree_size20_15_sram_inv[0:4]),
		.out(mux_tree_size20_15_out));

	mux_tree_size20 mux_fle_5_in_4 (
		.in({clb_I0[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_16_sram[0:4]),
		.sram_inv(mux_tree_size20_16_sram_inv[0:4]),
		.out(mux_tree_size20_16_out));

	mux_tree_size20 mux_fle_5_in_5 (
		.in({clb_I1[0:9], clb_I2[0:9]}),
		.sram(mux_tree_size20_17_sram[0:4]),
		.sram_inv(mux_tree_size20_17_sram_inv[0:4]),
		.out(mux_tree_size20_17_out));

	mux_tree_size20 mux_fle_6_in_3 (
		.in({clb_I1[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_18_sram[0:4]),
		.sram_inv(mux_tree_size20_18_sram_inv[0:4]),
		.out(mux_tree_size20_18_out));

	mux_tree_size20 mux_fle_6_in_4 (
		.in({clb_I0[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_19_sram[0:4]),
		.sram_inv(mux_tree_size20_19_sram_inv[0:4]),
		.out(mux_tree_size20_19_out));

	mux_tree_size20 mux_fle_6_in_5 (
		.in({clb_I1[0:9], clb_I2[0:9]}),
		.sram(mux_tree_size20_20_sram[0:4]),
		.sram_inv(mux_tree_size20_20_sram_inv[0:4]),
		.out(mux_tree_size20_20_out));

	mux_tree_size20 mux_fle_7_in_3 (
		.in({clb_I1[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_21_sram[0:4]),
		.sram_inv(mux_tree_size20_21_sram_inv[0:4]),
		.out(mux_tree_size20_21_out));

	mux_tree_size20 mux_fle_7_in_4 (
		.in({clb_I0[0:9], clb_I3[0:9]}),
		.sram(mux_tree_size20_22_sram[0:4]),
		.sram_inv(mux_tree_size20_22_sram_inv[0:4]),
		.out(mux_tree_size20_22_out));

	mux_tree_size20 mux_fle_7_in_5 (
		.in({clb_I1[0:9], clb_I2[0:9]}),
		.sram(mux_tree_size20_23_sram[0:4]),
		.sram_inv(mux_tree_size20_23_sram_inv[0:4]),
		.out(mux_tree_size20_23_out));

	mux_tree_size20_mem mem_fle_0_in_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_0_ccff_tail),
		.mem_out(mux_tree_size20_0_sram[0:4]),
		.mem_outb(mux_tree_size20_0_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_0_in_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_1_ccff_tail),
		.mem_out(mux_tree_size20_1_sram[0:4]),
		.mem_outb(mux_tree_size20_1_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_0_in_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_2_ccff_tail),
		.mem_out(mux_tree_size20_2_sram[0:4]),
		.mem_outb(mux_tree_size20_2_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_1_in_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_3_ccff_tail),
		.mem_out(mux_tree_size20_3_sram[0:4]),
		.mem_outb(mux_tree_size20_3_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_1_in_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_4_ccff_tail),
		.mem_out(mux_tree_size20_4_sram[0:4]),
		.mem_outb(mux_tree_size20_4_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_1_in_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_5_ccff_tail),
		.mem_out(mux_tree_size20_5_sram[0:4]),
		.mem_outb(mux_tree_size20_5_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_2_in_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_6_ccff_tail),
		.mem_out(mux_tree_size20_6_sram[0:4]),
		.mem_outb(mux_tree_size20_6_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_2_in_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_7_ccff_tail),
		.mem_out(mux_tree_size20_7_sram[0:4]),
		.mem_outb(mux_tree_size20_7_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_2_in_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_8_ccff_tail),
		.mem_out(mux_tree_size20_8_sram[0:4]),
		.mem_outb(mux_tree_size20_8_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_3_in_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_9_ccff_tail),
		.mem_out(mux_tree_size20_9_sram[0:4]),
		.mem_outb(mux_tree_size20_9_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_3_in_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_10_ccff_tail),
		.mem_out(mux_tree_size20_10_sram[0:4]),
		.mem_outb(mux_tree_size20_10_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_3_in_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_11_ccff_tail),
		.mem_out(mux_tree_size20_11_sram[0:4]),
		.mem_outb(mux_tree_size20_11_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_4_in_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_12_ccff_tail),
		.mem_out(mux_tree_size20_12_sram[0:4]),
		.mem_outb(mux_tree_size20_12_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_4_in_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_13_ccff_tail),
		.mem_out(mux_tree_size20_13_sram[0:4]),
		.mem_outb(mux_tree_size20_13_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_4_in_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_14_ccff_tail),
		.mem_out(mux_tree_size20_14_sram[0:4]),
		.mem_outb(mux_tree_size20_14_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_5_in_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_15_ccff_tail),
		.mem_out(mux_tree_size20_15_sram[0:4]),
		.mem_outb(mux_tree_size20_15_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_5_in_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_16_ccff_tail),
		.mem_out(mux_tree_size20_16_sram[0:4]),
		.mem_outb(mux_tree_size20_16_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_5_in_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_16_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_17_ccff_tail),
		.mem_out(mux_tree_size20_17_sram[0:4]),
		.mem_outb(mux_tree_size20_17_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_6_in_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_18_ccff_tail),
		.mem_out(mux_tree_size20_18_sram[0:4]),
		.mem_outb(mux_tree_size20_18_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_6_in_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_18_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_19_ccff_tail),
		.mem_out(mux_tree_size20_19_sram[0:4]),
		.mem_outb(mux_tree_size20_19_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_6_in_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_19_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_20_ccff_tail),
		.mem_out(mux_tree_size20_20_sram[0:4]),
		.mem_outb(mux_tree_size20_20_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_7_in_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size28_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_21_ccff_tail),
		.mem_out(mux_tree_size20_21_sram[0:4]),
		.mem_outb(mux_tree_size20_21_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_7_in_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_21_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_22_ccff_tail),
		.mem_out(mux_tree_size20_22_sram[0:4]),
		.mem_outb(mux_tree_size20_22_sram_inv[0:4]));

	mux_tree_size20_mem mem_fle_7_in_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_22_ccff_tail),
		.ccff_tail(mux_tree_size20_mem_23_ccff_tail),
		.mem_out(mux_tree_size20_23_sram[0:4]),
		.mem_outb(mux_tree_size20_23_sram_inv[0:4]));

	mux_tree_size2 mux_fle_0_cin_0 (
		.in({clb_cin, clb_cin_trick}),
		.sram(mux_tree_size2_0_sram),
		.sram_inv(mux_tree_size2_0_sram_inv),
		.out(mux_tree_size2_0_out));

	mux_tree_size2_mem mem_fle_0_cin_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_0_ccff_tail),
		.mem_out(mux_tree_size2_0_sram),
		.mem_outb(mux_tree_size2_0_sram_inv));

	mux_tree_size6 mux_fle_0_reset_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_0_sram[0:2]),
		.sram_inv(mux_tree_size6_0_sram_inv[0:2]),
		.out(mux_tree_size6_0_out));

	mux_tree_size6 mux_fle_0_enable_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_1_sram[0:2]),
		.sram_inv(mux_tree_size6_1_sram_inv[0:2]),
		.out(mux_tree_size6_1_out));

	mux_tree_size6 mux_fle_1_reset_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_2_sram[0:2]),
		.sram_inv(mux_tree_size6_2_sram_inv[0:2]),
		.out(mux_tree_size6_2_out));

	mux_tree_size6 mux_fle_1_enable_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_3_sram[0:2]),
		.sram_inv(mux_tree_size6_3_sram_inv[0:2]),
		.out(mux_tree_size6_3_out));

	mux_tree_size6 mux_fle_2_reset_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_4_sram[0:2]),
		.sram_inv(mux_tree_size6_4_sram_inv[0:2]),
		.out(mux_tree_size6_4_out));

	mux_tree_size6 mux_fle_2_enable_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_5_sram[0:2]),
		.sram_inv(mux_tree_size6_5_sram_inv[0:2]),
		.out(mux_tree_size6_5_out));

	mux_tree_size6 mux_fle_3_reset_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_6_sram[0:2]),
		.sram_inv(mux_tree_size6_6_sram_inv[0:2]),
		.out(mux_tree_size6_6_out));

	mux_tree_size6 mux_fle_3_enable_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_7_sram[0:2]),
		.sram_inv(mux_tree_size6_7_sram_inv[0:2]),
		.out(mux_tree_size6_7_out));

	mux_tree_size6 mux_fle_4_reset_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_8_sram[0:2]),
		.sram_inv(mux_tree_size6_8_sram_inv[0:2]),
		.out(mux_tree_size6_8_out));

	mux_tree_size6 mux_fle_4_enable_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_9_sram[0:2]),
		.sram_inv(mux_tree_size6_9_sram_inv[0:2]),
		.out(mux_tree_size6_9_out));

	mux_tree_size6 mux_fle_5_reset_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_10_sram[0:2]),
		.sram_inv(mux_tree_size6_10_sram_inv[0:2]),
		.out(mux_tree_size6_10_out));

	mux_tree_size6 mux_fle_5_enable_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_11_sram[0:2]),
		.sram_inv(mux_tree_size6_11_sram_inv[0:2]),
		.out(mux_tree_size6_11_out));

	mux_tree_size6 mux_fle_6_reset_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_12_sram[0:2]),
		.sram_inv(mux_tree_size6_12_sram_inv[0:2]),
		.out(mux_tree_size6_12_out));

	mux_tree_size6 mux_fle_6_enable_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_13_sram[0:2]),
		.sram_inv(mux_tree_size6_13_sram_inv[0:2]),
		.out(mux_tree_size6_13_out));

	mux_tree_size6 mux_fle_7_reset_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_14_sram[0:2]),
		.sram_inv(mux_tree_size6_14_sram_inv[0:2]),
		.out(mux_tree_size6_14_out));

	mux_tree_size6 mux_fle_7_enable_0 (
		.in(clb_IS[0:5]),
		.sram(mux_tree_size6_15_sram[0:2]),
		.sram_inv(mux_tree_size6_15_sram_inv[0:2]),
		.out(mux_tree_size6_15_out));

	mux_tree_size6_mem mem_fle_0_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_0_ccff_tail),
		.mem_out(mux_tree_size6_0_sram[0:2]),
		.mem_outb(mux_tree_size6_0_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_0_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_1_ccff_tail),
		.mem_out(mux_tree_size6_1_sram[0:2]),
		.mem_outb(mux_tree_size6_1_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_1_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_2_ccff_tail),
		.mem_out(mux_tree_size6_2_sram[0:2]),
		.mem_outb(mux_tree_size6_2_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_1_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_3_ccff_tail),
		.mem_out(mux_tree_size6_3_sram[0:2]),
		.mem_outb(mux_tree_size6_3_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_2_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_4_ccff_tail),
		.mem_out(mux_tree_size6_4_sram[0:2]),
		.mem_outb(mux_tree_size6_4_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_2_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_5_ccff_tail),
		.mem_out(mux_tree_size6_5_sram[0:2]),
		.mem_outb(mux_tree_size6_5_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_3_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_6_ccff_tail),
		.mem_out(mux_tree_size6_6_sram[0:2]),
		.mem_outb(mux_tree_size6_6_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_3_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_7_ccff_tail),
		.mem_out(mux_tree_size6_7_sram[0:2]),
		.mem_outb(mux_tree_size6_7_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_4_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_8_ccff_tail),
		.mem_out(mux_tree_size6_8_sram[0:2]),
		.mem_outb(mux_tree_size6_8_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_4_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_9_ccff_tail),
		.mem_out(mux_tree_size6_9_sram[0:2]),
		.mem_outb(mux_tree_size6_9_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_5_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_17_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_10_ccff_tail),
		.mem_out(mux_tree_size6_10_sram[0:2]),
		.mem_outb(mux_tree_size6_10_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_5_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_11_ccff_tail),
		.mem_out(mux_tree_size6_11_sram[0:2]),
		.mem_outb(mux_tree_size6_11_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_6_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_20_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_12_ccff_tail),
		.mem_out(mux_tree_size6_12_sram[0:2]),
		.mem_outb(mux_tree_size6_12_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_6_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_13_ccff_tail),
		.mem_out(mux_tree_size6_13_sram[0:2]),
		.mem_outb(mux_tree_size6_13_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_7_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size20_mem_23_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_14_ccff_tail),
		.mem_out(mux_tree_size6_14_sram[0:2]),
		.mem_outb(mux_tree_size6_14_sram_inv[0:2]));

	mux_tree_size6_mem mem_fle_7_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_15_ccff_tail),
		.mem_out(mux_tree_size6_15_sram[0:2]),
		.mem_outb(mux_tree_size6_15_sram_inv[0:2]));

	mux_tree_size4 mux_fle_0_clk_0 (
		.in(clb_clk[0:3]),
		.sram(mux_tree_size4_0_sram[0:1]),
		.sram_inv(mux_tree_size4_0_sram_inv[0:1]),
		.out(mux_tree_size4_0_out));

	mux_tree_size4 mux_fle_1_clk_0 (
		.in(clb_clk[0:3]),
		.sram(mux_tree_size4_1_sram[0:1]),
		.sram_inv(mux_tree_size4_1_sram_inv[0:1]),
		.out(mux_tree_size4_1_out));

	mux_tree_size4 mux_fle_2_clk_0 (
		.in(clb_clk[0:3]),
		.sram(mux_tree_size4_2_sram[0:1]),
		.sram_inv(mux_tree_size4_2_sram_inv[0:1]),
		.out(mux_tree_size4_2_out));

	mux_tree_size4 mux_fle_3_clk_0 (
		.in(clb_clk[0:3]),
		.sram(mux_tree_size4_3_sram[0:1]),
		.sram_inv(mux_tree_size4_3_sram_inv[0:1]),
		.out(mux_tree_size4_3_out));

	mux_tree_size4 mux_fle_4_clk_0 (
		.in(clb_clk[0:3]),
		.sram(mux_tree_size4_4_sram[0:1]),
		.sram_inv(mux_tree_size4_4_sram_inv[0:1]),
		.out(mux_tree_size4_4_out));

	mux_tree_size4 mux_fle_5_clk_0 (
		.in(clb_clk[0:3]),
		.sram(mux_tree_size4_5_sram[0:1]),
		.sram_inv(mux_tree_size4_5_sram_inv[0:1]),
		.out(mux_tree_size4_5_out));

	mux_tree_size4 mux_fle_6_clk_0 (
		.in(clb_clk[0:3]),
		.sram(mux_tree_size4_6_sram[0:1]),
		.sram_inv(mux_tree_size4_6_sram_inv[0:1]),
		.out(mux_tree_size4_6_out));

	mux_tree_size4 mux_fle_7_clk_0 (
		.in(clb_clk[0:3]),
		.sram(mux_tree_size4_7_sram[0:1]),
		.sram_inv(mux_tree_size4_7_sram_inv[0:1]),
		.out(mux_tree_size4_7_out));

	mux_tree_size4_mem mem_fle_0_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_0_ccff_tail),
		.mem_out(mux_tree_size4_0_sram[0:1]),
		.mem_outb(mux_tree_size4_0_sram_inv[0:1]));

	mux_tree_size4_mem mem_fle_1_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_1_ccff_tail),
		.mem_out(mux_tree_size4_1_sram[0:1]),
		.mem_outb(mux_tree_size4_1_sram_inv[0:1]));

	mux_tree_size4_mem mem_fle_2_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_2_ccff_tail),
		.mem_out(mux_tree_size4_2_sram[0:1]),
		.mem_outb(mux_tree_size4_2_sram_inv[0:1]));

	mux_tree_size4_mem mem_fle_3_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_3_ccff_tail),
		.mem_out(mux_tree_size4_3_sram[0:1]),
		.mem_outb(mux_tree_size4_3_sram_inv[0:1]));

	mux_tree_size4_mem mem_fle_4_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_4_ccff_tail),
		.mem_out(mux_tree_size4_4_sram[0:1]),
		.mem_outb(mux_tree_size4_4_sram_inv[0:1]));

	mux_tree_size4_mem mem_fle_5_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_5_ccff_tail),
		.mem_out(mux_tree_size4_5_sram[0:1]),
		.mem_outb(mux_tree_size4_5_sram_inv[0:1]));

	mux_tree_size4_mem mem_fle_6_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_6_ccff_tail),
		.mem_out(mux_tree_size4_6_sram[0:1]),
		.mem_outb(mux_tree_size4_6_sram_inv[0:1]));

	mux_tree_size4_mem mem_fle_7_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_15_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size4_7_sram[0:1]),
		.mem_outb(mux_tree_size4_7_sram_inv[0:1]));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_clb_ -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: clb -----
