//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: fa_2bit_block
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: fa_2bit_block -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block(config_enable,
                                                                                                       prog_clock,
                                                                                                       fa_2bit_block_p_up,
                                                                                                       fa_2bit_block_g_up,
                                                                                                       fa_2bit_block_p_dn,
                                                                                                       fa_2bit_block_g_dn,
                                                                                                       fa_2bit_block_cin,
                                                                                                       ccff_head,
                                                                                                       fa_2bit_block_sum_up,
                                                                                                       fa_2bit_block_sum_dn,
                                                                                                       fa_2bit_block_cout,
                                                                                                       ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:7] fa_2bit_block_p_up;
//----- INPUT PORTS -----
input [0:7] fa_2bit_block_g_up;
//----- INPUT PORTS -----
input [0:7] fa_2bit_block_p_dn;
//----- INPUT PORTS -----
input [0:7] fa_2bit_block_g_dn;
//----- INPUT PORTS -----
input [0:0] fa_2bit_block_cin;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:7] fa_2bit_block_sum_up;
//----- OUTPUT PORTS -----
output [0:7] fa_2bit_block_sum_dn;
//----- OUTPUT PORTS -----
output [0:0] fa_2bit_block_cout;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0_fa_2bit_phy_sum;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1_fa_2bit_phy_sum;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2_fa_2bit_phy_sum;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3_fa_2bit_phy_sum;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4_fa_2bit_phy_sum;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5_fa_2bit_phy_sum;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6_fa_2bit_phy_sum;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_7_fa_2bit_phy_sum;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_phy_p({direct_interc_17_out, direct_interc_18_out}),
		.fa_2bit_phy_g({direct_interc_19_out, direct_interc_20_out}),
		.fa_2bit_phy_cin(direct_interc_21_out),
		.ccff_head(ccff_head),
		.fa_2bit_phy_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0_fa_2bit_phy_sum[0:1]),
		.fa_2bit_phy_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0_fa_2bit_phy_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_phy_p({direct_interc_22_out, direct_interc_23_out}),
		.fa_2bit_phy_g({direct_interc_24_out, direct_interc_25_out}),
		.fa_2bit_phy_cin(direct_interc_26_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0_ccff_tail),
		.fa_2bit_phy_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1_fa_2bit_phy_sum[0:1]),
		.fa_2bit_phy_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1_fa_2bit_phy_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_phy_p({direct_interc_27_out, direct_interc_28_out}),
		.fa_2bit_phy_g({direct_interc_29_out, direct_interc_30_out}),
		.fa_2bit_phy_cin(direct_interc_31_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1_ccff_tail),
		.fa_2bit_phy_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2_fa_2bit_phy_sum[0:1]),
		.fa_2bit_phy_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2_fa_2bit_phy_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_phy_p({direct_interc_32_out, direct_interc_33_out}),
		.fa_2bit_phy_g({direct_interc_34_out, direct_interc_35_out}),
		.fa_2bit_phy_cin(direct_interc_36_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2_ccff_tail),
		.fa_2bit_phy_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3_fa_2bit_phy_sum[0:1]),
		.fa_2bit_phy_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3_fa_2bit_phy_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_phy_p({direct_interc_37_out, direct_interc_38_out}),
		.fa_2bit_phy_g({direct_interc_39_out, direct_interc_40_out}),
		.fa_2bit_phy_cin(direct_interc_41_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3_ccff_tail),
		.fa_2bit_phy_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4_fa_2bit_phy_sum[0:1]),
		.fa_2bit_phy_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4_fa_2bit_phy_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_phy_p({direct_interc_42_out, direct_interc_43_out}),
		.fa_2bit_phy_g({direct_interc_44_out, direct_interc_45_out}),
		.fa_2bit_phy_cin(direct_interc_46_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4_ccff_tail),
		.fa_2bit_phy_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5_fa_2bit_phy_sum[0:1]),
		.fa_2bit_phy_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5_fa_2bit_phy_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_phy_p({direct_interc_47_out, direct_interc_48_out}),
		.fa_2bit_phy_g({direct_interc_49_out, direct_interc_50_out}),
		.fa_2bit_phy_cin(direct_interc_51_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5_ccff_tail),
		.fa_2bit_phy_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6_fa_2bit_phy_sum[0:1]),
		.fa_2bit_phy_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6_fa_2bit_phy_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_2bit_phy_p({direct_interc_52_out, direct_interc_53_out}),
		.fa_2bit_phy_g({direct_interc_54_out, direct_interc_55_out}),
		.fa_2bit_phy_cin(direct_interc_56_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6_ccff_tail),
		.fa_2bit_phy_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_7_fa_2bit_phy_sum[0:1]),
		.fa_2bit_phy_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_7_fa_2bit_phy_cout),
		.ccff_tail(ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0_fa_2bit_phy_sum[0]),
		.out(fa_2bit_block_sum_up[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1_fa_2bit_phy_sum[0]),
		.out(fa_2bit_block_sum_up[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2_fa_2bit_phy_sum[0]),
		.out(fa_2bit_block_sum_up[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3_fa_2bit_phy_sum[0]),
		.out(fa_2bit_block_sum_up[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4_fa_2bit_phy_sum[0]),
		.out(fa_2bit_block_sum_up[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5_fa_2bit_phy_sum[0]),
		.out(fa_2bit_block_sum_up[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6_fa_2bit_phy_sum[0]),
		.out(fa_2bit_block_sum_up[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_7_fa_2bit_phy_sum[0]),
		.out(fa_2bit_block_sum_up[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0_fa_2bit_phy_sum[1]),
		.out(fa_2bit_block_sum_dn[0]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1_fa_2bit_phy_sum[1]),
		.out(fa_2bit_block_sum_dn[1]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2_fa_2bit_phy_sum[1]),
		.out(fa_2bit_block_sum_dn[2]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3_fa_2bit_phy_sum[1]),
		.out(fa_2bit_block_sum_dn[3]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4_fa_2bit_phy_sum[1]),
		.out(fa_2bit_block_sum_dn[4]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5_fa_2bit_phy_sum[1]),
		.out(fa_2bit_block_sum_dn[5]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6_fa_2bit_phy_sum[1]),
		.out(fa_2bit_block_sum_dn[6]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_7_fa_2bit_phy_sum[1]),
		.out(fa_2bit_block_sum_dn[7]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_7_fa_2bit_phy_cout),
		.out(fa_2bit_block_cout));

	direct_interc direct_interc_17_ (
		.in(fa_2bit_block_p_up[0]),
		.out(direct_interc_17_out));

	direct_interc direct_interc_18_ (
		.in(fa_2bit_block_p_dn[0]),
		.out(direct_interc_18_out));

	direct_interc direct_interc_19_ (
		.in(fa_2bit_block_g_up[0]),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(fa_2bit_block_g_dn[0]),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(fa_2bit_block_cin),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(fa_2bit_block_p_up[1]),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(fa_2bit_block_p_dn[1]),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(fa_2bit_block_g_up[1]),
		.out(direct_interc_24_out));

	direct_interc direct_interc_25_ (
		.in(fa_2bit_block_g_dn[1]),
		.out(direct_interc_25_out));

	direct_interc direct_interc_26_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_0_fa_2bit_phy_cout),
		.out(direct_interc_26_out));

	direct_interc direct_interc_27_ (
		.in(fa_2bit_block_p_up[2]),
		.out(direct_interc_27_out));

	direct_interc direct_interc_28_ (
		.in(fa_2bit_block_p_dn[2]),
		.out(direct_interc_28_out));

	direct_interc direct_interc_29_ (
		.in(fa_2bit_block_g_up[2]),
		.out(direct_interc_29_out));

	direct_interc direct_interc_30_ (
		.in(fa_2bit_block_g_dn[2]),
		.out(direct_interc_30_out));

	direct_interc direct_interc_31_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_1_fa_2bit_phy_cout),
		.out(direct_interc_31_out));

	direct_interc direct_interc_32_ (
		.in(fa_2bit_block_p_up[3]),
		.out(direct_interc_32_out));

	direct_interc direct_interc_33_ (
		.in(fa_2bit_block_p_dn[3]),
		.out(direct_interc_33_out));

	direct_interc direct_interc_34_ (
		.in(fa_2bit_block_g_up[3]),
		.out(direct_interc_34_out));

	direct_interc direct_interc_35_ (
		.in(fa_2bit_block_g_dn[3]),
		.out(direct_interc_35_out));

	direct_interc direct_interc_36_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_2_fa_2bit_phy_cout),
		.out(direct_interc_36_out));

	direct_interc direct_interc_37_ (
		.in(fa_2bit_block_p_up[4]),
		.out(direct_interc_37_out));

	direct_interc direct_interc_38_ (
		.in(fa_2bit_block_p_dn[4]),
		.out(direct_interc_38_out));

	direct_interc direct_interc_39_ (
		.in(fa_2bit_block_g_up[4]),
		.out(direct_interc_39_out));

	direct_interc direct_interc_40_ (
		.in(fa_2bit_block_g_dn[4]),
		.out(direct_interc_40_out));

	direct_interc direct_interc_41_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_3_fa_2bit_phy_cout),
		.out(direct_interc_41_out));

	direct_interc direct_interc_42_ (
		.in(fa_2bit_block_p_up[5]),
		.out(direct_interc_42_out));

	direct_interc direct_interc_43_ (
		.in(fa_2bit_block_p_dn[5]),
		.out(direct_interc_43_out));

	direct_interc direct_interc_44_ (
		.in(fa_2bit_block_g_up[5]),
		.out(direct_interc_44_out));

	direct_interc direct_interc_45_ (
		.in(fa_2bit_block_g_dn[5]),
		.out(direct_interc_45_out));

	direct_interc direct_interc_46_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_4_fa_2bit_phy_cout),
		.out(direct_interc_46_out));

	direct_interc direct_interc_47_ (
		.in(fa_2bit_block_p_up[6]),
		.out(direct_interc_47_out));

	direct_interc direct_interc_48_ (
		.in(fa_2bit_block_p_dn[6]),
		.out(direct_interc_48_out));

	direct_interc direct_interc_49_ (
		.in(fa_2bit_block_g_up[6]),
		.out(direct_interc_49_out));

	direct_interc direct_interc_50_ (
		.in(fa_2bit_block_g_dn[6]),
		.out(direct_interc_50_out));

	direct_interc direct_interc_51_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_5_fa_2bit_phy_cout),
		.out(direct_interc_51_out));

	direct_interc direct_interc_52_ (
		.in(fa_2bit_block_p_up[7]),
		.out(direct_interc_52_out));

	direct_interc direct_interc_53_ (
		.in(fa_2bit_block_p_dn[7]),
		.out(direct_interc_53_out));

	direct_interc direct_interc_54_ (
		.in(fa_2bit_block_g_up[7]),
		.out(direct_interc_54_out));

	direct_interc direct_interc_55_ (
		.in(fa_2bit_block_g_dn[7]),
		.out(direct_interc_55_out));

	direct_interc direct_interc_56_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_6_fa_2bit_phy_cout),
		.out(direct_interc_56_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: fa_2bit_block -----
