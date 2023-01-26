//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: comb_block
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: comb_block -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block(config_enable,
                                                                           prog_clock,
                                                                           comb_block_II,
                                                                           comb_block_cin,
                                                                           comb_block_cascdn_i,
                                                                           comb_block_cascup_i,
                                                                           ccff_head,
                                                                           comb_block_out0,
                                                                           comb_block_o6,
                                                                           comb_block_out1,
                                                                           comb_block_cout,
                                                                           comb_block_cascdn_o,
                                                                           comb_block_cascup_o,
                                                                           ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:47] comb_block_II;
//----- INPUT PORTS -----
input [0:0] comb_block_cin;
//----- INPUT PORTS -----
input [0:0] comb_block_cascdn_i;
//----- INPUT PORTS -----
input [0:0] comb_block_cascup_i;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:7] comb_block_out0;
//----- OUTPUT PORTS -----
output [0:7] comb_block_o6;
//----- OUTPUT PORTS -----
output [0:7] comb_block_out1;
//----- OUTPUT PORTS -----
output [0:0] comb_block_cout;
//----- OUTPUT PORTS -----
output [0:0] comb_block_cascdn_o;
//----- OUTPUT PORTS -----
output [0:0] comb_block_cascup_o;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6;
wire [0:1] mux_tree_size3_0_sram;
wire [0:1] mux_tree_size3_0_sram_inv;
wire [0:1] mux_tree_size3_10_sram;
wire [0:1] mux_tree_size3_10_sram_inv;
wire [0:1] mux_tree_size3_11_sram;
wire [0:1] mux_tree_size3_11_sram_inv;
wire [0:1] mux_tree_size3_12_sram;
wire [0:1] mux_tree_size3_12_sram_inv;
wire [0:1] mux_tree_size3_13_sram;
wire [0:1] mux_tree_size3_13_sram_inv;
wire [0:1] mux_tree_size3_14_sram;
wire [0:1] mux_tree_size3_14_sram_inv;
wire [0:1] mux_tree_size3_15_sram;
wire [0:1] mux_tree_size3_15_sram_inv;
wire [0:1] mux_tree_size3_1_sram;
wire [0:1] mux_tree_size3_1_sram_inv;
wire [0:1] mux_tree_size3_2_sram;
wire [0:1] mux_tree_size3_2_sram_inv;
wire [0:1] mux_tree_size3_3_sram;
wire [0:1] mux_tree_size3_3_sram_inv;
wire [0:1] mux_tree_size3_4_sram;
wire [0:1] mux_tree_size3_4_sram_inv;
wire [0:1] mux_tree_size3_5_sram;
wire [0:1] mux_tree_size3_5_sram_inv;
wire [0:1] mux_tree_size3_6_sram;
wire [0:1] mux_tree_size3_6_sram_inv;
wire [0:1] mux_tree_size3_7_sram;
wire [0:1] mux_tree_size3_7_sram_inv;
wire [0:1] mux_tree_size3_8_sram;
wire [0:1] mux_tree_size3_8_sram_inv;
wire [0:1] mux_tree_size3_9_sram;
wire [0:1] mux_tree_size3_9_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.lut_block_II({direct_interc_11_out, direct_interc_12_out, direct_interc_13_out, direct_interc_14_out, direct_interc_15_out, direct_interc_16_out, direct_interc_17_out, direct_interc_18_out, direct_interc_19_out, direct_interc_20_out, direct_interc_21_out, direct_interc_22_out, direct_interc_23_out, direct_interc_24_out, direct_interc_25_out, direct_interc_26_out, direct_interc_27_out, direct_interc_28_out, direct_interc_29_out, direct_interc_30_out, direct_interc_31_out, direct_interc_32_out, direct_interc_33_out, direct_interc_34_out, direct_interc_35_out, direct_interc_36_out, direct_interc_37_out, direct_interc_38_out, direct_interc_39_out, direct_interc_40_out, direct_interc_41_out, direct_interc_42_out, direct_interc_43_out, direct_interc_44_out, direct_interc_45_out, direct_interc_46_out, direct_interc_47_out, direct_interc_48_out, direct_interc_49_out, direct_interc_50_out, direct_interc_51_out, direct_interc_52_out, direct_interc_53_out, direct_interc_54_out, direct_interc_55_out, direct_interc_56_out, direct_interc_57_out, direct_interc_58_out}),
		.lut_block_cascdn_i(direct_interc_59_out),
		.lut_block_cascup_i(direct_interc_60_out),
		.ccff_head(ccff_head),
		.lut_block_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[0:7]),
		.lut_block_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[0:7]),
		.lut_block_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[0:7]),
		.lut_block_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[0:7]),
		.lut_block_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[0:7]),
		.lut_block_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[0:7]),
		.lut_block_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[0:7]),
		.lut_block_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_cascdn_o),
		.lut_block_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_block_p_up({direct_interc_61_out, direct_interc_62_out, direct_interc_63_out, direct_interc_64_out, direct_interc_65_out, direct_interc_66_out, direct_interc_67_out, direct_interc_68_out}),
		.fa_2bit_block_g_up({direct_interc_69_out, direct_interc_70_out, direct_interc_71_out, direct_interc_72_out, direct_interc_73_out, direct_interc_74_out, direct_interc_75_out, direct_interc_76_out}),
		.fa_2bit_block_p_dn({direct_interc_77_out, direct_interc_78_out, direct_interc_79_out, direct_interc_80_out, direct_interc_81_out, direct_interc_82_out, direct_interc_83_out, direct_interc_84_out}),
		.fa_2bit_block_g_dn({direct_interc_85_out, direct_interc_86_out, direct_interc_87_out, direct_interc_88_out, direct_interc_89_out, direct_interc_90_out, direct_interc_91_out, direct_interc_92_out}),
		.fa_2bit_block_cin(direct_interc_93_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_ccff_tail),
		.fa_2bit_block_sum_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[0:7]),
		.fa_2bit_block_sum_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[0:7]),
		.fa_2bit_block_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_ccff_tail));

	mux_tree_size3 mux_comb_block_out0_0 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[0], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[0], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[0]}),
		.sram(mux_tree_size3_0_sram[0:1]),
		.sram_inv(mux_tree_size3_0_sram_inv[0:1]),
		.out(comb_block_out0[0]));

	mux_tree_size3 mux_comb_block_out0_1 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[1], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[1], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[1]}),
		.sram(mux_tree_size3_1_sram[0:1]),
		.sram_inv(mux_tree_size3_1_sram_inv[0:1]),
		.out(comb_block_out0[1]));

	mux_tree_size3 mux_comb_block_out0_2 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[2], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[2], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[2]}),
		.sram(mux_tree_size3_2_sram[0:1]),
		.sram_inv(mux_tree_size3_2_sram_inv[0:1]),
		.out(comb_block_out0[2]));

	mux_tree_size3 mux_comb_block_out0_3 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[3], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[3], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[3]}),
		.sram(mux_tree_size3_3_sram[0:1]),
		.sram_inv(mux_tree_size3_3_sram_inv[0:1]),
		.out(comb_block_out0[3]));

	mux_tree_size3 mux_comb_block_out0_4 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[4], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[4], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[4]}),
		.sram(mux_tree_size3_4_sram[0:1]),
		.sram_inv(mux_tree_size3_4_sram_inv[0:1]),
		.out(comb_block_out0[4]));

	mux_tree_size3 mux_comb_block_out0_5 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[5], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[5], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[5]}),
		.sram(mux_tree_size3_5_sram[0:1]),
		.sram_inv(mux_tree_size3_5_sram_inv[0:1]),
		.out(comb_block_out0[5]));

	mux_tree_size3 mux_comb_block_out0_6 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[6], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[6], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[6]}),
		.sram(mux_tree_size3_6_sram[0:1]),
		.sram_inv(mux_tree_size3_6_sram_inv[0:1]),
		.out(comb_block_out0[6]));

	mux_tree_size3 mux_comb_block_out0_7 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_up[7], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[7], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_up[7]}),
		.sram(mux_tree_size3_7_sram[0:1]),
		.sram_inv(mux_tree_size3_7_sram_inv[0:1]),
		.out(comb_block_out0[7]));

	mux_tree_size3 mux_comb_block_out1_0 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[0], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[0], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[0]}),
		.sram(mux_tree_size3_8_sram[0:1]),
		.sram_inv(mux_tree_size3_8_sram_inv[0:1]),
		.out(comb_block_out1[0]));

	mux_tree_size3 mux_comb_block_out1_1 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[1], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[1], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[1]}),
		.sram(mux_tree_size3_9_sram[0:1]),
		.sram_inv(mux_tree_size3_9_sram_inv[0:1]),
		.out(comb_block_out1[1]));

	mux_tree_size3 mux_comb_block_out1_2 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[2], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[2], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[2]}),
		.sram(mux_tree_size3_10_sram[0:1]),
		.sram_inv(mux_tree_size3_10_sram_inv[0:1]),
		.out(comb_block_out1[2]));

	mux_tree_size3 mux_comb_block_out1_3 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[3], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[3], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[3]}),
		.sram(mux_tree_size3_11_sram[0:1]),
		.sram_inv(mux_tree_size3_11_sram_inv[0:1]),
		.out(comb_block_out1[3]));

	mux_tree_size3 mux_comb_block_out1_4 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[4], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[4], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[4]}),
		.sram(mux_tree_size3_12_sram[0:1]),
		.sram_inv(mux_tree_size3_12_sram_inv[0:1]),
		.out(comb_block_out1[4]));

	mux_tree_size3 mux_comb_block_out1_5 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[5], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[5], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[5]}),
		.sram(mux_tree_size3_13_sram[0:1]),
		.sram_inv(mux_tree_size3_13_sram_inv[0:1]),
		.out(comb_block_out1[5]));

	mux_tree_size3 mux_comb_block_out1_6 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[6], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[6], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[6]}),
		.sram(mux_tree_size3_14_sram[0:1]),
		.sram_inv(mux_tree_size3_14_sram_inv[0:1]),
		.out(comb_block_out1[6]));

	mux_tree_size3 mux_comb_block_out1_7 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o5_dn[7], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[7], logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_sum_dn[7]}),
		.sram(mux_tree_size3_15_sram[0:1]),
		.sram_inv(mux_tree_size3_15_sram_inv[0:1]),
		.out(comb_block_out1[7]));

	mux_tree_size3_mem mem_comb_block_out0_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_0_ccff_tail),
		.mem_out(mux_tree_size3_0_sram[0:1]),
		.mem_outb(mux_tree_size3_0_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out0_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_1_ccff_tail),
		.mem_out(mux_tree_size3_1_sram[0:1]),
		.mem_outb(mux_tree_size3_1_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out0_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_2_ccff_tail),
		.mem_out(mux_tree_size3_2_sram[0:1]),
		.mem_outb(mux_tree_size3_2_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out0_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_3_ccff_tail),
		.mem_out(mux_tree_size3_3_sram[0:1]),
		.mem_outb(mux_tree_size3_3_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out0_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_4_ccff_tail),
		.mem_out(mux_tree_size3_4_sram[0:1]),
		.mem_outb(mux_tree_size3_4_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out0_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_5_ccff_tail),
		.mem_out(mux_tree_size3_5_sram[0:1]),
		.mem_outb(mux_tree_size3_5_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out0_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_6_ccff_tail),
		.mem_out(mux_tree_size3_6_sram[0:1]),
		.mem_outb(mux_tree_size3_6_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out0_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_7_ccff_tail),
		.mem_out(mux_tree_size3_7_sram[0:1]),
		.mem_outb(mux_tree_size3_7_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out1_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_8_ccff_tail),
		.mem_out(mux_tree_size3_8_sram[0:1]),
		.mem_outb(mux_tree_size3_8_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out1_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_9_ccff_tail),
		.mem_out(mux_tree_size3_9_sram[0:1]),
		.mem_outb(mux_tree_size3_9_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out1_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_10_ccff_tail),
		.mem_out(mux_tree_size3_10_sram[0:1]),
		.mem_outb(mux_tree_size3_10_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out1_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_11_ccff_tail),
		.mem_out(mux_tree_size3_11_sram[0:1]),
		.mem_outb(mux_tree_size3_11_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out1_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_12_ccff_tail),
		.mem_out(mux_tree_size3_12_sram[0:1]),
		.mem_outb(mux_tree_size3_12_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out1_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_13_ccff_tail),
		.mem_out(mux_tree_size3_13_sram[0:1]),
		.mem_outb(mux_tree_size3_13_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out1_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_14_ccff_tail),
		.mem_out(mux_tree_size3_14_sram[0:1]),
		.mem_outb(mux_tree_size3_14_sram_inv[0:1]));

	mux_tree_size3_mem mem_comb_block_out1_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_14_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size3_15_sram[0:1]),
		.mem_outb(mux_tree_size3_15_sram_inv[0:1]));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[0]),
		.out(comb_block_o6[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[1]),
		.out(comb_block_o6[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[2]),
		.out(comb_block_o6[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[3]),
		.out(comb_block_o6[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[4]),
		.out(comb_block_o6[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[5]),
		.out(comb_block_o6[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[6]),
		.out(comb_block_o6[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o6[7]),
		.out(comb_block_o6[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_0_fa_2bit_block_cout),
		.out(comb_block_cout));

	direct_interc direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_cascdn_o),
		.out(comb_block_cascdn_o));

	direct_interc direct_interc_10_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_cascup_o),
		.out(comb_block_cascup_o));

	direct_interc direct_interc_11_ (
		.in(comb_block_II[0]),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(comb_block_II[1]),
		.out(direct_interc_12_out));

	direct_interc direct_interc_13_ (
		.in(comb_block_II[2]),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(comb_block_II[3]),
		.out(direct_interc_14_out));

	direct_interc direct_interc_15_ (
		.in(comb_block_II[4]),
		.out(direct_interc_15_out));

	direct_interc direct_interc_16_ (
		.in(comb_block_II[5]),
		.out(direct_interc_16_out));

	direct_interc direct_interc_17_ (
		.in(comb_block_II[6]),
		.out(direct_interc_17_out));

	direct_interc direct_interc_18_ (
		.in(comb_block_II[7]),
		.out(direct_interc_18_out));

	direct_interc direct_interc_19_ (
		.in(comb_block_II[8]),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(comb_block_II[9]),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(comb_block_II[10]),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(comb_block_II[11]),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(comb_block_II[12]),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(comb_block_II[13]),
		.out(direct_interc_24_out));

	direct_interc direct_interc_25_ (
		.in(comb_block_II[14]),
		.out(direct_interc_25_out));

	direct_interc direct_interc_26_ (
		.in(comb_block_II[15]),
		.out(direct_interc_26_out));

	direct_interc direct_interc_27_ (
		.in(comb_block_II[16]),
		.out(direct_interc_27_out));

	direct_interc direct_interc_28_ (
		.in(comb_block_II[17]),
		.out(direct_interc_28_out));

	direct_interc direct_interc_29_ (
		.in(comb_block_II[18]),
		.out(direct_interc_29_out));

	direct_interc direct_interc_30_ (
		.in(comb_block_II[19]),
		.out(direct_interc_30_out));

	direct_interc direct_interc_31_ (
		.in(comb_block_II[20]),
		.out(direct_interc_31_out));

	direct_interc direct_interc_32_ (
		.in(comb_block_II[21]),
		.out(direct_interc_32_out));

	direct_interc direct_interc_33_ (
		.in(comb_block_II[22]),
		.out(direct_interc_33_out));

	direct_interc direct_interc_34_ (
		.in(comb_block_II[23]),
		.out(direct_interc_34_out));

	direct_interc direct_interc_35_ (
		.in(comb_block_II[24]),
		.out(direct_interc_35_out));

	direct_interc direct_interc_36_ (
		.in(comb_block_II[25]),
		.out(direct_interc_36_out));

	direct_interc direct_interc_37_ (
		.in(comb_block_II[26]),
		.out(direct_interc_37_out));

	direct_interc direct_interc_38_ (
		.in(comb_block_II[27]),
		.out(direct_interc_38_out));

	direct_interc direct_interc_39_ (
		.in(comb_block_II[28]),
		.out(direct_interc_39_out));

	direct_interc direct_interc_40_ (
		.in(comb_block_II[29]),
		.out(direct_interc_40_out));

	direct_interc direct_interc_41_ (
		.in(comb_block_II[30]),
		.out(direct_interc_41_out));

	direct_interc direct_interc_42_ (
		.in(comb_block_II[31]),
		.out(direct_interc_42_out));

	direct_interc direct_interc_43_ (
		.in(comb_block_II[32]),
		.out(direct_interc_43_out));

	direct_interc direct_interc_44_ (
		.in(comb_block_II[33]),
		.out(direct_interc_44_out));

	direct_interc direct_interc_45_ (
		.in(comb_block_II[34]),
		.out(direct_interc_45_out));

	direct_interc direct_interc_46_ (
		.in(comb_block_II[35]),
		.out(direct_interc_46_out));

	direct_interc direct_interc_47_ (
		.in(comb_block_II[36]),
		.out(direct_interc_47_out));

	direct_interc direct_interc_48_ (
		.in(comb_block_II[37]),
		.out(direct_interc_48_out));

	direct_interc direct_interc_49_ (
		.in(comb_block_II[38]),
		.out(direct_interc_49_out));

	direct_interc direct_interc_50_ (
		.in(comb_block_II[39]),
		.out(direct_interc_50_out));

	direct_interc direct_interc_51_ (
		.in(comb_block_II[40]),
		.out(direct_interc_51_out));

	direct_interc direct_interc_52_ (
		.in(comb_block_II[41]),
		.out(direct_interc_52_out));

	direct_interc direct_interc_53_ (
		.in(comb_block_II[42]),
		.out(direct_interc_53_out));

	direct_interc direct_interc_54_ (
		.in(comb_block_II[43]),
		.out(direct_interc_54_out));

	direct_interc direct_interc_55_ (
		.in(comb_block_II[44]),
		.out(direct_interc_55_out));

	direct_interc direct_interc_56_ (
		.in(comb_block_II[45]),
		.out(direct_interc_56_out));

	direct_interc direct_interc_57_ (
		.in(comb_block_II[46]),
		.out(direct_interc_57_out));

	direct_interc direct_interc_58_ (
		.in(comb_block_II[47]),
		.out(direct_interc_58_out));

	direct_interc direct_interc_59_ (
		.in(comb_block_cascdn_i),
		.out(direct_interc_59_out));

	direct_interc direct_interc_60_ (
		.in(comb_block_cascup_i),
		.out(direct_interc_60_out));

	direct_interc direct_interc_61_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[0]),
		.out(direct_interc_61_out));

	direct_interc direct_interc_62_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[1]),
		.out(direct_interc_62_out));

	direct_interc direct_interc_63_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[2]),
		.out(direct_interc_63_out));

	direct_interc direct_interc_64_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[3]),
		.out(direct_interc_64_out));

	direct_interc direct_interc_65_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[4]),
		.out(direct_interc_65_out));

	direct_interc direct_interc_66_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[5]),
		.out(direct_interc_66_out));

	direct_interc direct_interc_67_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[6]),
		.out(direct_interc_67_out));

	direct_interc direct_interc_68_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_1[7]),
		.out(direct_interc_68_out));

	direct_interc direct_interc_69_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[0]),
		.out(direct_interc_69_out));

	direct_interc direct_interc_70_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[1]),
		.out(direct_interc_70_out));

	direct_interc direct_interc_71_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[2]),
		.out(direct_interc_71_out));

	direct_interc direct_interc_72_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[3]),
		.out(direct_interc_72_out));

	direct_interc direct_interc_73_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[4]),
		.out(direct_interc_73_out));

	direct_interc direct_interc_74_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[5]),
		.out(direct_interc_74_out));

	direct_interc direct_interc_75_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[6]),
		.out(direct_interc_75_out));

	direct_interc direct_interc_76_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_up_2[7]),
		.out(direct_interc_76_out));

	direct_interc direct_interc_77_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[0]),
		.out(direct_interc_77_out));

	direct_interc direct_interc_78_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[1]),
		.out(direct_interc_78_out));

	direct_interc direct_interc_79_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[2]),
		.out(direct_interc_79_out));

	direct_interc direct_interc_80_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[3]),
		.out(direct_interc_80_out));

	direct_interc direct_interc_81_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[4]),
		.out(direct_interc_81_out));

	direct_interc direct_interc_82_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[5]),
		.out(direct_interc_82_out));

	direct_interc direct_interc_83_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[6]),
		.out(direct_interc_83_out));

	direct_interc direct_interc_84_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_1[7]),
		.out(direct_interc_84_out));

	direct_interc direct_interc_85_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[0]),
		.out(direct_interc_85_out));

	direct_interc direct_interc_86_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[1]),
		.out(direct_interc_86_out));

	direct_interc direct_interc_87_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[2]),
		.out(direct_interc_87_out));

	direct_interc direct_interc_88_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[3]),
		.out(direct_interc_88_out));

	direct_interc direct_interc_89_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[4]),
		.out(direct_interc_89_out));

	direct_interc direct_interc_90_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[5]),
		.out(direct_interc_90_out));

	direct_interc direct_interc_91_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[6]),
		.out(direct_interc_91_out));

	direct_interc direct_interc_92_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_0_lut_block_o4_dn_2[7]),
		.out(direct_interc_92_out));

	direct_interc direct_interc_93_ (
		.in(comb_block_cin),
		.out(direct_interc_93_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: comb_block -----
