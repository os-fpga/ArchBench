//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: ff_wrap
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: ff_wrap -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__ff_wrap -----
module logical_tile_bram_mode_default__ff_wrap(scan_enable,
                                               global_reset,
                                               scan_mode,
                                               config_enable,
                                               prog_clock,
                                               ff_wrap_rdata_a1,
                                               ff_wrap_rdata_b1,
                                               ff_wrap_rdata_a2,
                                               ff_wrap_rdata_b2,
                                               ff_wrap_reset,
                                               ff_wrap_enable,
                                               ff_wrap_sc_in,
                                               ff_wrap_clock,
                                               ccff_head,
                                               ff_wrap_out_a1,
                                               ff_wrap_out_b1,
                                               ff_wrap_out_a2,
                                               ff_wrap_out_b2,
                                               ff_wrap_sc_out,
                                               ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] global_reset;
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:17] ff_wrap_rdata_a1;
//----- INPUT PORTS -----
input [0:17] ff_wrap_rdata_b1;
//----- INPUT PORTS -----
input [0:17] ff_wrap_rdata_a2;
//----- INPUT PORTS -----
input [0:17] ff_wrap_rdata_b2;
//----- INPUT PORTS -----
input [0:3] ff_wrap_reset;
//----- INPUT PORTS -----
input [0:3] ff_wrap_enable;
//----- INPUT PORTS -----
input [0:3] ff_wrap_sc_in;
//----- INPUT PORTS -----
input [0:3] ff_wrap_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:17] ff_wrap_out_a1;
//----- OUTPUT PORTS -----
output [0:17] ff_wrap_out_b1;
//----- OUTPUT PORTS -----
output [0:17] ff_wrap_out_a2;
//----- OUTPUT PORTS -----
output [0:17] ff_wrap_out_b2;
//----- OUTPUT PORTS -----
output [0:3] ff_wrap_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:17] logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out;
wire [0:17] logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out;
wire [0:17] logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out;
wire [0:17] logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_group_in({direct_interc_4_out, direct_interc_5_out, direct_interc_6_out, direct_interc_7_out, direct_interc_8_out, direct_interc_9_out, direct_interc_10_out, direct_interc_11_out, direct_interc_12_out, direct_interc_13_out, direct_interc_14_out, direct_interc_15_out, direct_interc_16_out, direct_interc_17_out, direct_interc_18_out, direct_interc_19_out, direct_interc_20_out, direct_interc_21_out}),
		.ff_group_SI(direct_interc_22_out),
		.ff_group_clock(direct_interc_23_out),
		.ff_group_reset(direct_interc_24_out),
		.ff_group_enable(direct_interc_25_out),
		.ccff_head(ccff_head),
		.ff_group_out(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[0:17]),
		.ff_group_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ccff_tail));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_group_in({direct_interc_26_out, direct_interc_27_out, direct_interc_28_out, direct_interc_29_out, direct_interc_30_out, direct_interc_31_out, direct_interc_32_out, direct_interc_33_out, direct_interc_34_out, direct_interc_35_out, direct_interc_36_out, direct_interc_37_out, direct_interc_38_out, direct_interc_39_out, direct_interc_40_out, direct_interc_41_out, direct_interc_42_out, direct_interc_43_out}),
		.ff_group_SI(direct_interc_44_out),
		.ff_group_clock(direct_interc_45_out),
		.ff_group_reset(direct_interc_46_out),
		.ff_group_enable(direct_interc_47_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ccff_tail),
		.ff_group_out(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[0:17]),
		.ff_group_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ccff_tail));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_group_in({direct_interc_48_out, direct_interc_49_out, direct_interc_50_out, direct_interc_51_out, direct_interc_52_out, direct_interc_53_out, direct_interc_54_out, direct_interc_55_out, direct_interc_56_out, direct_interc_57_out, direct_interc_58_out, direct_interc_59_out, direct_interc_60_out, direct_interc_61_out, direct_interc_62_out, direct_interc_63_out, direct_interc_64_out, direct_interc_65_out}),
		.ff_group_SI(direct_interc_66_out),
		.ff_group_clock(direct_interc_67_out),
		.ff_group_reset(direct_interc_68_out),
		.ff_group_enable(direct_interc_69_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ccff_tail),
		.ff_group_out(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[0:17]),
		.ff_group_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ccff_tail));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_group_in({direct_interc_70_out, direct_interc_71_out, direct_interc_72_out, direct_interc_73_out, direct_interc_74_out, direct_interc_75_out, direct_interc_76_out, direct_interc_77_out, direct_interc_78_out, direct_interc_79_out, direct_interc_80_out, direct_interc_81_out, direct_interc_82_out, direct_interc_83_out, direct_interc_84_out, direct_interc_85_out, direct_interc_86_out, direct_interc_87_out}),
		.ff_group_SI(direct_interc_88_out),
		.ff_group_clock(direct_interc_89_out),
		.ff_group_reset(direct_interc_90_out),
		.ff_group_enable(direct_interc_91_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ccff_tail),
		.ff_group_out(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[0:17]),
		.ff_group_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ccff_tail));

	mux_tree_size2 mux_ff_wrap_out_a1_0 (
		.in({ff_wrap_rdata_a1[0], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[0]}),
		.sram(mux_tree_size2_0_sram),
		.sram_inv(mux_tree_size2_0_sram_inv),
		.out(ff_wrap_out_a1[0]));

	mux_tree_size2 mux_ff_wrap_out_a1_1 (
		.in({ff_wrap_rdata_a1[1], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[1]}),
		.sram(mux_tree_size2_1_sram),
		.sram_inv(mux_tree_size2_1_sram_inv),
		.out(ff_wrap_out_a1[1]));

	mux_tree_size2 mux_ff_wrap_out_a1_2 (
		.in({ff_wrap_rdata_a1[2], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[2]}),
		.sram(mux_tree_size2_2_sram),
		.sram_inv(mux_tree_size2_2_sram_inv),
		.out(ff_wrap_out_a1[2]));

	mux_tree_size2 mux_ff_wrap_out_a1_3 (
		.in({ff_wrap_rdata_a1[3], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[3]}),
		.sram(mux_tree_size2_3_sram),
		.sram_inv(mux_tree_size2_3_sram_inv),
		.out(ff_wrap_out_a1[3]));

	mux_tree_size2 mux_ff_wrap_out_a1_4 (
		.in({ff_wrap_rdata_a1[4], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[4]}),
		.sram(mux_tree_size2_4_sram),
		.sram_inv(mux_tree_size2_4_sram_inv),
		.out(ff_wrap_out_a1[4]));

	mux_tree_size2 mux_ff_wrap_out_a1_5 (
		.in({ff_wrap_rdata_a1[5], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[5]}),
		.sram(mux_tree_size2_5_sram),
		.sram_inv(mux_tree_size2_5_sram_inv),
		.out(ff_wrap_out_a1[5]));

	mux_tree_size2 mux_ff_wrap_out_a1_6 (
		.in({ff_wrap_rdata_a1[6], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[6]}),
		.sram(mux_tree_size2_6_sram),
		.sram_inv(mux_tree_size2_6_sram_inv),
		.out(ff_wrap_out_a1[6]));

	mux_tree_size2 mux_ff_wrap_out_a1_7 (
		.in({ff_wrap_rdata_a1[7], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[7]}),
		.sram(mux_tree_size2_7_sram),
		.sram_inv(mux_tree_size2_7_sram_inv),
		.out(ff_wrap_out_a1[7]));

	mux_tree_size2 mux_ff_wrap_out_a1_8 (
		.in({ff_wrap_rdata_a1[8], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[8]}),
		.sram(mux_tree_size2_8_sram),
		.sram_inv(mux_tree_size2_8_sram_inv),
		.out(ff_wrap_out_a1[8]));

	mux_tree_size2 mux_ff_wrap_out_a1_9 (
		.in({ff_wrap_rdata_a1[9], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[9]}),
		.sram(mux_tree_size2_9_sram),
		.sram_inv(mux_tree_size2_9_sram_inv),
		.out(ff_wrap_out_a1[9]));

	mux_tree_size2 mux_ff_wrap_out_a1_10 (
		.in({ff_wrap_rdata_a1[10], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[10]}),
		.sram(mux_tree_size2_10_sram),
		.sram_inv(mux_tree_size2_10_sram_inv),
		.out(ff_wrap_out_a1[10]));

	mux_tree_size2 mux_ff_wrap_out_a1_11 (
		.in({ff_wrap_rdata_a1[11], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[11]}),
		.sram(mux_tree_size2_11_sram),
		.sram_inv(mux_tree_size2_11_sram_inv),
		.out(ff_wrap_out_a1[11]));

	mux_tree_size2 mux_ff_wrap_out_a1_12 (
		.in({ff_wrap_rdata_a1[12], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[12]}),
		.sram(mux_tree_size2_12_sram),
		.sram_inv(mux_tree_size2_12_sram_inv),
		.out(ff_wrap_out_a1[12]));

	mux_tree_size2 mux_ff_wrap_out_a1_13 (
		.in({ff_wrap_rdata_a1[13], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[13]}),
		.sram(mux_tree_size2_13_sram),
		.sram_inv(mux_tree_size2_13_sram_inv),
		.out(ff_wrap_out_a1[13]));

	mux_tree_size2 mux_ff_wrap_out_a1_14 (
		.in({ff_wrap_rdata_a1[14], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[14]}),
		.sram(mux_tree_size2_14_sram),
		.sram_inv(mux_tree_size2_14_sram_inv),
		.out(ff_wrap_out_a1[14]));

	mux_tree_size2 mux_ff_wrap_out_a1_15 (
		.in({ff_wrap_rdata_a1[15], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[15]}),
		.sram(mux_tree_size2_15_sram),
		.sram_inv(mux_tree_size2_15_sram_inv),
		.out(ff_wrap_out_a1[15]));

	mux_tree_size2 mux_ff_wrap_out_a1_16 (
		.in({ff_wrap_rdata_a1[16], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[16]}),
		.sram(mux_tree_size2_16_sram),
		.sram_inv(mux_tree_size2_16_sram_inv),
		.out(ff_wrap_out_a1[16]));

	mux_tree_size2 mux_ff_wrap_out_a1_17 (
		.in({ff_wrap_rdata_a1[17], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_out[17]}),
		.sram(mux_tree_size2_17_sram),
		.sram_inv(mux_tree_size2_17_sram_inv),
		.out(ff_wrap_out_a1[17]));

	mux_tree_size2 mux_ff_wrap_out_b1_0 (
		.in({ff_wrap_rdata_b1[0], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[0]}),
		.sram(mux_tree_size2_18_sram),
		.sram_inv(mux_tree_size2_18_sram_inv),
		.out(ff_wrap_out_b1[0]));

	mux_tree_size2 mux_ff_wrap_out_b1_1 (
		.in({ff_wrap_rdata_b1[1], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[1]}),
		.sram(mux_tree_size2_19_sram),
		.sram_inv(mux_tree_size2_19_sram_inv),
		.out(ff_wrap_out_b1[1]));

	mux_tree_size2 mux_ff_wrap_out_b1_2 (
		.in({ff_wrap_rdata_b1[2], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[2]}),
		.sram(mux_tree_size2_20_sram),
		.sram_inv(mux_tree_size2_20_sram_inv),
		.out(ff_wrap_out_b1[2]));

	mux_tree_size2 mux_ff_wrap_out_b1_3 (
		.in({ff_wrap_rdata_b1[3], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[3]}),
		.sram(mux_tree_size2_21_sram),
		.sram_inv(mux_tree_size2_21_sram_inv),
		.out(ff_wrap_out_b1[3]));

	mux_tree_size2 mux_ff_wrap_out_b1_4 (
		.in({ff_wrap_rdata_b1[4], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[4]}),
		.sram(mux_tree_size2_22_sram),
		.sram_inv(mux_tree_size2_22_sram_inv),
		.out(ff_wrap_out_b1[4]));

	mux_tree_size2 mux_ff_wrap_out_b1_5 (
		.in({ff_wrap_rdata_b1[5], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[5]}),
		.sram(mux_tree_size2_23_sram),
		.sram_inv(mux_tree_size2_23_sram_inv),
		.out(ff_wrap_out_b1[5]));

	mux_tree_size2 mux_ff_wrap_out_b1_6 (
		.in({ff_wrap_rdata_b1[6], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[6]}),
		.sram(mux_tree_size2_24_sram),
		.sram_inv(mux_tree_size2_24_sram_inv),
		.out(ff_wrap_out_b1[6]));

	mux_tree_size2 mux_ff_wrap_out_b1_7 (
		.in({ff_wrap_rdata_b1[7], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[7]}),
		.sram(mux_tree_size2_25_sram),
		.sram_inv(mux_tree_size2_25_sram_inv),
		.out(ff_wrap_out_b1[7]));

	mux_tree_size2 mux_ff_wrap_out_b1_8 (
		.in({ff_wrap_rdata_b1[8], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[8]}),
		.sram(mux_tree_size2_26_sram),
		.sram_inv(mux_tree_size2_26_sram_inv),
		.out(ff_wrap_out_b1[8]));

	mux_tree_size2 mux_ff_wrap_out_b1_9 (
		.in({ff_wrap_rdata_b1[9], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[9]}),
		.sram(mux_tree_size2_27_sram),
		.sram_inv(mux_tree_size2_27_sram_inv),
		.out(ff_wrap_out_b1[9]));

	mux_tree_size2 mux_ff_wrap_out_b1_10 (
		.in({ff_wrap_rdata_b1[10], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[10]}),
		.sram(mux_tree_size2_28_sram),
		.sram_inv(mux_tree_size2_28_sram_inv),
		.out(ff_wrap_out_b1[10]));

	mux_tree_size2 mux_ff_wrap_out_b1_11 (
		.in({ff_wrap_rdata_b1[11], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[11]}),
		.sram(mux_tree_size2_29_sram),
		.sram_inv(mux_tree_size2_29_sram_inv),
		.out(ff_wrap_out_b1[11]));

	mux_tree_size2 mux_ff_wrap_out_b1_12 (
		.in({ff_wrap_rdata_b1[12], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[12]}),
		.sram(mux_tree_size2_30_sram),
		.sram_inv(mux_tree_size2_30_sram_inv),
		.out(ff_wrap_out_b1[12]));

	mux_tree_size2 mux_ff_wrap_out_b1_13 (
		.in({ff_wrap_rdata_b1[13], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[13]}),
		.sram(mux_tree_size2_31_sram),
		.sram_inv(mux_tree_size2_31_sram_inv),
		.out(ff_wrap_out_b1[13]));

	mux_tree_size2 mux_ff_wrap_out_b1_14 (
		.in({ff_wrap_rdata_b1[14], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[14]}),
		.sram(mux_tree_size2_32_sram),
		.sram_inv(mux_tree_size2_32_sram_inv),
		.out(ff_wrap_out_b1[14]));

	mux_tree_size2 mux_ff_wrap_out_b1_15 (
		.in({ff_wrap_rdata_b1[15], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[15]}),
		.sram(mux_tree_size2_33_sram),
		.sram_inv(mux_tree_size2_33_sram_inv),
		.out(ff_wrap_out_b1[15]));

	mux_tree_size2 mux_ff_wrap_out_b1_16 (
		.in({ff_wrap_rdata_b1[16], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[16]}),
		.sram(mux_tree_size2_34_sram),
		.sram_inv(mux_tree_size2_34_sram_inv),
		.out(ff_wrap_out_b1[16]));

	mux_tree_size2 mux_ff_wrap_out_b1_17 (
		.in({ff_wrap_rdata_b1[17], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_out[17]}),
		.sram(mux_tree_size2_35_sram),
		.sram_inv(mux_tree_size2_35_sram_inv),
		.out(ff_wrap_out_b1[17]));

	mux_tree_size2 mux_ff_wrap_out_a2_0 (
		.in({ff_wrap_rdata_a2[0], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[0]}),
		.sram(mux_tree_size2_36_sram),
		.sram_inv(mux_tree_size2_36_sram_inv),
		.out(ff_wrap_out_a2[0]));

	mux_tree_size2 mux_ff_wrap_out_a2_1 (
		.in({ff_wrap_rdata_a2[1], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[1]}),
		.sram(mux_tree_size2_37_sram),
		.sram_inv(mux_tree_size2_37_sram_inv),
		.out(ff_wrap_out_a2[1]));

	mux_tree_size2 mux_ff_wrap_out_a2_2 (
		.in({ff_wrap_rdata_a2[2], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[2]}),
		.sram(mux_tree_size2_38_sram),
		.sram_inv(mux_tree_size2_38_sram_inv),
		.out(ff_wrap_out_a2[2]));

	mux_tree_size2 mux_ff_wrap_out_a2_3 (
		.in({ff_wrap_rdata_a2[3], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[3]}),
		.sram(mux_tree_size2_39_sram),
		.sram_inv(mux_tree_size2_39_sram_inv),
		.out(ff_wrap_out_a2[3]));

	mux_tree_size2 mux_ff_wrap_out_a2_4 (
		.in({ff_wrap_rdata_a2[4], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[4]}),
		.sram(mux_tree_size2_40_sram),
		.sram_inv(mux_tree_size2_40_sram_inv),
		.out(ff_wrap_out_a2[4]));

	mux_tree_size2 mux_ff_wrap_out_a2_5 (
		.in({ff_wrap_rdata_a2[5], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[5]}),
		.sram(mux_tree_size2_41_sram),
		.sram_inv(mux_tree_size2_41_sram_inv),
		.out(ff_wrap_out_a2[5]));

	mux_tree_size2 mux_ff_wrap_out_a2_6 (
		.in({ff_wrap_rdata_a2[6], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[6]}),
		.sram(mux_tree_size2_42_sram),
		.sram_inv(mux_tree_size2_42_sram_inv),
		.out(ff_wrap_out_a2[6]));

	mux_tree_size2 mux_ff_wrap_out_a2_7 (
		.in({ff_wrap_rdata_a2[7], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[7]}),
		.sram(mux_tree_size2_43_sram),
		.sram_inv(mux_tree_size2_43_sram_inv),
		.out(ff_wrap_out_a2[7]));

	mux_tree_size2 mux_ff_wrap_out_a2_8 (
		.in({ff_wrap_rdata_a2[8], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[8]}),
		.sram(mux_tree_size2_44_sram),
		.sram_inv(mux_tree_size2_44_sram_inv),
		.out(ff_wrap_out_a2[8]));

	mux_tree_size2 mux_ff_wrap_out_a2_9 (
		.in({ff_wrap_rdata_a2[9], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[9]}),
		.sram(mux_tree_size2_45_sram),
		.sram_inv(mux_tree_size2_45_sram_inv),
		.out(ff_wrap_out_a2[9]));

	mux_tree_size2 mux_ff_wrap_out_a2_10 (
		.in({ff_wrap_rdata_a2[10], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[10]}),
		.sram(mux_tree_size2_46_sram),
		.sram_inv(mux_tree_size2_46_sram_inv),
		.out(ff_wrap_out_a2[10]));

	mux_tree_size2 mux_ff_wrap_out_a2_11 (
		.in({ff_wrap_rdata_a2[11], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[11]}),
		.sram(mux_tree_size2_47_sram),
		.sram_inv(mux_tree_size2_47_sram_inv),
		.out(ff_wrap_out_a2[11]));

	mux_tree_size2 mux_ff_wrap_out_a2_12 (
		.in({ff_wrap_rdata_a2[12], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[12]}),
		.sram(mux_tree_size2_48_sram),
		.sram_inv(mux_tree_size2_48_sram_inv),
		.out(ff_wrap_out_a2[12]));

	mux_tree_size2 mux_ff_wrap_out_a2_13 (
		.in({ff_wrap_rdata_a2[13], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[13]}),
		.sram(mux_tree_size2_49_sram),
		.sram_inv(mux_tree_size2_49_sram_inv),
		.out(ff_wrap_out_a2[13]));

	mux_tree_size2 mux_ff_wrap_out_a2_14 (
		.in({ff_wrap_rdata_a2[14], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[14]}),
		.sram(mux_tree_size2_50_sram),
		.sram_inv(mux_tree_size2_50_sram_inv),
		.out(ff_wrap_out_a2[14]));

	mux_tree_size2 mux_ff_wrap_out_a2_15 (
		.in({ff_wrap_rdata_a2[15], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[15]}),
		.sram(mux_tree_size2_51_sram),
		.sram_inv(mux_tree_size2_51_sram_inv),
		.out(ff_wrap_out_a2[15]));

	mux_tree_size2 mux_ff_wrap_out_a2_16 (
		.in({ff_wrap_rdata_a2[16], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[16]}),
		.sram(mux_tree_size2_52_sram),
		.sram_inv(mux_tree_size2_52_sram_inv),
		.out(ff_wrap_out_a2[16]));

	mux_tree_size2 mux_ff_wrap_out_a2_17 (
		.in({ff_wrap_rdata_a2[17], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_out[17]}),
		.sram(mux_tree_size2_53_sram),
		.sram_inv(mux_tree_size2_53_sram_inv),
		.out(ff_wrap_out_a2[17]));

	mux_tree_size2 mux_ff_wrap_out_b2_0 (
		.in({ff_wrap_rdata_b2[0], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[0]}),
		.sram(mux_tree_size2_54_sram),
		.sram_inv(mux_tree_size2_54_sram_inv),
		.out(ff_wrap_out_b2[0]));

	mux_tree_size2 mux_ff_wrap_out_b2_1 (
		.in({ff_wrap_rdata_b2[1], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[1]}),
		.sram(mux_tree_size2_55_sram),
		.sram_inv(mux_tree_size2_55_sram_inv),
		.out(ff_wrap_out_b2[1]));

	mux_tree_size2 mux_ff_wrap_out_b2_2 (
		.in({ff_wrap_rdata_b2[2], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[2]}),
		.sram(mux_tree_size2_56_sram),
		.sram_inv(mux_tree_size2_56_sram_inv),
		.out(ff_wrap_out_b2[2]));

	mux_tree_size2 mux_ff_wrap_out_b2_3 (
		.in({ff_wrap_rdata_b2[3], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[3]}),
		.sram(mux_tree_size2_57_sram),
		.sram_inv(mux_tree_size2_57_sram_inv),
		.out(ff_wrap_out_b2[3]));

	mux_tree_size2 mux_ff_wrap_out_b2_4 (
		.in({ff_wrap_rdata_b2[4], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[4]}),
		.sram(mux_tree_size2_58_sram),
		.sram_inv(mux_tree_size2_58_sram_inv),
		.out(ff_wrap_out_b2[4]));

	mux_tree_size2 mux_ff_wrap_out_b2_5 (
		.in({ff_wrap_rdata_b2[5], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[5]}),
		.sram(mux_tree_size2_59_sram),
		.sram_inv(mux_tree_size2_59_sram_inv),
		.out(ff_wrap_out_b2[5]));

	mux_tree_size2 mux_ff_wrap_out_b2_6 (
		.in({ff_wrap_rdata_b2[6], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[6]}),
		.sram(mux_tree_size2_60_sram),
		.sram_inv(mux_tree_size2_60_sram_inv),
		.out(ff_wrap_out_b2[6]));

	mux_tree_size2 mux_ff_wrap_out_b2_7 (
		.in({ff_wrap_rdata_b2[7], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[7]}),
		.sram(mux_tree_size2_61_sram),
		.sram_inv(mux_tree_size2_61_sram_inv),
		.out(ff_wrap_out_b2[7]));

	mux_tree_size2 mux_ff_wrap_out_b2_8 (
		.in({ff_wrap_rdata_b2[8], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[8]}),
		.sram(mux_tree_size2_62_sram),
		.sram_inv(mux_tree_size2_62_sram_inv),
		.out(ff_wrap_out_b2[8]));

	mux_tree_size2 mux_ff_wrap_out_b2_9 (
		.in({ff_wrap_rdata_b2[9], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[9]}),
		.sram(mux_tree_size2_63_sram),
		.sram_inv(mux_tree_size2_63_sram_inv),
		.out(ff_wrap_out_b2[9]));

	mux_tree_size2 mux_ff_wrap_out_b2_10 (
		.in({ff_wrap_rdata_b2[10], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[10]}),
		.sram(mux_tree_size2_64_sram),
		.sram_inv(mux_tree_size2_64_sram_inv),
		.out(ff_wrap_out_b2[10]));

	mux_tree_size2 mux_ff_wrap_out_b2_11 (
		.in({ff_wrap_rdata_b2[11], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[11]}),
		.sram(mux_tree_size2_65_sram),
		.sram_inv(mux_tree_size2_65_sram_inv),
		.out(ff_wrap_out_b2[11]));

	mux_tree_size2 mux_ff_wrap_out_b2_12 (
		.in({ff_wrap_rdata_b2[12], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[12]}),
		.sram(mux_tree_size2_66_sram),
		.sram_inv(mux_tree_size2_66_sram_inv),
		.out(ff_wrap_out_b2[12]));

	mux_tree_size2 mux_ff_wrap_out_b2_13 (
		.in({ff_wrap_rdata_b2[13], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[13]}),
		.sram(mux_tree_size2_67_sram),
		.sram_inv(mux_tree_size2_67_sram_inv),
		.out(ff_wrap_out_b2[13]));

	mux_tree_size2 mux_ff_wrap_out_b2_14 (
		.in({ff_wrap_rdata_b2[14], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[14]}),
		.sram(mux_tree_size2_68_sram),
		.sram_inv(mux_tree_size2_68_sram_inv),
		.out(ff_wrap_out_b2[14]));

	mux_tree_size2 mux_ff_wrap_out_b2_15 (
		.in({ff_wrap_rdata_b2[15], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[15]}),
		.sram(mux_tree_size2_69_sram),
		.sram_inv(mux_tree_size2_69_sram_inv),
		.out(ff_wrap_out_b2[15]));

	mux_tree_size2 mux_ff_wrap_out_b2_16 (
		.in({ff_wrap_rdata_b2[16], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[16]}),
		.sram(mux_tree_size2_70_sram),
		.sram_inv(mux_tree_size2_70_sram_inv),
		.out(ff_wrap_out_b2[16]));

	mux_tree_size2 mux_ff_wrap_out_b2_17 (
		.in({ff_wrap_rdata_b2[17], logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_out[17]}),
		.sram(mux_tree_size2_71_sram),
		.sram_inv(mux_tree_size2_71_sram_inv),
		.out(ff_wrap_out_b2[17]));

	mux_tree_size2_mem mem_ff_wrap_out_a1_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_0_ccff_tail),
		.mem_out(mux_tree_size2_0_sram),
		.mem_outb(mux_tree_size2_0_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_1_ccff_tail),
		.mem_out(mux_tree_size2_1_sram),
		.mem_outb(mux_tree_size2_1_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_2_ccff_tail),
		.mem_out(mux_tree_size2_2_sram),
		.mem_outb(mux_tree_size2_2_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_3_ccff_tail),
		.mem_out(mux_tree_size2_3_sram),
		.mem_outb(mux_tree_size2_3_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_4_ccff_tail),
		.mem_out(mux_tree_size2_4_sram),
		.mem_outb(mux_tree_size2_4_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_5_ccff_tail),
		.mem_out(mux_tree_size2_5_sram),
		.mem_outb(mux_tree_size2_5_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_6_ccff_tail),
		.mem_out(mux_tree_size2_6_sram),
		.mem_outb(mux_tree_size2_6_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_7_ccff_tail),
		.mem_out(mux_tree_size2_7_sram),
		.mem_outb(mux_tree_size2_7_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_8_ccff_tail),
		.mem_out(mux_tree_size2_8_sram),
		.mem_outb(mux_tree_size2_8_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_9_ccff_tail),
		.mem_out(mux_tree_size2_9_sram),
		.mem_outb(mux_tree_size2_9_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_10_ccff_tail),
		.mem_out(mux_tree_size2_10_sram),
		.mem_outb(mux_tree_size2_10_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_11_ccff_tail),
		.mem_out(mux_tree_size2_11_sram),
		.mem_outb(mux_tree_size2_11_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_12_ccff_tail),
		.mem_out(mux_tree_size2_12_sram),
		.mem_outb(mux_tree_size2_12_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_13_ccff_tail),
		.mem_out(mux_tree_size2_13_sram),
		.mem_outb(mux_tree_size2_13_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_14_ccff_tail),
		.mem_out(mux_tree_size2_14_sram),
		.mem_outb(mux_tree_size2_14_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_15_ccff_tail),
		.mem_out(mux_tree_size2_15_sram),
		.mem_outb(mux_tree_size2_15_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_16_ccff_tail),
		.mem_out(mux_tree_size2_16_sram),
		.mem_outb(mux_tree_size2_16_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a1_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_16_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_17_ccff_tail),
		.mem_out(mux_tree_size2_17_sram),
		.mem_outb(mux_tree_size2_17_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_17_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_18_ccff_tail),
		.mem_out(mux_tree_size2_18_sram),
		.mem_outb(mux_tree_size2_18_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_18_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_19_ccff_tail),
		.mem_out(mux_tree_size2_19_sram),
		.mem_outb(mux_tree_size2_19_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_19_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_20_ccff_tail),
		.mem_out(mux_tree_size2_20_sram),
		.mem_outb(mux_tree_size2_20_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_20_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_21_ccff_tail),
		.mem_out(mux_tree_size2_21_sram),
		.mem_outb(mux_tree_size2_21_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_21_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_22_ccff_tail),
		.mem_out(mux_tree_size2_22_sram),
		.mem_outb(mux_tree_size2_22_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_22_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_23_ccff_tail),
		.mem_out(mux_tree_size2_23_sram),
		.mem_outb(mux_tree_size2_23_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_23_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_24_ccff_tail),
		.mem_out(mux_tree_size2_24_sram),
		.mem_outb(mux_tree_size2_24_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_24_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_25_ccff_tail),
		.mem_out(mux_tree_size2_25_sram),
		.mem_outb(mux_tree_size2_25_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_25_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_26_ccff_tail),
		.mem_out(mux_tree_size2_26_sram),
		.mem_outb(mux_tree_size2_26_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_26_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_27_ccff_tail),
		.mem_out(mux_tree_size2_27_sram),
		.mem_outb(mux_tree_size2_27_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_27_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_28_ccff_tail),
		.mem_out(mux_tree_size2_28_sram),
		.mem_outb(mux_tree_size2_28_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_28_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_29_ccff_tail),
		.mem_out(mux_tree_size2_29_sram),
		.mem_outb(mux_tree_size2_29_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_29_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_30_ccff_tail),
		.mem_out(mux_tree_size2_30_sram),
		.mem_outb(mux_tree_size2_30_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_30_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_31_ccff_tail),
		.mem_out(mux_tree_size2_31_sram),
		.mem_outb(mux_tree_size2_31_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_31_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_32_ccff_tail),
		.mem_out(mux_tree_size2_32_sram),
		.mem_outb(mux_tree_size2_32_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_32_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_33_ccff_tail),
		.mem_out(mux_tree_size2_33_sram),
		.mem_outb(mux_tree_size2_33_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_33_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_34_ccff_tail),
		.mem_out(mux_tree_size2_34_sram),
		.mem_outb(mux_tree_size2_34_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b1_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_34_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_35_ccff_tail),
		.mem_out(mux_tree_size2_35_sram),
		.mem_outb(mux_tree_size2_35_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_35_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_36_ccff_tail),
		.mem_out(mux_tree_size2_36_sram),
		.mem_outb(mux_tree_size2_36_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_36_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_37_ccff_tail),
		.mem_out(mux_tree_size2_37_sram),
		.mem_outb(mux_tree_size2_37_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_37_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_38_ccff_tail),
		.mem_out(mux_tree_size2_38_sram),
		.mem_outb(mux_tree_size2_38_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_38_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_39_ccff_tail),
		.mem_out(mux_tree_size2_39_sram),
		.mem_outb(mux_tree_size2_39_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_39_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_40_ccff_tail),
		.mem_out(mux_tree_size2_40_sram),
		.mem_outb(mux_tree_size2_40_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_40_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_41_ccff_tail),
		.mem_out(mux_tree_size2_41_sram),
		.mem_outb(mux_tree_size2_41_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_41_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_42_ccff_tail),
		.mem_out(mux_tree_size2_42_sram),
		.mem_outb(mux_tree_size2_42_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_42_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_43_ccff_tail),
		.mem_out(mux_tree_size2_43_sram),
		.mem_outb(mux_tree_size2_43_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_43_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_44_ccff_tail),
		.mem_out(mux_tree_size2_44_sram),
		.mem_outb(mux_tree_size2_44_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_44_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_45_ccff_tail),
		.mem_out(mux_tree_size2_45_sram),
		.mem_outb(mux_tree_size2_45_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_45_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_46_ccff_tail),
		.mem_out(mux_tree_size2_46_sram),
		.mem_outb(mux_tree_size2_46_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_46_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_47_ccff_tail),
		.mem_out(mux_tree_size2_47_sram),
		.mem_outb(mux_tree_size2_47_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_47_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_48_ccff_tail),
		.mem_out(mux_tree_size2_48_sram),
		.mem_outb(mux_tree_size2_48_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_48_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_49_ccff_tail),
		.mem_out(mux_tree_size2_49_sram),
		.mem_outb(mux_tree_size2_49_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_49_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_50_ccff_tail),
		.mem_out(mux_tree_size2_50_sram),
		.mem_outb(mux_tree_size2_50_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_50_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_51_ccff_tail),
		.mem_out(mux_tree_size2_51_sram),
		.mem_outb(mux_tree_size2_51_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_51_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_52_ccff_tail),
		.mem_out(mux_tree_size2_52_sram),
		.mem_outb(mux_tree_size2_52_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_a2_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_52_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_53_ccff_tail),
		.mem_out(mux_tree_size2_53_sram),
		.mem_outb(mux_tree_size2_53_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_53_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_54_ccff_tail),
		.mem_out(mux_tree_size2_54_sram),
		.mem_outb(mux_tree_size2_54_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_54_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_55_ccff_tail),
		.mem_out(mux_tree_size2_55_sram),
		.mem_outb(mux_tree_size2_55_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_55_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_56_ccff_tail),
		.mem_out(mux_tree_size2_56_sram),
		.mem_outb(mux_tree_size2_56_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_56_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_57_ccff_tail),
		.mem_out(mux_tree_size2_57_sram),
		.mem_outb(mux_tree_size2_57_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_57_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_58_ccff_tail),
		.mem_out(mux_tree_size2_58_sram),
		.mem_outb(mux_tree_size2_58_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_58_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_59_ccff_tail),
		.mem_out(mux_tree_size2_59_sram),
		.mem_outb(mux_tree_size2_59_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_59_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_60_ccff_tail),
		.mem_out(mux_tree_size2_60_sram),
		.mem_outb(mux_tree_size2_60_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_60_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_61_ccff_tail),
		.mem_out(mux_tree_size2_61_sram),
		.mem_outb(mux_tree_size2_61_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_61_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_62_ccff_tail),
		.mem_out(mux_tree_size2_62_sram),
		.mem_outb(mux_tree_size2_62_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_62_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_63_ccff_tail),
		.mem_out(mux_tree_size2_63_sram),
		.mem_outb(mux_tree_size2_63_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_63_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_64_ccff_tail),
		.mem_out(mux_tree_size2_64_sram),
		.mem_outb(mux_tree_size2_64_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_64_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_65_ccff_tail),
		.mem_out(mux_tree_size2_65_sram),
		.mem_outb(mux_tree_size2_65_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_65_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_66_ccff_tail),
		.mem_out(mux_tree_size2_66_sram),
		.mem_outb(mux_tree_size2_66_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_66_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_67_ccff_tail),
		.mem_out(mux_tree_size2_67_sram),
		.mem_outb(mux_tree_size2_67_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_67_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_68_ccff_tail),
		.mem_out(mux_tree_size2_68_sram),
		.mem_outb(mux_tree_size2_68_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_68_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_69_ccff_tail),
		.mem_out(mux_tree_size2_69_sram),
		.mem_outb(mux_tree_size2_69_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_69_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_70_ccff_tail),
		.mem_out(mux_tree_size2_70_sram),
		.mem_outb(mux_tree_size2_70_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_b2_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_70_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size2_71_sram),
		.mem_outb(mux_tree_size2_71_sram_inv));

	direct_interc direct_interc_0_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_0_ff_group_SO),
		.out(ff_wrap_sc_out[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_1_ff_group_SO),
		.out(ff_wrap_sc_out[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_2_ff_group_SO),
		.out(ff_wrap_sc_out[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_3_ff_group_SO),
		.out(ff_wrap_sc_out[3]));

	direct_interc direct_interc_4_ (
		.in(ff_wrap_rdata_a1[0]),
		.out(direct_interc_4_out));

	direct_interc direct_interc_5_ (
		.in(ff_wrap_rdata_a1[1]),
		.out(direct_interc_5_out));

	direct_interc direct_interc_6_ (
		.in(ff_wrap_rdata_a1[2]),
		.out(direct_interc_6_out));

	direct_interc direct_interc_7_ (
		.in(ff_wrap_rdata_a1[3]),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(ff_wrap_rdata_a1[4]),
		.out(direct_interc_8_out));

	direct_interc direct_interc_9_ (
		.in(ff_wrap_rdata_a1[5]),
		.out(direct_interc_9_out));

	direct_interc direct_interc_10_ (
		.in(ff_wrap_rdata_a1[6]),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(ff_wrap_rdata_a1[7]),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(ff_wrap_rdata_a1[8]),
		.out(direct_interc_12_out));

	direct_interc direct_interc_13_ (
		.in(ff_wrap_rdata_a1[9]),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(ff_wrap_rdata_a1[10]),
		.out(direct_interc_14_out));

	direct_interc direct_interc_15_ (
		.in(ff_wrap_rdata_a1[11]),
		.out(direct_interc_15_out));

	direct_interc direct_interc_16_ (
		.in(ff_wrap_rdata_a1[12]),
		.out(direct_interc_16_out));

	direct_interc direct_interc_17_ (
		.in(ff_wrap_rdata_a1[13]),
		.out(direct_interc_17_out));

	direct_interc direct_interc_18_ (
		.in(ff_wrap_rdata_a1[14]),
		.out(direct_interc_18_out));

	direct_interc direct_interc_19_ (
		.in(ff_wrap_rdata_a1[15]),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(ff_wrap_rdata_a1[16]),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(ff_wrap_rdata_a1[17]),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(ff_wrap_sc_in[0]),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(ff_wrap_clock[0]),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(ff_wrap_reset[0]),
		.out(direct_interc_24_out));

	direct_interc direct_interc_25_ (
		.in(ff_wrap_enable[0]),
		.out(direct_interc_25_out));

	direct_interc direct_interc_26_ (
		.in(ff_wrap_rdata_b1[0]),
		.out(direct_interc_26_out));

	direct_interc direct_interc_27_ (
		.in(ff_wrap_rdata_b1[1]),
		.out(direct_interc_27_out));

	direct_interc direct_interc_28_ (
		.in(ff_wrap_rdata_b1[2]),
		.out(direct_interc_28_out));

	direct_interc direct_interc_29_ (
		.in(ff_wrap_rdata_b1[3]),
		.out(direct_interc_29_out));

	direct_interc direct_interc_30_ (
		.in(ff_wrap_rdata_b1[4]),
		.out(direct_interc_30_out));

	direct_interc direct_interc_31_ (
		.in(ff_wrap_rdata_b1[5]),
		.out(direct_interc_31_out));

	direct_interc direct_interc_32_ (
		.in(ff_wrap_rdata_b1[6]),
		.out(direct_interc_32_out));

	direct_interc direct_interc_33_ (
		.in(ff_wrap_rdata_b1[7]),
		.out(direct_interc_33_out));

	direct_interc direct_interc_34_ (
		.in(ff_wrap_rdata_b1[8]),
		.out(direct_interc_34_out));

	direct_interc direct_interc_35_ (
		.in(ff_wrap_rdata_b1[9]),
		.out(direct_interc_35_out));

	direct_interc direct_interc_36_ (
		.in(ff_wrap_rdata_b1[10]),
		.out(direct_interc_36_out));

	direct_interc direct_interc_37_ (
		.in(ff_wrap_rdata_b1[11]),
		.out(direct_interc_37_out));

	direct_interc direct_interc_38_ (
		.in(ff_wrap_rdata_b1[12]),
		.out(direct_interc_38_out));

	direct_interc direct_interc_39_ (
		.in(ff_wrap_rdata_b1[13]),
		.out(direct_interc_39_out));

	direct_interc direct_interc_40_ (
		.in(ff_wrap_rdata_b1[14]),
		.out(direct_interc_40_out));

	direct_interc direct_interc_41_ (
		.in(ff_wrap_rdata_b1[15]),
		.out(direct_interc_41_out));

	direct_interc direct_interc_42_ (
		.in(ff_wrap_rdata_b1[16]),
		.out(direct_interc_42_out));

	direct_interc direct_interc_43_ (
		.in(ff_wrap_rdata_b1[17]),
		.out(direct_interc_43_out));

	direct_interc direct_interc_44_ (
		.in(ff_wrap_sc_in[1]),
		.out(direct_interc_44_out));

	direct_interc direct_interc_45_ (
		.in(ff_wrap_clock[1]),
		.out(direct_interc_45_out));

	direct_interc direct_interc_46_ (
		.in(ff_wrap_reset[1]),
		.out(direct_interc_46_out));

	direct_interc direct_interc_47_ (
		.in(ff_wrap_enable[1]),
		.out(direct_interc_47_out));

	direct_interc direct_interc_48_ (
		.in(ff_wrap_rdata_a2[0]),
		.out(direct_interc_48_out));

	direct_interc direct_interc_49_ (
		.in(ff_wrap_rdata_a2[1]),
		.out(direct_interc_49_out));

	direct_interc direct_interc_50_ (
		.in(ff_wrap_rdata_a2[2]),
		.out(direct_interc_50_out));

	direct_interc direct_interc_51_ (
		.in(ff_wrap_rdata_a2[3]),
		.out(direct_interc_51_out));

	direct_interc direct_interc_52_ (
		.in(ff_wrap_rdata_a2[4]),
		.out(direct_interc_52_out));

	direct_interc direct_interc_53_ (
		.in(ff_wrap_rdata_a2[5]),
		.out(direct_interc_53_out));

	direct_interc direct_interc_54_ (
		.in(ff_wrap_rdata_a2[6]),
		.out(direct_interc_54_out));

	direct_interc direct_interc_55_ (
		.in(ff_wrap_rdata_a2[7]),
		.out(direct_interc_55_out));

	direct_interc direct_interc_56_ (
		.in(ff_wrap_rdata_a2[8]),
		.out(direct_interc_56_out));

	direct_interc direct_interc_57_ (
		.in(ff_wrap_rdata_a2[9]),
		.out(direct_interc_57_out));

	direct_interc direct_interc_58_ (
		.in(ff_wrap_rdata_a2[10]),
		.out(direct_interc_58_out));

	direct_interc direct_interc_59_ (
		.in(ff_wrap_rdata_a2[11]),
		.out(direct_interc_59_out));

	direct_interc direct_interc_60_ (
		.in(ff_wrap_rdata_a2[12]),
		.out(direct_interc_60_out));

	direct_interc direct_interc_61_ (
		.in(ff_wrap_rdata_a2[13]),
		.out(direct_interc_61_out));

	direct_interc direct_interc_62_ (
		.in(ff_wrap_rdata_a2[14]),
		.out(direct_interc_62_out));

	direct_interc direct_interc_63_ (
		.in(ff_wrap_rdata_a2[15]),
		.out(direct_interc_63_out));

	direct_interc direct_interc_64_ (
		.in(ff_wrap_rdata_a2[16]),
		.out(direct_interc_64_out));

	direct_interc direct_interc_65_ (
		.in(ff_wrap_rdata_a2[17]),
		.out(direct_interc_65_out));

	direct_interc direct_interc_66_ (
		.in(ff_wrap_sc_in[2]),
		.out(direct_interc_66_out));

	direct_interc direct_interc_67_ (
		.in(ff_wrap_clock[2]),
		.out(direct_interc_67_out));

	direct_interc direct_interc_68_ (
		.in(ff_wrap_reset[2]),
		.out(direct_interc_68_out));

	direct_interc direct_interc_69_ (
		.in(ff_wrap_enable[2]),
		.out(direct_interc_69_out));

	direct_interc direct_interc_70_ (
		.in(ff_wrap_rdata_b2[0]),
		.out(direct_interc_70_out));

	direct_interc direct_interc_71_ (
		.in(ff_wrap_rdata_b2[1]),
		.out(direct_interc_71_out));

	direct_interc direct_interc_72_ (
		.in(ff_wrap_rdata_b2[2]),
		.out(direct_interc_72_out));

	direct_interc direct_interc_73_ (
		.in(ff_wrap_rdata_b2[3]),
		.out(direct_interc_73_out));

	direct_interc direct_interc_74_ (
		.in(ff_wrap_rdata_b2[4]),
		.out(direct_interc_74_out));

	direct_interc direct_interc_75_ (
		.in(ff_wrap_rdata_b2[5]),
		.out(direct_interc_75_out));

	direct_interc direct_interc_76_ (
		.in(ff_wrap_rdata_b2[6]),
		.out(direct_interc_76_out));

	direct_interc direct_interc_77_ (
		.in(ff_wrap_rdata_b2[7]),
		.out(direct_interc_77_out));

	direct_interc direct_interc_78_ (
		.in(ff_wrap_rdata_b2[8]),
		.out(direct_interc_78_out));

	direct_interc direct_interc_79_ (
		.in(ff_wrap_rdata_b2[9]),
		.out(direct_interc_79_out));

	direct_interc direct_interc_80_ (
		.in(ff_wrap_rdata_b2[10]),
		.out(direct_interc_80_out));

	direct_interc direct_interc_81_ (
		.in(ff_wrap_rdata_b2[11]),
		.out(direct_interc_81_out));

	direct_interc direct_interc_82_ (
		.in(ff_wrap_rdata_b2[12]),
		.out(direct_interc_82_out));

	direct_interc direct_interc_83_ (
		.in(ff_wrap_rdata_b2[13]),
		.out(direct_interc_83_out));

	direct_interc direct_interc_84_ (
		.in(ff_wrap_rdata_b2[14]),
		.out(direct_interc_84_out));

	direct_interc direct_interc_85_ (
		.in(ff_wrap_rdata_b2[15]),
		.out(direct_interc_85_out));

	direct_interc direct_interc_86_ (
		.in(ff_wrap_rdata_b2[16]),
		.out(direct_interc_86_out));

	direct_interc direct_interc_87_ (
		.in(ff_wrap_rdata_b2[17]),
		.out(direct_interc_87_out));

	direct_interc direct_interc_88_ (
		.in(ff_wrap_sc_in[3]),
		.out(direct_interc_88_out));

	direct_interc direct_interc_89_ (
		.in(ff_wrap_clock[3]),
		.out(direct_interc_89_out));

	direct_interc direct_interc_90_ (
		.in(ff_wrap_reset[3]),
		.out(direct_interc_90_out));

	direct_interc direct_interc_91_ (
		.in(ff_wrap_enable[3]),
		.out(direct_interc_91_out));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__ff_wrap -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: ff_wrap -----
