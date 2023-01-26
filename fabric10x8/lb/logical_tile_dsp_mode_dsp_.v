//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: dsp
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: dsp -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_dsp_mode_dsp_ -----
module logical_tile_dsp_mode_dsp_(scan_mode,
                                  scan_enable,
                                  global_reset,
                                  config_enable,
                                  prog_clock,
                                  dsp_I00,
                                  dsp_I10,
                                  dsp_I20,
                                  dsp_I30,
                                  dsp_IS0,
                                  dsp_I01,
                                  dsp_I11,
                                  dsp_I21,
                                  dsp_I31,
                                  dsp_IS1,
                                  dsp_I02,
                                  dsp_I12,
                                  dsp_I22,
                                  dsp_I32,
                                  dsp_IS2,
                                  dsp_sc_in,
                                  dsp_clk,
                                  ccff_head,
                                  dsp_O0,
                                  dsp_O1,
                                  dsp_O2,
                                  dsp_sc_out,
                                  ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] global_reset;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:11] dsp_I00;
//----- INPUT PORTS -----
input [0:11] dsp_I10;
//----- INPUT PORTS -----
input [0:11] dsp_I20;
//----- INPUT PORTS -----
input [0:11] dsp_I30;
//----- INPUT PORTS -----
input [0:5] dsp_IS0;
//----- INPUT PORTS -----
input [0:11] dsp_I01;
//----- INPUT PORTS -----
input [0:11] dsp_I11;
//----- INPUT PORTS -----
input [0:11] dsp_I21;
//----- INPUT PORTS -----
input [0:11] dsp_I31;
//----- INPUT PORTS -----
input [0:5] dsp_IS1;
//----- INPUT PORTS -----
input [0:11] dsp_I02;
//----- INPUT PORTS -----
input [0:11] dsp_I12;
//----- INPUT PORTS -----
input [0:11] dsp_I22;
//----- INPUT PORTS -----
input [0:11] dsp_I32;
//----- INPUT PORTS -----
input [0:5] dsp_IS2;
//----- INPUT PORTS -----
input [0:19] dsp_sc_in;
//----- INPUT PORTS -----
input [0:15] dsp_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:23] dsp_O0;
//----- OUTPUT PORTS -----
output [0:23] dsp_O1;
//----- OUTPUT PORTS -----
output [0:23] dsp_O2;
//----- OUTPUT PORTS -----
output [0:19] dsp_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:17] logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o;
wire [0:19] logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out;
wire [0:37] logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o;
wire [0:20] logical_tile_dsp_mode_default__opt_0_opt_O;
wire [0:3] mux_tree_clock_size16_0_sram;
wire [0:3] mux_tree_clock_size16_0_sram_inv;
wire [0:4] mux_tree_size21_0_sram;
wire [0:4] mux_tree_size21_0_sram_inv;
wire [0:4] mux_tree_size21_10_sram;
wire [0:4] mux_tree_size21_10_sram_inv;
wire [0:4] mux_tree_size21_11_sram;
wire [0:4] mux_tree_size21_11_sram_inv;
wire [0:4] mux_tree_size21_12_sram;
wire [0:4] mux_tree_size21_12_sram_inv;
wire [0:4] mux_tree_size21_13_sram;
wire [0:4] mux_tree_size21_13_sram_inv;
wire [0:4] mux_tree_size21_14_sram;
wire [0:4] mux_tree_size21_14_sram_inv;
wire [0:4] mux_tree_size21_15_sram;
wire [0:4] mux_tree_size21_15_sram_inv;
wire [0:4] mux_tree_size21_16_sram;
wire [0:4] mux_tree_size21_16_sram_inv;
wire [0:4] mux_tree_size21_17_sram;
wire [0:4] mux_tree_size21_17_sram_inv;
wire [0:4] mux_tree_size21_18_sram;
wire [0:4] mux_tree_size21_18_sram_inv;
wire [0:4] mux_tree_size21_19_sram;
wire [0:4] mux_tree_size21_19_sram_inv;
wire [0:4] mux_tree_size21_1_sram;
wire [0:4] mux_tree_size21_1_sram_inv;
wire [0:4] mux_tree_size21_20_sram;
wire [0:4] mux_tree_size21_20_sram_inv;
wire [0:4] mux_tree_size21_2_sram;
wire [0:4] mux_tree_size21_2_sram_inv;
wire [0:4] mux_tree_size21_3_sram;
wire [0:4] mux_tree_size21_3_sram_inv;
wire [0:4] mux_tree_size21_4_sram;
wire [0:4] mux_tree_size21_4_sram_inv;
wire [0:4] mux_tree_size21_5_sram;
wire [0:4] mux_tree_size21_5_sram_inv;
wire [0:4] mux_tree_size21_6_sram;
wire [0:4] mux_tree_size21_6_sram_inv;
wire [0:4] mux_tree_size21_7_sram;
wire [0:4] mux_tree_size21_7_sram_inv;
wire [0:4] mux_tree_size21_8_sram;
wire [0:4] mux_tree_size21_8_sram_inv;
wire [0:4] mux_tree_size21_9_sram;
wire [0:4] mux_tree_size21_9_sram_inv;
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
wire [0:4] mux_tree_size24_32_sram;
wire [0:4] mux_tree_size24_32_sram_inv;
wire [0:4] mux_tree_size24_33_sram;
wire [0:4] mux_tree_size24_33_sram_inv;
wire [0:4] mux_tree_size24_34_sram;
wire [0:4] mux_tree_size24_34_sram_inv;
wire [0:4] mux_tree_size24_35_sram;
wire [0:4] mux_tree_size24_35_sram_inv;
wire [0:4] mux_tree_size24_36_sram;
wire [0:4] mux_tree_size24_36_sram_inv;
wire [0:4] mux_tree_size24_37_sram;
wire [0:4] mux_tree_size24_37_sram_inv;
wire [0:4] mux_tree_size24_38_sram;
wire [0:4] mux_tree_size24_38_sram_inv;
wire [0:4] mux_tree_size24_39_sram;
wire [0:4] mux_tree_size24_39_sram_inv;
wire [0:4] mux_tree_size24_3_sram;
wire [0:4] mux_tree_size24_3_sram_inv;
wire [0:4] mux_tree_size24_40_sram;
wire [0:4] mux_tree_size24_40_sram_inv;
wire [0:4] mux_tree_size24_41_sram;
wire [0:4] mux_tree_size24_41_sram_inv;
wire [0:4] mux_tree_size24_42_sram;
wire [0:4] mux_tree_size24_42_sram_inv;
wire [0:4] mux_tree_size24_43_sram;
wire [0:4] mux_tree_size24_43_sram_inv;
wire [0:4] mux_tree_size24_44_sram;
wire [0:4] mux_tree_size24_44_sram_inv;
wire [0:4] mux_tree_size24_45_sram;
wire [0:4] mux_tree_size24_45_sram_inv;
wire [0:4] mux_tree_size24_46_sram;
wire [0:4] mux_tree_size24_46_sram_inv;
wire [0:4] mux_tree_size24_47_sram;
wire [0:4] mux_tree_size24_47_sram_inv;
wire [0:4] mux_tree_size24_48_sram;
wire [0:4] mux_tree_size24_48_sram_inv;
wire [0:4] mux_tree_size24_49_sram;
wire [0:4] mux_tree_size24_49_sram_inv;
wire [0:4] mux_tree_size24_4_sram;
wire [0:4] mux_tree_size24_4_sram_inv;
wire [0:4] mux_tree_size24_50_sram;
wire [0:4] mux_tree_size24_50_sram_inv;
wire [0:4] mux_tree_size24_51_sram;
wire [0:4] mux_tree_size24_51_sram_inv;
wire [0:4] mux_tree_size24_52_sram;
wire [0:4] mux_tree_size24_52_sram_inv;
wire [0:4] mux_tree_size24_53_sram;
wire [0:4] mux_tree_size24_53_sram_inv;
wire [0:4] mux_tree_size24_54_sram;
wire [0:4] mux_tree_size24_54_sram_inv;
wire [0:4] mux_tree_size24_55_sram;
wire [0:4] mux_tree_size24_55_sram_inv;
wire [0:4] mux_tree_size24_56_sram;
wire [0:4] mux_tree_size24_56_sram_inv;
wire [0:4] mux_tree_size24_57_sram;
wire [0:4] mux_tree_size24_57_sram_inv;
wire [0:4] mux_tree_size24_58_sram;
wire [0:4] mux_tree_size24_58_sram_inv;
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
wire [0:2] mux_tree_size6_0_sram;
wire [0:2] mux_tree_size6_0_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_dsp_mode_default__dsp_rtl logical_tile_dsp_mode_default__dsp_rtl_0 (
		.scan_mode(scan_mode),
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.dsp_rtl_a_i({mux_tree_size24_0_out, mux_tree_size24_1_out, mux_tree_size24_2_out, mux_tree_size24_3_out, mux_tree_size24_4_out, mux_tree_size24_5_out, mux_tree_size24_6_out, mux_tree_size24_7_out, mux_tree_size24_8_out, mux_tree_size24_9_out, mux_tree_size24_10_out, mux_tree_size24_11_out, mux_tree_size24_12_out, mux_tree_size24_13_out, mux_tree_size24_14_out, mux_tree_size24_15_out, mux_tree_size24_16_out, mux_tree_size24_17_out, mux_tree_size24_18_out, mux_tree_size24_19_out}),
		.dsp_rtl_b_i({mux_tree_size24_20_out, mux_tree_size24_21_out, mux_tree_size24_22_out, mux_tree_size24_23_out, mux_tree_size24_24_out, mux_tree_size24_25_out, mux_tree_size24_26_out, mux_tree_size24_27_out, mux_tree_size24_28_out, mux_tree_size24_29_out, mux_tree_size24_30_out, mux_tree_size24_31_out, mux_tree_size24_32_out, mux_tree_size24_33_out, mux_tree_size24_34_out, mux_tree_size24_35_out, mux_tree_size24_36_out, mux_tree_size24_37_out}),
		.dsp_rtl_feedback({mux_tree_size21_0_out, mux_tree_size21_1_out, mux_tree_size21_2_out}),
		.dsp_rtl_unsigned_a(mux_tree_size21_3_out),
		.dsp_rtl_unsigned_b(mux_tree_size21_4_out),
		.dsp_rtl_lreset(direct_interc_92_out),
		.dsp_rtl_shift_right({mux_tree_size21_5_out, mux_tree_size21_6_out, mux_tree_size21_7_out, mux_tree_size21_8_out, mux_tree_size21_9_out, mux_tree_size21_10_out}),
		.dsp_rtl_saturate_enable(mux_tree_size21_11_out),
		.dsp_rtl_round(mux_tree_size21_12_out),
		.dsp_rtl_subtract(mux_tree_size21_13_out),
		.dsp_rtl_load_acc(mux_tree_size21_14_out),
		.dsp_rtl_acc_fir_i({mux_tree_size21_15_out, mux_tree_size21_16_out, mux_tree_size21_17_out, mux_tree_size21_18_out, mux_tree_size21_19_out, mux_tree_size21_20_out}),
		.dsp_rtl_sc_in({direct_interc_93_out, direct_interc_94_out, direct_interc_95_out, direct_interc_96_out, direct_interc_97_out, direct_interc_98_out, direct_interc_99_out, direct_interc_100_out, direct_interc_101_out, direct_interc_102_out, direct_interc_103_out, direct_interc_104_out, direct_interc_105_out, direct_interc_106_out, direct_interc_107_out, direct_interc_108_out, direct_interc_109_out, direct_interc_110_out, direct_interc_111_out, direct_interc_112_out}),
		.dsp_rtl_clk(direct_interc_113_out),
		.ccff_head(ccff_head),
		.dsp_rtl_z_o(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[0:37]),
		.dsp_rtl_dly_b_o(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[0:17]),
		.dsp_rtl_sc_out(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[0:19]),
		.ccff_tail(logical_tile_dsp_mode_default__dsp_rtl_0_ccff_tail));

	logical_tile_dsp_mode_default__opt logical_tile_dsp_mode_default__opt_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.opt_I({mux_tree_size24_38_out, mux_tree_size24_39_out, mux_tree_size24_40_out, mux_tree_size24_41_out, mux_tree_size24_42_out, mux_tree_size24_43_out, mux_tree_size24_44_out, mux_tree_size24_45_out, mux_tree_size24_46_out, mux_tree_size24_47_out, mux_tree_size24_48_out, mux_tree_size24_49_out, mux_tree_size24_50_out, mux_tree_size24_51_out, mux_tree_size24_52_out, mux_tree_size24_53_out, mux_tree_size24_54_out, mux_tree_size24_55_out, mux_tree_size24_56_out, mux_tree_size24_57_out, mux_tree_size24_58_out}),
		.ccff_head(logical_tile_dsp_mode_default__dsp_rtl_0_ccff_tail),
		.opt_O(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.ccff_tail(logical_tile_dsp_mode_default__opt_0_ccff_tail));

	logical_tile_dsp_mode_default__sr_opt logical_tile_dsp_mode_default__sr_opt_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.sr_opt_I(mux_tree_size6_0_out),
		.ccff_head(logical_tile_dsp_mode_default__opt_0_ccff_tail),
		.sr_opt_O(logical_tile_dsp_mode_default__sr_opt_0_sr_opt_O),
		.ccff_tail(logical_tile_dsp_mode_default__sr_opt_0_ccff_tail));

	logical_tile_dsp_mode_default__clk_opt logical_tile_dsp_mode_default__clk_opt_0 (
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.clk_opt_I(mux_tree_clock_size16_0_out),
		.ccff_head(logical_tile_dsp_mode_default__sr_opt_0_ccff_tail),
		.clk_opt_O(logical_tile_dsp_mode_default__clk_opt_0_clk_opt_O),
		.ccff_tail(logical_tile_dsp_mode_default__clk_opt_0_ccff_tail));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_0 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_0_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_1 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_1_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_2 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_2_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_3 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_3_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_4 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_4_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_5 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_5_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_6 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_6_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_7 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_7_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_8 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_8_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_9 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_9_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_10 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_10_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_11 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_11_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_12 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_12_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_13 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_13_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_14 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_14_z_pad_logic0));

	logical_tile_dsp_mode_default__z_pad logical_tile_dsp_mode_default__z_pad_15 (
		.z_pad_logic0(logical_tile_dsp_mode_default__z_pad_15_z_pad_logic0));

	direct_interc direct_interc_0_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[0]),
		.out(dsp_O0[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[0]),
		.out(dsp_O0[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[18]),
		.out(dsp_O0[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[36]),
		.out(dsp_O0[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[1]),
		.out(dsp_O0[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[1]),
		.out(dsp_O0[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[19]),
		.out(dsp_O0[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[37]),
		.out(dsp_O0[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[2]),
		.out(dsp_O0[8]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[2]),
		.out(dsp_O0[9]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[20]),
		.out(dsp_O0[10]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_dsp_mode_default__z_pad_0_z_pad_logic0),
		.out(dsp_O0[11]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[3]),
		.out(dsp_O0[12]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[3]),
		.out(dsp_O0[13]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[21]),
		.out(dsp_O0[14]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_dsp_mode_default__z_pad_1_z_pad_logic0),
		.out(dsp_O0[15]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[4]),
		.out(dsp_O0[16]));

	direct_interc direct_interc_17_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[4]),
		.out(dsp_O0[17]));

	direct_interc direct_interc_18_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[22]),
		.out(dsp_O0[18]));

	direct_interc direct_interc_19_ (
		.in(logical_tile_dsp_mode_default__z_pad_2_z_pad_logic0),
		.out(dsp_O0[19]));

	direct_interc direct_interc_20_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[5]),
		.out(dsp_O0[20]));

	direct_interc direct_interc_21_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[5]),
		.out(dsp_O0[21]));

	direct_interc direct_interc_22_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[23]),
		.out(dsp_O0[22]));

	direct_interc direct_interc_23_ (
		.in(logical_tile_dsp_mode_default__z_pad_3_z_pad_logic0),
		.out(dsp_O0[23]));

	direct_interc direct_interc_24_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[6]),
		.out(dsp_O1[0]));

	direct_interc direct_interc_25_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[6]),
		.out(dsp_O1[1]));

	direct_interc direct_interc_26_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[24]),
		.out(dsp_O1[2]));

	direct_interc direct_interc_27_ (
		.in(logical_tile_dsp_mode_default__z_pad_4_z_pad_logic0),
		.out(dsp_O1[3]));

	direct_interc direct_interc_28_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[7]),
		.out(dsp_O1[4]));

	direct_interc direct_interc_29_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[7]),
		.out(dsp_O1[5]));

	direct_interc direct_interc_30_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[25]),
		.out(dsp_O1[6]));

	direct_interc direct_interc_31_ (
		.in(logical_tile_dsp_mode_default__z_pad_5_z_pad_logic0),
		.out(dsp_O1[7]));

	direct_interc direct_interc_32_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[8]),
		.out(dsp_O1[8]));

	direct_interc direct_interc_33_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[8]),
		.out(dsp_O1[9]));

	direct_interc direct_interc_34_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[26]),
		.out(dsp_O1[10]));

	direct_interc direct_interc_35_ (
		.in(logical_tile_dsp_mode_default__z_pad_6_z_pad_logic0),
		.out(dsp_O1[11]));

	direct_interc direct_interc_36_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[9]),
		.out(dsp_O1[12]));

	direct_interc direct_interc_37_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[9]),
		.out(dsp_O1[13]));

	direct_interc direct_interc_38_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[27]),
		.out(dsp_O1[14]));

	direct_interc direct_interc_39_ (
		.in(logical_tile_dsp_mode_default__z_pad_7_z_pad_logic0),
		.out(dsp_O1[15]));

	direct_interc direct_interc_40_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[10]),
		.out(dsp_O1[16]));

	direct_interc direct_interc_41_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[10]),
		.out(dsp_O1[17]));

	direct_interc direct_interc_42_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[28]),
		.out(dsp_O1[18]));

	direct_interc direct_interc_43_ (
		.in(logical_tile_dsp_mode_default__z_pad_8_z_pad_logic0),
		.out(dsp_O1[19]));

	direct_interc direct_interc_44_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[11]),
		.out(dsp_O1[20]));

	direct_interc direct_interc_45_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[11]),
		.out(dsp_O1[21]));

	direct_interc direct_interc_46_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[29]),
		.out(dsp_O1[22]));

	direct_interc direct_interc_47_ (
		.in(logical_tile_dsp_mode_default__z_pad_9_z_pad_logic0),
		.out(dsp_O1[23]));

	direct_interc direct_interc_48_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[12]),
		.out(dsp_O2[0]));

	direct_interc direct_interc_49_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[12]),
		.out(dsp_O2[1]));

	direct_interc direct_interc_50_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[30]),
		.out(dsp_O2[2]));

	direct_interc direct_interc_51_ (
		.in(logical_tile_dsp_mode_default__z_pad_10_z_pad_logic0),
		.out(dsp_O2[3]));

	direct_interc direct_interc_52_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[13]),
		.out(dsp_O2[4]));

	direct_interc direct_interc_53_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[13]),
		.out(dsp_O2[5]));

	direct_interc direct_interc_54_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[31]),
		.out(dsp_O2[6]));

	direct_interc direct_interc_55_ (
		.in(logical_tile_dsp_mode_default__z_pad_11_z_pad_logic0),
		.out(dsp_O2[7]));

	direct_interc direct_interc_56_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[14]),
		.out(dsp_O2[8]));

	direct_interc direct_interc_57_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[14]),
		.out(dsp_O2[9]));

	direct_interc direct_interc_58_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[32]),
		.out(dsp_O2[10]));

	direct_interc direct_interc_59_ (
		.in(logical_tile_dsp_mode_default__z_pad_12_z_pad_logic0),
		.out(dsp_O2[11]));

	direct_interc direct_interc_60_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[15]),
		.out(dsp_O2[12]));

	direct_interc direct_interc_61_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[15]),
		.out(dsp_O2[13]));

	direct_interc direct_interc_62_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[33]),
		.out(dsp_O2[14]));

	direct_interc direct_interc_63_ (
		.in(logical_tile_dsp_mode_default__z_pad_13_z_pad_logic0),
		.out(dsp_O2[15]));

	direct_interc direct_interc_64_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[16]),
		.out(dsp_O2[16]));

	direct_interc direct_interc_65_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[16]),
		.out(dsp_O2[17]));

	direct_interc direct_interc_66_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[34]),
		.out(dsp_O2[18]));

	direct_interc direct_interc_67_ (
		.in(logical_tile_dsp_mode_default__z_pad_14_z_pad_logic0),
		.out(dsp_O2[19]));

	direct_interc direct_interc_68_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_dly_b_o[17]),
		.out(dsp_O2[20]));

	direct_interc direct_interc_69_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[17]),
		.out(dsp_O2[21]));

	direct_interc direct_interc_70_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_z_o[35]),
		.out(dsp_O2[22]));

	direct_interc direct_interc_71_ (
		.in(logical_tile_dsp_mode_default__z_pad_15_z_pad_logic0),
		.out(dsp_O2[23]));

	direct_interc direct_interc_72_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[0]),
		.out(dsp_sc_out[0]));

	direct_interc direct_interc_73_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[1]),
		.out(dsp_sc_out[1]));

	direct_interc direct_interc_74_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[2]),
		.out(dsp_sc_out[2]));

	direct_interc direct_interc_75_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[3]),
		.out(dsp_sc_out[3]));

	direct_interc direct_interc_76_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[4]),
		.out(dsp_sc_out[4]));

	direct_interc direct_interc_77_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[5]),
		.out(dsp_sc_out[5]));

	direct_interc direct_interc_78_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[6]),
		.out(dsp_sc_out[6]));

	direct_interc direct_interc_79_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[7]),
		.out(dsp_sc_out[7]));

	direct_interc direct_interc_80_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[8]),
		.out(dsp_sc_out[8]));

	direct_interc direct_interc_81_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[9]),
		.out(dsp_sc_out[9]));

	direct_interc direct_interc_82_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[10]),
		.out(dsp_sc_out[10]));

	direct_interc direct_interc_83_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[11]),
		.out(dsp_sc_out[11]));

	direct_interc direct_interc_84_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[12]),
		.out(dsp_sc_out[12]));

	direct_interc direct_interc_85_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[13]),
		.out(dsp_sc_out[13]));

	direct_interc direct_interc_86_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[14]),
		.out(dsp_sc_out[14]));

	direct_interc direct_interc_87_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[15]),
		.out(dsp_sc_out[15]));

	direct_interc direct_interc_88_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[16]),
		.out(dsp_sc_out[16]));

	direct_interc direct_interc_89_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[17]),
		.out(dsp_sc_out[17]));

	direct_interc direct_interc_90_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[18]),
		.out(dsp_sc_out[18]));

	direct_interc direct_interc_91_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_0_dsp_rtl_sc_out[19]),
		.out(dsp_sc_out[19]));

	direct_interc direct_interc_92_ (
		.in(logical_tile_dsp_mode_default__sr_opt_0_sr_opt_O),
		.out(direct_interc_92_out));

	direct_interc direct_interc_93_ (
		.in(dsp_sc_in[0]),
		.out(direct_interc_93_out));

	direct_interc direct_interc_94_ (
		.in(dsp_sc_in[1]),
		.out(direct_interc_94_out));

	direct_interc direct_interc_95_ (
		.in(dsp_sc_in[2]),
		.out(direct_interc_95_out));

	direct_interc direct_interc_96_ (
		.in(dsp_sc_in[3]),
		.out(direct_interc_96_out));

	direct_interc direct_interc_97_ (
		.in(dsp_sc_in[4]),
		.out(direct_interc_97_out));

	direct_interc direct_interc_98_ (
		.in(dsp_sc_in[5]),
		.out(direct_interc_98_out));

	direct_interc direct_interc_99_ (
		.in(dsp_sc_in[6]),
		.out(direct_interc_99_out));

	direct_interc direct_interc_100_ (
		.in(dsp_sc_in[7]),
		.out(direct_interc_100_out));

	direct_interc direct_interc_101_ (
		.in(dsp_sc_in[8]),
		.out(direct_interc_101_out));

	direct_interc direct_interc_102_ (
		.in(dsp_sc_in[9]),
		.out(direct_interc_102_out));

	direct_interc direct_interc_103_ (
		.in(dsp_sc_in[10]),
		.out(direct_interc_103_out));

	direct_interc direct_interc_104_ (
		.in(dsp_sc_in[11]),
		.out(direct_interc_104_out));

	direct_interc direct_interc_105_ (
		.in(dsp_sc_in[12]),
		.out(direct_interc_105_out));

	direct_interc direct_interc_106_ (
		.in(dsp_sc_in[13]),
		.out(direct_interc_106_out));

	direct_interc direct_interc_107_ (
		.in(dsp_sc_in[14]),
		.out(direct_interc_107_out));

	direct_interc direct_interc_108_ (
		.in(dsp_sc_in[15]),
		.out(direct_interc_108_out));

	direct_interc direct_interc_109_ (
		.in(dsp_sc_in[16]),
		.out(direct_interc_109_out));

	direct_interc direct_interc_110_ (
		.in(dsp_sc_in[17]),
		.out(direct_interc_110_out));

	direct_interc direct_interc_111_ (
		.in(dsp_sc_in[18]),
		.out(direct_interc_111_out));

	direct_interc direct_interc_112_ (
		.in(dsp_sc_in[19]),
		.out(direct_interc_112_out));

	direct_interc direct_interc_113_ (
		.in(logical_tile_dsp_mode_default__clk_opt_0_clk_opt_O),
		.out(direct_interc_113_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_0 (
		.in({dsp_I00[0:11], dsp_I20[0:11]}),
		.sram(mux_tree_size24_0_sram[0:4]),
		.sram_inv(mux_tree_size24_0_sram_inv[0:4]),
		.out(mux_tree_size24_0_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_1 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_1_sram[0:4]),
		.sram_inv(mux_tree_size24_1_sram_inv[0:4]),
		.out(mux_tree_size24_1_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_2 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_2_sram[0:4]),
		.sram_inv(mux_tree_size24_2_sram_inv[0:4]),
		.out(mux_tree_size24_2_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_3 (
		.in({dsp_I00[0:11], dsp_I20[0:11]}),
		.sram(mux_tree_size24_3_sram[0:4]),
		.sram_inv(mux_tree_size24_3_sram_inv[0:4]),
		.out(mux_tree_size24_3_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_4 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_4_sram[0:4]),
		.sram_inv(mux_tree_size24_4_sram_inv[0:4]),
		.out(mux_tree_size24_4_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_5 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_5_sram[0:4]),
		.sram_inv(mux_tree_size24_5_sram_inv[0:4]),
		.out(mux_tree_size24_5_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_6 (
		.in({dsp_I01[0:11], dsp_I21[0:11]}),
		.sram(mux_tree_size24_6_sram[0:4]),
		.sram_inv(mux_tree_size24_6_sram_inv[0:4]),
		.out(mux_tree_size24_6_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_7 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_7_sram[0:4]),
		.sram_inv(mux_tree_size24_7_sram_inv[0:4]),
		.out(mux_tree_size24_7_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_8 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_8_sram[0:4]),
		.sram_inv(mux_tree_size24_8_sram_inv[0:4]),
		.out(mux_tree_size24_8_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_9 (
		.in({dsp_I01[0:11], dsp_I21[0:11]}),
		.sram(mux_tree_size24_9_sram[0:4]),
		.sram_inv(mux_tree_size24_9_sram_inv[0:4]),
		.out(mux_tree_size24_9_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_10 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_10_sram[0:4]),
		.sram_inv(mux_tree_size24_10_sram_inv[0:4]),
		.out(mux_tree_size24_10_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_11 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_11_sram[0:4]),
		.sram_inv(mux_tree_size24_11_sram_inv[0:4]),
		.out(mux_tree_size24_11_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_12 (
		.in({dsp_I02[0:11], dsp_I22[0:11]}),
		.sram(mux_tree_size24_12_sram[0:4]),
		.sram_inv(mux_tree_size24_12_sram_inv[0:4]),
		.out(mux_tree_size24_12_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_13 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_13_sram[0:4]),
		.sram_inv(mux_tree_size24_13_sram_inv[0:4]),
		.out(mux_tree_size24_13_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_14 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_14_sram[0:4]),
		.sram_inv(mux_tree_size24_14_sram_inv[0:4]),
		.out(mux_tree_size24_14_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_15 (
		.in({dsp_I02[0:11], dsp_I22[0:11]}),
		.sram(mux_tree_size24_15_sram[0:4]),
		.sram_inv(mux_tree_size24_15_sram_inv[0:4]),
		.out(mux_tree_size24_15_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_16 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_16_sram[0:4]),
		.sram_inv(mux_tree_size24_16_sram_inv[0:4]),
		.out(mux_tree_size24_16_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_17 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_17_sram[0:4]),
		.sram_inv(mux_tree_size24_17_sram_inv[0:4]),
		.out(mux_tree_size24_17_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_18 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_18_sram[0:4]),
		.sram_inv(mux_tree_size24_18_sram_inv[0:4]),
		.out(mux_tree_size24_18_out));

	mux_tree_size24 mux_dsp_rtl_0_a_i_19 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_19_sram[0:4]),
		.sram_inv(mux_tree_size24_19_sram_inv[0:4]),
		.out(mux_tree_size24_19_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_0 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_20_sram[0:4]),
		.sram_inv(mux_tree_size24_20_sram_inv[0:4]),
		.out(mux_tree_size24_20_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_1 (
		.in({dsp_I00[0:11], dsp_I20[0:11]}),
		.sram(mux_tree_size24_21_sram[0:4]),
		.sram_inv(mux_tree_size24_21_sram_inv[0:4]),
		.out(mux_tree_size24_21_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_2 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_22_sram[0:4]),
		.sram_inv(mux_tree_size24_22_sram_inv[0:4]),
		.out(mux_tree_size24_22_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_3 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_23_sram[0:4]),
		.sram_inv(mux_tree_size24_23_sram_inv[0:4]),
		.out(mux_tree_size24_23_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_4 (
		.in({dsp_I00[0:11], dsp_I20[0:11]}),
		.sram(mux_tree_size24_24_sram[0:4]),
		.sram_inv(mux_tree_size24_24_sram_inv[0:4]),
		.out(mux_tree_size24_24_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_5 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_25_sram[0:4]),
		.sram_inv(mux_tree_size24_25_sram_inv[0:4]),
		.out(mux_tree_size24_25_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_6 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_26_sram[0:4]),
		.sram_inv(mux_tree_size24_26_sram_inv[0:4]),
		.out(mux_tree_size24_26_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_7 (
		.in({dsp_I01[0:11], dsp_I21[0:11]}),
		.sram(mux_tree_size24_27_sram[0:4]),
		.sram_inv(mux_tree_size24_27_sram_inv[0:4]),
		.out(mux_tree_size24_27_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_8 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_28_sram[0:4]),
		.sram_inv(mux_tree_size24_28_sram_inv[0:4]),
		.out(mux_tree_size24_28_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_9 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_29_sram[0:4]),
		.sram_inv(mux_tree_size24_29_sram_inv[0:4]),
		.out(mux_tree_size24_29_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_10 (
		.in({dsp_I01[0:11], dsp_I21[0:11]}),
		.sram(mux_tree_size24_30_sram[0:4]),
		.sram_inv(mux_tree_size24_30_sram_inv[0:4]),
		.out(mux_tree_size24_30_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_11 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_31_sram[0:4]),
		.sram_inv(mux_tree_size24_31_sram_inv[0:4]),
		.out(mux_tree_size24_31_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_12 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_32_sram[0:4]),
		.sram_inv(mux_tree_size24_32_sram_inv[0:4]),
		.out(mux_tree_size24_32_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_13 (
		.in({dsp_I02[0:11], dsp_I22[0:11]}),
		.sram(mux_tree_size24_33_sram[0:4]),
		.sram_inv(mux_tree_size24_33_sram_inv[0:4]),
		.out(mux_tree_size24_33_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_14 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_34_sram[0:4]),
		.sram_inv(mux_tree_size24_34_sram_inv[0:4]),
		.out(mux_tree_size24_34_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_15 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_35_sram[0:4]),
		.sram_inv(mux_tree_size24_35_sram_inv[0:4]),
		.out(mux_tree_size24_35_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_16 (
		.in({dsp_I02[0:11], dsp_I22[0:11]}),
		.sram(mux_tree_size24_36_sram[0:4]),
		.sram_inv(mux_tree_size24_36_sram_inv[0:4]),
		.out(mux_tree_size24_36_out));

	mux_tree_size24 mux_dsp_rtl_0_b_i_17 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_37_sram[0:4]),
		.sram_inv(mux_tree_size24_37_sram_inv[0:4]),
		.out(mux_tree_size24_37_out));

	mux_tree_size24 mux_opt_0_I_0 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_38_sram[0:4]),
		.sram_inv(mux_tree_size24_38_sram_inv[0:4]),
		.out(mux_tree_size24_38_out));

	mux_tree_size24 mux_opt_0_I_1 (
		.in({dsp_I02[0:11], dsp_I22[0:11]}),
		.sram(mux_tree_size24_39_sram[0:4]),
		.sram_inv(mux_tree_size24_39_sram_inv[0:4]),
		.out(mux_tree_size24_39_out));

	mux_tree_size24 mux_opt_0_I_2 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_40_sram[0:4]),
		.sram_inv(mux_tree_size24_40_sram_inv[0:4]),
		.out(mux_tree_size24_40_out));

	mux_tree_size24 mux_opt_0_I_3 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_41_sram[0:4]),
		.sram_inv(mux_tree_size24_41_sram_inv[0:4]),
		.out(mux_tree_size24_41_out));

	mux_tree_size24 mux_opt_0_I_4 (
		.in({dsp_I00[0:11], dsp_I20[0:11]}),
		.sram(mux_tree_size24_42_sram[0:4]),
		.sram_inv(mux_tree_size24_42_sram_inv[0:4]),
		.out(mux_tree_size24_42_out));

	mux_tree_size24 mux_opt_0_I_5 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_43_sram[0:4]),
		.sram_inv(mux_tree_size24_43_sram_inv[0:4]),
		.out(mux_tree_size24_43_out));

	mux_tree_size24 mux_opt_0_I_6 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_44_sram[0:4]),
		.sram_inv(mux_tree_size24_44_sram_inv[0:4]),
		.out(mux_tree_size24_44_out));

	mux_tree_size24 mux_opt_0_I_7 (
		.in({dsp_I02[0:11], dsp_I22[0:11]}),
		.sram(mux_tree_size24_45_sram[0:4]),
		.sram_inv(mux_tree_size24_45_sram_inv[0:4]),
		.out(mux_tree_size24_45_out));

	mux_tree_size24 mux_opt_0_I_8 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_46_sram[0:4]),
		.sram_inv(mux_tree_size24_46_sram_inv[0:4]),
		.out(mux_tree_size24_46_out));

	mux_tree_size24 mux_opt_0_I_9 (
		.in({dsp_I02[0:11], dsp_I32[0:11]}),
		.sram(mux_tree_size24_47_sram[0:4]),
		.sram_inv(mux_tree_size24_47_sram_inv[0:4]),
		.out(mux_tree_size24_47_out));

	mux_tree_size24 mux_opt_0_I_10 (
		.in({dsp_I02[0:11], dsp_I22[0:11]}),
		.sram(mux_tree_size24_48_sram[0:4]),
		.sram_inv(mux_tree_size24_48_sram_inv[0:4]),
		.out(mux_tree_size24_48_out));

	mux_tree_size24 mux_opt_0_I_11 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_49_sram[0:4]),
		.sram_inv(mux_tree_size24_49_sram_inv[0:4]),
		.out(mux_tree_size24_49_out));

	mux_tree_size24 mux_opt_0_I_12 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_50_sram[0:4]),
		.sram_inv(mux_tree_size24_50_sram_inv[0:4]),
		.out(mux_tree_size24_50_out));

	mux_tree_size24 mux_opt_0_I_13 (
		.in({dsp_I00[0:11], dsp_I20[0:11]}),
		.sram(mux_tree_size24_51_sram[0:4]),
		.sram_inv(mux_tree_size24_51_sram_inv[0:4]),
		.out(mux_tree_size24_51_out));

	mux_tree_size24 mux_opt_0_I_14 (
		.in({dsp_I00[0:11], dsp_I30[0:11]}),
		.sram(mux_tree_size24_52_sram[0:4]),
		.sram_inv(mux_tree_size24_52_sram_inv[0:4]),
		.out(mux_tree_size24_52_out));

	mux_tree_size24 mux_opt_0_I_15 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_53_sram[0:4]),
		.sram_inv(mux_tree_size24_53_sram_inv[0:4]),
		.out(mux_tree_size24_53_out));

	mux_tree_size24 mux_opt_0_I_16 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_54_sram[0:4]),
		.sram_inv(mux_tree_size24_54_sram_inv[0:4]),
		.out(mux_tree_size24_54_out));

	mux_tree_size24 mux_opt_0_I_17 (
		.in({dsp_I01[0:11], dsp_I21[0:11]}),
		.sram(mux_tree_size24_55_sram[0:4]),
		.sram_inv(mux_tree_size24_55_sram_inv[0:4]),
		.out(mux_tree_size24_55_out));

	mux_tree_size24 mux_opt_0_I_18 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_56_sram[0:4]),
		.sram_inv(mux_tree_size24_56_sram_inv[0:4]),
		.out(mux_tree_size24_56_out));

	mux_tree_size24 mux_opt_0_I_19 (
		.in({dsp_I01[0:11], dsp_I31[0:11]}),
		.sram(mux_tree_size24_57_sram[0:4]),
		.sram_inv(mux_tree_size24_57_sram_inv[0:4]),
		.out(mux_tree_size24_57_out));

	mux_tree_size24 mux_opt_0_I_20 (
		.in({dsp_I01[0:11], dsp_I21[0:11]}),
		.sram(mux_tree_size24_58_sram[0:4]),
		.sram_inv(mux_tree_size24_58_sram_inv[0:4]),
		.out(mux_tree_size24_58_out));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_dsp_mode_default__clk_opt_0_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_0_ccff_tail),
		.mem_out(mux_tree_size24_0_sram[0:4]),
		.mem_outb(mux_tree_size24_0_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_1_ccff_tail),
		.mem_out(mux_tree_size24_1_sram[0:4]),
		.mem_outb(mux_tree_size24_1_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_2_ccff_tail),
		.mem_out(mux_tree_size24_2_sram[0:4]),
		.mem_outb(mux_tree_size24_2_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_3_ccff_tail),
		.mem_out(mux_tree_size24_3_sram[0:4]),
		.mem_outb(mux_tree_size24_3_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_4_ccff_tail),
		.mem_out(mux_tree_size24_4_sram[0:4]),
		.mem_outb(mux_tree_size24_4_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_5_ccff_tail),
		.mem_out(mux_tree_size24_5_sram[0:4]),
		.mem_outb(mux_tree_size24_5_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_6_ccff_tail),
		.mem_out(mux_tree_size24_6_sram[0:4]),
		.mem_outb(mux_tree_size24_6_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_7_ccff_tail),
		.mem_out(mux_tree_size24_7_sram[0:4]),
		.mem_outb(mux_tree_size24_7_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_8_ccff_tail),
		.mem_out(mux_tree_size24_8_sram[0:4]),
		.mem_outb(mux_tree_size24_8_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_9_ccff_tail),
		.mem_out(mux_tree_size24_9_sram[0:4]),
		.mem_outb(mux_tree_size24_9_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_10_ccff_tail),
		.mem_out(mux_tree_size24_10_sram[0:4]),
		.mem_outb(mux_tree_size24_10_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_11_ccff_tail),
		.mem_out(mux_tree_size24_11_sram[0:4]),
		.mem_outb(mux_tree_size24_11_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_12_ccff_tail),
		.mem_out(mux_tree_size24_12_sram[0:4]),
		.mem_outb(mux_tree_size24_12_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_13_ccff_tail),
		.mem_out(mux_tree_size24_13_sram[0:4]),
		.mem_outb(mux_tree_size24_13_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_14_ccff_tail),
		.mem_out(mux_tree_size24_14_sram[0:4]),
		.mem_outb(mux_tree_size24_14_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_15_ccff_tail),
		.mem_out(mux_tree_size24_15_sram[0:4]),
		.mem_outb(mux_tree_size24_15_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_16_ccff_tail),
		.mem_out(mux_tree_size24_16_sram[0:4]),
		.mem_outb(mux_tree_size24_16_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_16_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_17_ccff_tail),
		.mem_out(mux_tree_size24_17_sram[0:4]),
		.mem_outb(mux_tree_size24_17_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_18 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_17_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_18_ccff_tail),
		.mem_out(mux_tree_size24_18_sram[0:4]),
		.mem_outb(mux_tree_size24_18_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_a_i_19 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_18_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_19_ccff_tail),
		.mem_out(mux_tree_size24_19_sram[0:4]),
		.mem_outb(mux_tree_size24_19_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_19_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_20_ccff_tail),
		.mem_out(mux_tree_size24_20_sram[0:4]),
		.mem_outb(mux_tree_size24_20_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_20_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_21_ccff_tail),
		.mem_out(mux_tree_size24_21_sram[0:4]),
		.mem_outb(mux_tree_size24_21_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_21_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_22_ccff_tail),
		.mem_out(mux_tree_size24_22_sram[0:4]),
		.mem_outb(mux_tree_size24_22_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_22_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_23_ccff_tail),
		.mem_out(mux_tree_size24_23_sram[0:4]),
		.mem_outb(mux_tree_size24_23_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_23_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_24_ccff_tail),
		.mem_out(mux_tree_size24_24_sram[0:4]),
		.mem_outb(mux_tree_size24_24_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_24_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_25_ccff_tail),
		.mem_out(mux_tree_size24_25_sram[0:4]),
		.mem_outb(mux_tree_size24_25_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_25_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_26_ccff_tail),
		.mem_out(mux_tree_size24_26_sram[0:4]),
		.mem_outb(mux_tree_size24_26_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_26_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_27_ccff_tail),
		.mem_out(mux_tree_size24_27_sram[0:4]),
		.mem_outb(mux_tree_size24_27_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_27_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_28_ccff_tail),
		.mem_out(mux_tree_size24_28_sram[0:4]),
		.mem_outb(mux_tree_size24_28_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_28_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_29_ccff_tail),
		.mem_out(mux_tree_size24_29_sram[0:4]),
		.mem_outb(mux_tree_size24_29_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_29_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_30_ccff_tail),
		.mem_out(mux_tree_size24_30_sram[0:4]),
		.mem_outb(mux_tree_size24_30_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_30_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_31_ccff_tail),
		.mem_out(mux_tree_size24_31_sram[0:4]),
		.mem_outb(mux_tree_size24_31_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_31_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_32_ccff_tail),
		.mem_out(mux_tree_size24_32_sram[0:4]),
		.mem_outb(mux_tree_size24_32_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_32_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_33_ccff_tail),
		.mem_out(mux_tree_size24_33_sram[0:4]),
		.mem_outb(mux_tree_size24_33_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_33_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_34_ccff_tail),
		.mem_out(mux_tree_size24_34_sram[0:4]),
		.mem_outb(mux_tree_size24_34_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_34_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_35_ccff_tail),
		.mem_out(mux_tree_size24_35_sram[0:4]),
		.mem_outb(mux_tree_size24_35_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_35_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_36_ccff_tail),
		.mem_out(mux_tree_size24_36_sram[0:4]),
		.mem_outb(mux_tree_size24_36_sram_inv[0:4]));

	mux_tree_size24_mem mem_dsp_rtl_0_b_i_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_36_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_37_ccff_tail),
		.mem_out(mux_tree_size24_37_sram[0:4]),
		.mem_outb(mux_tree_size24_37_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_20_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_38_ccff_tail),
		.mem_out(mux_tree_size24_38_sram[0:4]),
		.mem_outb(mux_tree_size24_38_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_38_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_39_ccff_tail),
		.mem_out(mux_tree_size24_39_sram[0:4]),
		.mem_outb(mux_tree_size24_39_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_39_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_40_ccff_tail),
		.mem_out(mux_tree_size24_40_sram[0:4]),
		.mem_outb(mux_tree_size24_40_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_40_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_41_ccff_tail),
		.mem_out(mux_tree_size24_41_sram[0:4]),
		.mem_outb(mux_tree_size24_41_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_41_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_42_ccff_tail),
		.mem_out(mux_tree_size24_42_sram[0:4]),
		.mem_outb(mux_tree_size24_42_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_42_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_43_ccff_tail),
		.mem_out(mux_tree_size24_43_sram[0:4]),
		.mem_outb(mux_tree_size24_43_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_43_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_44_ccff_tail),
		.mem_out(mux_tree_size24_44_sram[0:4]),
		.mem_outb(mux_tree_size24_44_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_44_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_45_ccff_tail),
		.mem_out(mux_tree_size24_45_sram[0:4]),
		.mem_outb(mux_tree_size24_45_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_45_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_46_ccff_tail),
		.mem_out(mux_tree_size24_46_sram[0:4]),
		.mem_outb(mux_tree_size24_46_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_46_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_47_ccff_tail),
		.mem_out(mux_tree_size24_47_sram[0:4]),
		.mem_outb(mux_tree_size24_47_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_47_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_48_ccff_tail),
		.mem_out(mux_tree_size24_48_sram[0:4]),
		.mem_outb(mux_tree_size24_48_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_48_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_49_ccff_tail),
		.mem_out(mux_tree_size24_49_sram[0:4]),
		.mem_outb(mux_tree_size24_49_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_49_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_50_ccff_tail),
		.mem_out(mux_tree_size24_50_sram[0:4]),
		.mem_outb(mux_tree_size24_50_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_50_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_51_ccff_tail),
		.mem_out(mux_tree_size24_51_sram[0:4]),
		.mem_outb(mux_tree_size24_51_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_51_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_52_ccff_tail),
		.mem_out(mux_tree_size24_52_sram[0:4]),
		.mem_outb(mux_tree_size24_52_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_52_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_53_ccff_tail),
		.mem_out(mux_tree_size24_53_sram[0:4]),
		.mem_outb(mux_tree_size24_53_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_53_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_54_ccff_tail),
		.mem_out(mux_tree_size24_54_sram[0:4]),
		.mem_outb(mux_tree_size24_54_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_54_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_55_ccff_tail),
		.mem_out(mux_tree_size24_55_sram[0:4]),
		.mem_outb(mux_tree_size24_55_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_18 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_55_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_56_ccff_tail),
		.mem_out(mux_tree_size24_56_sram[0:4]),
		.mem_outb(mux_tree_size24_56_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_19 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_56_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_57_ccff_tail),
		.mem_out(mux_tree_size24_57_sram[0:4]),
		.mem_outb(mux_tree_size24_57_sram_inv[0:4]));

	mux_tree_size24_mem mem_opt_0_I_20 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_57_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_58_ccff_tail),
		.mem_out(mux_tree_size24_58_sram[0:4]),
		.mem_outb(mux_tree_size24_58_sram_inv[0:4]));

	mux_tree_size21 mux_dsp_rtl_0_feedback_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_0_sram[0:4]),
		.sram_inv(mux_tree_size21_0_sram_inv[0:4]),
		.out(mux_tree_size21_0_out));

	mux_tree_size21 mux_dsp_rtl_0_feedback_1 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_1_sram[0:4]),
		.sram_inv(mux_tree_size21_1_sram_inv[0:4]),
		.out(mux_tree_size21_1_out));

	mux_tree_size21 mux_dsp_rtl_0_feedback_2 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_2_sram[0:4]),
		.sram_inv(mux_tree_size21_2_sram_inv[0:4]),
		.out(mux_tree_size21_2_out));

	mux_tree_size21 mux_dsp_rtl_0_unsigned_a_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_3_sram[0:4]),
		.sram_inv(mux_tree_size21_3_sram_inv[0:4]),
		.out(mux_tree_size21_3_out));

	mux_tree_size21 mux_dsp_rtl_0_unsigned_b_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_4_sram[0:4]),
		.sram_inv(mux_tree_size21_4_sram_inv[0:4]),
		.out(mux_tree_size21_4_out));

	mux_tree_size21 mux_dsp_rtl_0_shift_right_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_5_sram[0:4]),
		.sram_inv(mux_tree_size21_5_sram_inv[0:4]),
		.out(mux_tree_size21_5_out));

	mux_tree_size21 mux_dsp_rtl_0_shift_right_1 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_6_sram[0:4]),
		.sram_inv(mux_tree_size21_6_sram_inv[0:4]),
		.out(mux_tree_size21_6_out));

	mux_tree_size21 mux_dsp_rtl_0_shift_right_2 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_7_sram[0:4]),
		.sram_inv(mux_tree_size21_7_sram_inv[0:4]),
		.out(mux_tree_size21_7_out));

	mux_tree_size21 mux_dsp_rtl_0_shift_right_3 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_8_sram[0:4]),
		.sram_inv(mux_tree_size21_8_sram_inv[0:4]),
		.out(mux_tree_size21_8_out));

	mux_tree_size21 mux_dsp_rtl_0_shift_right_4 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_9_sram[0:4]),
		.sram_inv(mux_tree_size21_9_sram_inv[0:4]),
		.out(mux_tree_size21_9_out));

	mux_tree_size21 mux_dsp_rtl_0_shift_right_5 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_10_sram[0:4]),
		.sram_inv(mux_tree_size21_10_sram_inv[0:4]),
		.out(mux_tree_size21_10_out));

	mux_tree_size21 mux_dsp_rtl_0_saturate_enable_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_11_sram[0:4]),
		.sram_inv(mux_tree_size21_11_sram_inv[0:4]),
		.out(mux_tree_size21_11_out));

	mux_tree_size21 mux_dsp_rtl_0_round_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_12_sram[0:4]),
		.sram_inv(mux_tree_size21_12_sram_inv[0:4]),
		.out(mux_tree_size21_12_out));

	mux_tree_size21 mux_dsp_rtl_0_subtract_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_13_sram[0:4]),
		.sram_inv(mux_tree_size21_13_sram_inv[0:4]),
		.out(mux_tree_size21_13_out));

	mux_tree_size21 mux_dsp_rtl_0_load_acc_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_14_sram[0:4]),
		.sram_inv(mux_tree_size21_14_sram_inv[0:4]),
		.out(mux_tree_size21_14_out));

	mux_tree_size21 mux_dsp_rtl_0_acc_fir_i_0 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_15_sram[0:4]),
		.sram_inv(mux_tree_size21_15_sram_inv[0:4]),
		.out(mux_tree_size21_15_out));

	mux_tree_size21 mux_dsp_rtl_0_acc_fir_i_1 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_16_sram[0:4]),
		.sram_inv(mux_tree_size21_16_sram_inv[0:4]),
		.out(mux_tree_size21_16_out));

	mux_tree_size21 mux_dsp_rtl_0_acc_fir_i_2 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_17_sram[0:4]),
		.sram_inv(mux_tree_size21_17_sram_inv[0:4]),
		.out(mux_tree_size21_17_out));

	mux_tree_size21 mux_dsp_rtl_0_acc_fir_i_3 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_18_sram[0:4]),
		.sram_inv(mux_tree_size21_18_sram_inv[0:4]),
		.out(mux_tree_size21_18_out));

	mux_tree_size21 mux_dsp_rtl_0_acc_fir_i_4 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_19_sram[0:4]),
		.sram_inv(mux_tree_size21_19_sram_inv[0:4]),
		.out(mux_tree_size21_19_out));

	mux_tree_size21 mux_dsp_rtl_0_acc_fir_i_5 (
		.in(logical_tile_dsp_mode_default__opt_0_opt_O[0:20]),
		.sram(mux_tree_size21_20_sram[0:4]),
		.sram_inv(mux_tree_size21_20_sram_inv[0:4]),
		.out(mux_tree_size21_20_out));

	mux_tree_size21_mem mem_dsp_rtl_0_feedback_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_37_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_0_ccff_tail),
		.mem_out(mux_tree_size21_0_sram[0:4]),
		.mem_outb(mux_tree_size21_0_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_feedback_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_1_ccff_tail),
		.mem_out(mux_tree_size21_1_sram[0:4]),
		.mem_outb(mux_tree_size21_1_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_feedback_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_2_ccff_tail),
		.mem_out(mux_tree_size21_2_sram[0:4]),
		.mem_outb(mux_tree_size21_2_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_unsigned_a_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_3_ccff_tail),
		.mem_out(mux_tree_size21_3_sram[0:4]),
		.mem_outb(mux_tree_size21_3_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_unsigned_b_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_4_ccff_tail),
		.mem_out(mux_tree_size21_4_sram[0:4]),
		.mem_outb(mux_tree_size21_4_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_shift_right_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_5_ccff_tail),
		.mem_out(mux_tree_size21_5_sram[0:4]),
		.mem_outb(mux_tree_size21_5_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_shift_right_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_6_ccff_tail),
		.mem_out(mux_tree_size21_6_sram[0:4]),
		.mem_outb(mux_tree_size21_6_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_shift_right_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_7_ccff_tail),
		.mem_out(mux_tree_size21_7_sram[0:4]),
		.mem_outb(mux_tree_size21_7_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_shift_right_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_8_ccff_tail),
		.mem_out(mux_tree_size21_8_sram[0:4]),
		.mem_outb(mux_tree_size21_8_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_shift_right_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_9_ccff_tail),
		.mem_out(mux_tree_size21_9_sram[0:4]),
		.mem_outb(mux_tree_size21_9_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_shift_right_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_10_ccff_tail),
		.mem_out(mux_tree_size21_10_sram[0:4]),
		.mem_outb(mux_tree_size21_10_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_saturate_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_11_ccff_tail),
		.mem_out(mux_tree_size21_11_sram[0:4]),
		.mem_outb(mux_tree_size21_11_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_round_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_12_ccff_tail),
		.mem_out(mux_tree_size21_12_sram[0:4]),
		.mem_outb(mux_tree_size21_12_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_subtract_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_13_ccff_tail),
		.mem_out(mux_tree_size21_13_sram[0:4]),
		.mem_outb(mux_tree_size21_13_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_load_acc_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_14_ccff_tail),
		.mem_out(mux_tree_size21_14_sram[0:4]),
		.mem_outb(mux_tree_size21_14_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_acc_fir_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_15_ccff_tail),
		.mem_out(mux_tree_size21_15_sram[0:4]),
		.mem_outb(mux_tree_size21_15_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_acc_fir_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_16_ccff_tail),
		.mem_out(mux_tree_size21_16_sram[0:4]),
		.mem_outb(mux_tree_size21_16_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_acc_fir_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_16_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_17_ccff_tail),
		.mem_out(mux_tree_size21_17_sram[0:4]),
		.mem_outb(mux_tree_size21_17_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_acc_fir_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_17_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_18_ccff_tail),
		.mem_out(mux_tree_size21_18_sram[0:4]),
		.mem_outb(mux_tree_size21_18_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_acc_fir_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_18_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_19_ccff_tail),
		.mem_out(mux_tree_size21_19_sram[0:4]),
		.mem_outb(mux_tree_size21_19_sram_inv[0:4]));

	mux_tree_size21_mem mem_dsp_rtl_0_acc_fir_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size21_mem_19_ccff_tail),
		.ccff_tail(mux_tree_size21_mem_20_ccff_tail),
		.mem_out(mux_tree_size21_20_sram[0:4]),
		.mem_outb(mux_tree_size21_20_sram_inv[0:4]));

	mux_tree_size6 mux_sr_opt_0_I_0 (
		.in(dsp_IS0[0:5]),
		.sram(mux_tree_size6_0_sram[0:2]),
		.sram_inv(mux_tree_size6_0_sram_inv[0:2]),
		.out(mux_tree_size6_0_out));

	mux_tree_size6_mem mem_sr_opt_0_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_58_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_0_ccff_tail),
		.mem_out(mux_tree_size6_0_sram[0:2]),
		.mem_outb(mux_tree_size6_0_sram_inv[0:2]));

	mux_tree_clock_size16 mux_clk_opt_0_I_0 (
		.in(dsp_clk[0:15]),
		.sram(mux_tree_clock_size16_0_sram[0:3]),
		.sram_inv(mux_tree_clock_size16_0_sram_inv[0:3]),
		.out(mux_tree_clock_size16_0_out));

	mux_tree_clock_size16_mem mem_clk_opt_0_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_0_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_clock_size16_0_sram[0:3]),
		.mem_outb(mux_tree_clock_size16_0_sram_inv[0:3]));

endmodule
// ----- END Verilog module for logical_tile_dsp_mode_dsp_ -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: dsp -----
