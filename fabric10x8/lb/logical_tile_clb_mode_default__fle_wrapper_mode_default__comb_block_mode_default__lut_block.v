//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: lut_block
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: lut_block -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block(config_enable,
                                                                                                   prog_clock,
                                                                                                   lut_block_II,
                                                                                                   lut_block_cascdn_i,
                                                                                                   lut_block_cascup_i,
                                                                                                   ccff_head,
                                                                                                   lut_block_o4_up_1,
                                                                                                   lut_block_o4_up_2,
                                                                                                   lut_block_o4_dn_1,
                                                                                                   lut_block_o4_dn_2,
                                                                                                   lut_block_o5_up,
                                                                                                   lut_block_o5_dn,
                                                                                                   lut_block_o6,
                                                                                                   lut_block_cascdn_o,
                                                                                                   lut_block_cascup_o,
                                                                                                   ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:47] lut_block_II;
//----- INPUT PORTS -----
input [0:0] lut_block_cascdn_i;
//----- INPUT PORTS -----
input [0:0] lut_block_cascup_i;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:7] lut_block_o4_up_1;
//----- OUTPUT PORTS -----
output [0:7] lut_block_o4_up_2;
//----- OUTPUT PORTS -----
output [0:7] lut_block_o4_dn_1;
//----- OUTPUT PORTS -----
output [0:7] lut_block_o4_dn_2;
//----- OUTPUT PORTS -----
output [0:7] lut_block_o5_up;
//----- OUTPUT PORTS -----
output [0:7] lut_block_o5_dn;
//----- OUTPUT PORTS -----
output [0:7] lut_block_o6;
//----- OUTPUT PORTS -----
output [0:0] lut_block_cascdn_o;
//----- OUTPUT PORTS -----
output [0:0] lut_block_cascup_o;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut_II({direct_interc_58_out, direct_interc_59_out, direct_interc_60_out, direct_interc_61_out, direct_interc_62_out, direct_interc_63_out}),
		.frac_lut_cascdn_i(direct_interc_64_out),
		.frac_lut_cascup_i(direct_interc_65_out),
		.ccff_head(ccff_head),
		.frac_lut_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o4_up_1),
		.frac_lut_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o4_up_2),
		.frac_lut_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o4_dn_1),
		.frac_lut_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o4_dn_2),
		.frac_lut_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o5_up),
		.frac_lut_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o5_dn),
		.frac_lut_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o6),
		.frac_lut_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_cascdn_o),
		.frac_lut_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut_II({direct_interc_66_out, direct_interc_67_out, direct_interc_68_out, direct_interc_69_out, direct_interc_70_out, direct_interc_71_out}),
		.frac_lut_cascdn_i(direct_interc_72_out),
		.frac_lut_cascup_i(direct_interc_73_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_ccff_tail),
		.frac_lut_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o4_up_1),
		.frac_lut_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o4_up_2),
		.frac_lut_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o4_dn_1),
		.frac_lut_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o4_dn_2),
		.frac_lut_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o5_up),
		.frac_lut_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o5_dn),
		.frac_lut_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o6),
		.frac_lut_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_cascdn_o),
		.frac_lut_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut_II({direct_interc_74_out, direct_interc_75_out, direct_interc_76_out, direct_interc_77_out, direct_interc_78_out, direct_interc_79_out}),
		.frac_lut_cascdn_i(direct_interc_80_out),
		.frac_lut_cascup_i(direct_interc_81_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_ccff_tail),
		.frac_lut_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o4_up_1),
		.frac_lut_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o4_up_2),
		.frac_lut_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o4_dn_1),
		.frac_lut_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o4_dn_2),
		.frac_lut_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o5_up),
		.frac_lut_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o5_dn),
		.frac_lut_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o6),
		.frac_lut_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_cascdn_o),
		.frac_lut_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut_II({direct_interc_82_out, direct_interc_83_out, direct_interc_84_out, direct_interc_85_out, direct_interc_86_out, direct_interc_87_out}),
		.frac_lut_cascdn_i(direct_interc_88_out),
		.frac_lut_cascup_i(direct_interc_89_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_ccff_tail),
		.frac_lut_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o4_up_1),
		.frac_lut_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o4_up_2),
		.frac_lut_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o4_dn_1),
		.frac_lut_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o4_dn_2),
		.frac_lut_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o5_up),
		.frac_lut_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o5_dn),
		.frac_lut_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o6),
		.frac_lut_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_cascdn_o),
		.frac_lut_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut_II({direct_interc_90_out, direct_interc_91_out, direct_interc_92_out, direct_interc_93_out, direct_interc_94_out, direct_interc_95_out}),
		.frac_lut_cascdn_i(direct_interc_96_out),
		.frac_lut_cascup_i(direct_interc_97_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_ccff_tail),
		.frac_lut_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o4_up_1),
		.frac_lut_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o4_up_2),
		.frac_lut_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o4_dn_1),
		.frac_lut_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o4_dn_2),
		.frac_lut_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o5_up),
		.frac_lut_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o5_dn),
		.frac_lut_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o6),
		.frac_lut_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_cascdn_o),
		.frac_lut_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut_II({direct_interc_98_out, direct_interc_99_out, direct_interc_100_out, direct_interc_101_out, direct_interc_102_out, direct_interc_103_out}),
		.frac_lut_cascdn_i(direct_interc_104_out),
		.frac_lut_cascup_i(direct_interc_105_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_ccff_tail),
		.frac_lut_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o4_up_1),
		.frac_lut_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o4_up_2),
		.frac_lut_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o4_dn_1),
		.frac_lut_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o4_dn_2),
		.frac_lut_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o5_up),
		.frac_lut_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o5_dn),
		.frac_lut_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o6),
		.frac_lut_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_cascdn_o),
		.frac_lut_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut_II({direct_interc_106_out, direct_interc_107_out, direct_interc_108_out, direct_interc_109_out, direct_interc_110_out, direct_interc_111_out}),
		.frac_lut_cascdn_i(direct_interc_112_out),
		.frac_lut_cascup_i(direct_interc_113_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_ccff_tail),
		.frac_lut_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o4_up_1),
		.frac_lut_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o4_up_2),
		.frac_lut_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o4_dn_1),
		.frac_lut_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o4_dn_2),
		.frac_lut_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o5_up),
		.frac_lut_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o5_dn),
		.frac_lut_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o6),
		.frac_lut_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_cascdn_o),
		.frac_lut_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut_II({direct_interc_114_out, direct_interc_115_out, direct_interc_116_out, direct_interc_117_out, direct_interc_118_out, direct_interc_119_out}),
		.frac_lut_cascdn_i(direct_interc_120_out),
		.frac_lut_cascup_i(direct_interc_121_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_ccff_tail),
		.frac_lut_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o4_up_1),
		.frac_lut_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o4_up_2),
		.frac_lut_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o4_dn_1),
		.frac_lut_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o4_dn_2),
		.frac_lut_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o5_up),
		.frac_lut_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o5_dn),
		.frac_lut_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o6),
		.frac_lut_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_cascdn_o),
		.frac_lut_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_cascup_o),
		.ccff_tail(ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o4_up_1),
		.out(lut_block_o4_up_1[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o4_up_1),
		.out(lut_block_o4_up_1[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o4_up_1),
		.out(lut_block_o4_up_1[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o4_up_1),
		.out(lut_block_o4_up_1[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o4_up_1),
		.out(lut_block_o4_up_1[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o4_up_1),
		.out(lut_block_o4_up_1[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o4_up_1),
		.out(lut_block_o4_up_1[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o4_up_1),
		.out(lut_block_o4_up_1[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o4_up_2),
		.out(lut_block_o4_up_2[0]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o4_up_2),
		.out(lut_block_o4_up_2[1]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o4_up_2),
		.out(lut_block_o4_up_2[2]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o4_up_2),
		.out(lut_block_o4_up_2[3]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o4_up_2),
		.out(lut_block_o4_up_2[4]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o4_up_2),
		.out(lut_block_o4_up_2[5]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o4_up_2),
		.out(lut_block_o4_up_2[6]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o4_up_2),
		.out(lut_block_o4_up_2[7]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o4_dn_1),
		.out(lut_block_o4_dn_1[0]));

	direct_interc direct_interc_17_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o4_dn_1),
		.out(lut_block_o4_dn_1[1]));

	direct_interc direct_interc_18_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o4_dn_1),
		.out(lut_block_o4_dn_1[2]));

	direct_interc direct_interc_19_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o4_dn_1),
		.out(lut_block_o4_dn_1[3]));

	direct_interc direct_interc_20_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o4_dn_1),
		.out(lut_block_o4_dn_1[4]));

	direct_interc direct_interc_21_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o4_dn_1),
		.out(lut_block_o4_dn_1[5]));

	direct_interc direct_interc_22_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o4_dn_1),
		.out(lut_block_o4_dn_1[6]));

	direct_interc direct_interc_23_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o4_dn_1),
		.out(lut_block_o4_dn_1[7]));

	direct_interc direct_interc_24_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o4_dn_2),
		.out(lut_block_o4_dn_2[0]));

	direct_interc direct_interc_25_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o4_dn_2),
		.out(lut_block_o4_dn_2[1]));

	direct_interc direct_interc_26_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o4_dn_2),
		.out(lut_block_o4_dn_2[2]));

	direct_interc direct_interc_27_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o4_dn_2),
		.out(lut_block_o4_dn_2[3]));

	direct_interc direct_interc_28_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o4_dn_2),
		.out(lut_block_o4_dn_2[4]));

	direct_interc direct_interc_29_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o4_dn_2),
		.out(lut_block_o4_dn_2[5]));

	direct_interc direct_interc_30_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o4_dn_2),
		.out(lut_block_o4_dn_2[6]));

	direct_interc direct_interc_31_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o4_dn_2),
		.out(lut_block_o4_dn_2[7]));

	direct_interc direct_interc_32_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o5_up),
		.out(lut_block_o5_up[0]));

	direct_interc direct_interc_33_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o5_up),
		.out(lut_block_o5_up[1]));

	direct_interc direct_interc_34_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o5_up),
		.out(lut_block_o5_up[2]));

	direct_interc direct_interc_35_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o5_up),
		.out(lut_block_o5_up[3]));

	direct_interc direct_interc_36_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o5_up),
		.out(lut_block_o5_up[4]));

	direct_interc direct_interc_37_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o5_up),
		.out(lut_block_o5_up[5]));

	direct_interc direct_interc_38_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o5_up),
		.out(lut_block_o5_up[6]));

	direct_interc direct_interc_39_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o5_up),
		.out(lut_block_o5_up[7]));

	direct_interc direct_interc_40_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o5_dn),
		.out(lut_block_o5_dn[0]));

	direct_interc direct_interc_41_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o5_dn),
		.out(lut_block_o5_dn[1]));

	direct_interc direct_interc_42_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o5_dn),
		.out(lut_block_o5_dn[2]));

	direct_interc direct_interc_43_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o5_dn),
		.out(lut_block_o5_dn[3]));

	direct_interc direct_interc_44_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o5_dn),
		.out(lut_block_o5_dn[4]));

	direct_interc direct_interc_45_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o5_dn),
		.out(lut_block_o5_dn[5]));

	direct_interc direct_interc_46_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o5_dn),
		.out(lut_block_o5_dn[6]));

	direct_interc direct_interc_47_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o5_dn),
		.out(lut_block_o5_dn[7]));

	direct_interc direct_interc_48_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_o6),
		.out(lut_block_o6[0]));

	direct_interc direct_interc_49_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_o6),
		.out(lut_block_o6[1]));

	direct_interc direct_interc_50_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_o6),
		.out(lut_block_o6[2]));

	direct_interc direct_interc_51_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_o6),
		.out(lut_block_o6[3]));

	direct_interc direct_interc_52_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_o6),
		.out(lut_block_o6[4]));

	direct_interc direct_interc_53_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_o6),
		.out(lut_block_o6[5]));

	direct_interc direct_interc_54_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_o6),
		.out(lut_block_o6[6]));

	direct_interc direct_interc_55_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_o6),
		.out(lut_block_o6[7]));

	direct_interc direct_interc_56_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_cascdn_o),
		.out(lut_block_cascdn_o));

	direct_interc direct_interc_57_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_cascup_o),
		.out(lut_block_cascup_o));

	direct_interc direct_interc_58_ (
		.in(lut_block_II[0]),
		.out(direct_interc_58_out));

	direct_interc direct_interc_59_ (
		.in(lut_block_II[1]),
		.out(direct_interc_59_out));

	direct_interc direct_interc_60_ (
		.in(lut_block_II[2]),
		.out(direct_interc_60_out));

	direct_interc direct_interc_61_ (
		.in(lut_block_II[3]),
		.out(direct_interc_61_out));

	direct_interc direct_interc_62_ (
		.in(lut_block_II[4]),
		.out(direct_interc_62_out));

	direct_interc direct_interc_63_ (
		.in(lut_block_II[5]),
		.out(direct_interc_63_out));

	direct_interc direct_interc_64_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_cascup_o),
		.out(direct_interc_64_out));

	direct_interc direct_interc_65_ (
		.in(lut_block_cascup_i),
		.out(direct_interc_65_out));

	direct_interc direct_interc_66_ (
		.in(lut_block_II[6]),
		.out(direct_interc_66_out));

	direct_interc direct_interc_67_ (
		.in(lut_block_II[7]),
		.out(direct_interc_67_out));

	direct_interc direct_interc_68_ (
		.in(lut_block_II[8]),
		.out(direct_interc_68_out));

	direct_interc direct_interc_69_ (
		.in(lut_block_II[9]),
		.out(direct_interc_69_out));

	direct_interc direct_interc_70_ (
		.in(lut_block_II[10]),
		.out(direct_interc_70_out));

	direct_interc direct_interc_71_ (
		.in(lut_block_II[11]),
		.out(direct_interc_71_out));

	direct_interc direct_interc_72_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_cascup_o),
		.out(direct_interc_72_out));

	direct_interc direct_interc_73_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_0_frac_lut_cascdn_o),
		.out(direct_interc_73_out));

	direct_interc direct_interc_74_ (
		.in(lut_block_II[12]),
		.out(direct_interc_74_out));

	direct_interc direct_interc_75_ (
		.in(lut_block_II[13]),
		.out(direct_interc_75_out));

	direct_interc direct_interc_76_ (
		.in(lut_block_II[14]),
		.out(direct_interc_76_out));

	direct_interc direct_interc_77_ (
		.in(lut_block_II[15]),
		.out(direct_interc_77_out));

	direct_interc direct_interc_78_ (
		.in(lut_block_II[16]),
		.out(direct_interc_78_out));

	direct_interc direct_interc_79_ (
		.in(lut_block_II[17]),
		.out(direct_interc_79_out));

	direct_interc direct_interc_80_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_cascup_o),
		.out(direct_interc_80_out));

	direct_interc direct_interc_81_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_1_frac_lut_cascdn_o),
		.out(direct_interc_81_out));

	direct_interc direct_interc_82_ (
		.in(lut_block_II[18]),
		.out(direct_interc_82_out));

	direct_interc direct_interc_83_ (
		.in(lut_block_II[19]),
		.out(direct_interc_83_out));

	direct_interc direct_interc_84_ (
		.in(lut_block_II[20]),
		.out(direct_interc_84_out));

	direct_interc direct_interc_85_ (
		.in(lut_block_II[21]),
		.out(direct_interc_85_out));

	direct_interc direct_interc_86_ (
		.in(lut_block_II[22]),
		.out(direct_interc_86_out));

	direct_interc direct_interc_87_ (
		.in(lut_block_II[23]),
		.out(direct_interc_87_out));

	direct_interc direct_interc_88_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_cascup_o),
		.out(direct_interc_88_out));

	direct_interc direct_interc_89_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_2_frac_lut_cascdn_o),
		.out(direct_interc_89_out));

	direct_interc direct_interc_90_ (
		.in(lut_block_II[24]),
		.out(direct_interc_90_out));

	direct_interc direct_interc_91_ (
		.in(lut_block_II[25]),
		.out(direct_interc_91_out));

	direct_interc direct_interc_92_ (
		.in(lut_block_II[26]),
		.out(direct_interc_92_out));

	direct_interc direct_interc_93_ (
		.in(lut_block_II[27]),
		.out(direct_interc_93_out));

	direct_interc direct_interc_94_ (
		.in(lut_block_II[28]),
		.out(direct_interc_94_out));

	direct_interc direct_interc_95_ (
		.in(lut_block_II[29]),
		.out(direct_interc_95_out));

	direct_interc direct_interc_96_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_cascup_o),
		.out(direct_interc_96_out));

	direct_interc direct_interc_97_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_3_frac_lut_cascdn_o),
		.out(direct_interc_97_out));

	direct_interc direct_interc_98_ (
		.in(lut_block_II[30]),
		.out(direct_interc_98_out));

	direct_interc direct_interc_99_ (
		.in(lut_block_II[31]),
		.out(direct_interc_99_out));

	direct_interc direct_interc_100_ (
		.in(lut_block_II[32]),
		.out(direct_interc_100_out));

	direct_interc direct_interc_101_ (
		.in(lut_block_II[33]),
		.out(direct_interc_101_out));

	direct_interc direct_interc_102_ (
		.in(lut_block_II[34]),
		.out(direct_interc_102_out));

	direct_interc direct_interc_103_ (
		.in(lut_block_II[35]),
		.out(direct_interc_103_out));

	direct_interc direct_interc_104_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_cascup_o),
		.out(direct_interc_104_out));

	direct_interc direct_interc_105_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_4_frac_lut_cascdn_o),
		.out(direct_interc_105_out));

	direct_interc direct_interc_106_ (
		.in(lut_block_II[36]),
		.out(direct_interc_106_out));

	direct_interc direct_interc_107_ (
		.in(lut_block_II[37]),
		.out(direct_interc_107_out));

	direct_interc direct_interc_108_ (
		.in(lut_block_II[38]),
		.out(direct_interc_108_out));

	direct_interc direct_interc_109_ (
		.in(lut_block_II[39]),
		.out(direct_interc_109_out));

	direct_interc direct_interc_110_ (
		.in(lut_block_II[40]),
		.out(direct_interc_110_out));

	direct_interc direct_interc_111_ (
		.in(lut_block_II[41]),
		.out(direct_interc_111_out));

	direct_interc direct_interc_112_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_7_frac_lut_cascup_o),
		.out(direct_interc_112_out));

	direct_interc direct_interc_113_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_5_frac_lut_cascdn_o),
		.out(direct_interc_113_out));

	direct_interc direct_interc_114_ (
		.in(lut_block_II[42]),
		.out(direct_interc_114_out));

	direct_interc direct_interc_115_ (
		.in(lut_block_II[43]),
		.out(direct_interc_115_out));

	direct_interc direct_interc_116_ (
		.in(lut_block_II[44]),
		.out(direct_interc_116_out));

	direct_interc direct_interc_117_ (
		.in(lut_block_II[45]),
		.out(direct_interc_117_out));

	direct_interc direct_interc_118_ (
		.in(lut_block_II[46]),
		.out(direct_interc_118_out));

	direct_interc direct_interc_119_ (
		.in(lut_block_II[47]),
		.out(direct_interc_119_out));

	direct_interc direct_interc_120_ (
		.in(lut_block_cascdn_i),
		.out(direct_interc_120_out));

	direct_interc direct_interc_121_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_6_frac_lut_cascdn_o),
		.out(direct_interc_121_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: lut_block -----
