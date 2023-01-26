//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: flop_group
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: flop_group -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group -----
module logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group(scan_enable,
                                                                                                global_reset,
                                                                                                scan_mode,
                                                                                                config_enable,
                                                                                                prog_clock,
                                                                                                flop_group_DIN,
                                                                                                flop_group_RESET,
                                                                                                flop_group_ENABLE,
                                                                                                flop_group_SI,
                                                                                                flop_group_CLOCK,
                                                                                                ccff_head,
                                                                                                flop_group_Q,
                                                                                                flop_group_SO,
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
input [0:17] flop_group_DIN;
//----- INPUT PORTS -----
input [0:0] flop_group_RESET;
//----- INPUT PORTS -----
input [0:0] flop_group_ENABLE;
//----- INPUT PORTS -----
input [0:0] flop_group_SI;
//----- INPUT PORTS -----
input [0:0] flop_group_CLOCK;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:17] flop_group_Q;
//----- OUTPUT PORTS -----
output [0:0] flop_group_SO;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_0 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_19_out),
		.MMFF_R(direct_interc_20_out),
		.MMFF_E(direct_interc_21_out),
		.MMFF_SI(direct_interc_22_out),
		.ccff_head(ccff_head),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_0_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_0_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_0_ccff_tail),
		.MMFF_C(direct_interc_23_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_1 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_24_out),
		.MMFF_R(direct_interc_25_out),
		.MMFF_E(direct_interc_26_out),
		.MMFF_SI(direct_interc_27_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_0_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_1_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_1_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_1_ccff_tail),
		.MMFF_C(direct_interc_28_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_2 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_29_out),
		.MMFF_R(direct_interc_30_out),
		.MMFF_E(direct_interc_31_out),
		.MMFF_SI(direct_interc_32_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_1_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_2_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_2_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_2_ccff_tail),
		.MMFF_C(direct_interc_33_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_3 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_34_out),
		.MMFF_R(direct_interc_35_out),
		.MMFF_E(direct_interc_36_out),
		.MMFF_SI(direct_interc_37_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_2_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_3_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_3_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_3_ccff_tail),
		.MMFF_C(direct_interc_38_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_4 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_39_out),
		.MMFF_R(direct_interc_40_out),
		.MMFF_E(direct_interc_41_out),
		.MMFF_SI(direct_interc_42_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_3_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_4_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_4_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_4_ccff_tail),
		.MMFF_C(direct_interc_43_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_5 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_44_out),
		.MMFF_R(direct_interc_45_out),
		.MMFF_E(direct_interc_46_out),
		.MMFF_SI(direct_interc_47_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_4_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_5_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_5_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_5_ccff_tail),
		.MMFF_C(direct_interc_48_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_6 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_49_out),
		.MMFF_R(direct_interc_50_out),
		.MMFF_E(direct_interc_51_out),
		.MMFF_SI(direct_interc_52_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_5_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_6_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_6_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_6_ccff_tail),
		.MMFF_C(direct_interc_53_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_7 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_54_out),
		.MMFF_R(direct_interc_55_out),
		.MMFF_E(direct_interc_56_out),
		.MMFF_SI(direct_interc_57_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_6_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_7_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_7_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_7_ccff_tail),
		.MMFF_C(direct_interc_58_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_8 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_59_out),
		.MMFF_R(direct_interc_60_out),
		.MMFF_E(direct_interc_61_out),
		.MMFF_SI(direct_interc_62_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_7_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_8_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_8_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_8_ccff_tail),
		.MMFF_C(direct_interc_63_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_9 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_64_out),
		.MMFF_R(direct_interc_65_out),
		.MMFF_E(direct_interc_66_out),
		.MMFF_SI(direct_interc_67_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_8_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_9_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_9_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_9_ccff_tail),
		.MMFF_C(direct_interc_68_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_10 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_69_out),
		.MMFF_R(direct_interc_70_out),
		.MMFF_E(direct_interc_71_out),
		.MMFF_SI(direct_interc_72_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_9_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_10_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_10_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_10_ccff_tail),
		.MMFF_C(direct_interc_73_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_11 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_74_out),
		.MMFF_R(direct_interc_75_out),
		.MMFF_E(direct_interc_76_out),
		.MMFF_SI(direct_interc_77_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_10_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_11_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_11_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_11_ccff_tail),
		.MMFF_C(direct_interc_78_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_12 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_79_out),
		.MMFF_R(direct_interc_80_out),
		.MMFF_E(direct_interc_81_out),
		.MMFF_SI(direct_interc_82_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_11_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_12_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_12_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_12_ccff_tail),
		.MMFF_C(direct_interc_83_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_13 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_84_out),
		.MMFF_R(direct_interc_85_out),
		.MMFF_E(direct_interc_86_out),
		.MMFF_SI(direct_interc_87_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_12_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_13_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_13_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_13_ccff_tail),
		.MMFF_C(direct_interc_88_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_14 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_89_out),
		.MMFF_R(direct_interc_90_out),
		.MMFF_E(direct_interc_91_out),
		.MMFF_SI(direct_interc_92_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_13_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_14_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_14_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_14_ccff_tail),
		.MMFF_C(direct_interc_93_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_15 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_94_out),
		.MMFF_R(direct_interc_95_out),
		.MMFF_E(direct_interc_96_out),
		.MMFF_SI(direct_interc_97_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_14_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_15_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_15_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_15_ccff_tail),
		.MMFF_C(direct_interc_98_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_16 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_99_out),
		.MMFF_R(direct_interc_100_out),
		.MMFF_E(direct_interc_101_out),
		.MMFF_SI(direct_interc_102_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_15_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_16_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_16_MMFF_SO),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_16_ccff_tail),
		.MMFF_C(direct_interc_103_out));

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_17 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_104_out),
		.MMFF_R(direct_interc_105_out),
		.MMFF_E(direct_interc_106_out),
		.MMFF_SI(direct_interc_107_out),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_16_ccff_tail),
		.MMFF_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_17_MMFF_Q),
		.MMFF_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_17_MMFF_SO),
		.ccff_tail(ccff_tail),
		.MMFF_C(direct_interc_108_out));

	direct_interc direct_interc_0_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_0_MMFF_Q),
		.out(flop_group_Q[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_1_MMFF_Q),
		.out(flop_group_Q[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_2_MMFF_Q),
		.out(flop_group_Q[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_3_MMFF_Q),
		.out(flop_group_Q[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_4_MMFF_Q),
		.out(flop_group_Q[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_5_MMFF_Q),
		.out(flop_group_Q[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_6_MMFF_Q),
		.out(flop_group_Q[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_7_MMFF_Q),
		.out(flop_group_Q[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_8_MMFF_Q),
		.out(flop_group_Q[8]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_9_MMFF_Q),
		.out(flop_group_Q[9]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_10_MMFF_Q),
		.out(flop_group_Q[10]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_11_MMFF_Q),
		.out(flop_group_Q[11]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_12_MMFF_Q),
		.out(flop_group_Q[12]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_13_MMFF_Q),
		.out(flop_group_Q[13]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_14_MMFF_Q),
		.out(flop_group_Q[14]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_15_MMFF_Q),
		.out(flop_group_Q[15]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_16_MMFF_Q),
		.out(flop_group_Q[16]));

	direct_interc direct_interc_17_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_17_MMFF_Q),
		.out(flop_group_Q[17]));

	direct_interc direct_interc_18_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_17_MMFF_SO),
		.out(flop_group_SO));

	direct_interc direct_interc_19_ (
		.in(flop_group_DIN[0]),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(flop_group_RESET),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(flop_group_SI),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(flop_group_DIN[1]),
		.out(direct_interc_24_out));

	direct_interc direct_interc_25_ (
		.in(flop_group_RESET),
		.out(direct_interc_25_out));

	direct_interc direct_interc_26_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_26_out));

	direct_interc direct_interc_27_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_0_MMFF_SO),
		.out(direct_interc_27_out));

	direct_interc direct_interc_28_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_28_out));

	direct_interc direct_interc_29_ (
		.in(flop_group_DIN[2]),
		.out(direct_interc_29_out));

	direct_interc direct_interc_30_ (
		.in(flop_group_RESET),
		.out(direct_interc_30_out));

	direct_interc direct_interc_31_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_31_out));

	direct_interc direct_interc_32_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_1_MMFF_SO),
		.out(direct_interc_32_out));

	direct_interc direct_interc_33_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_33_out));

	direct_interc direct_interc_34_ (
		.in(flop_group_DIN[3]),
		.out(direct_interc_34_out));

	direct_interc direct_interc_35_ (
		.in(flop_group_RESET),
		.out(direct_interc_35_out));

	direct_interc direct_interc_36_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_36_out));

	direct_interc direct_interc_37_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_2_MMFF_SO),
		.out(direct_interc_37_out));

	direct_interc direct_interc_38_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_38_out));

	direct_interc direct_interc_39_ (
		.in(flop_group_DIN[4]),
		.out(direct_interc_39_out));

	direct_interc direct_interc_40_ (
		.in(flop_group_RESET),
		.out(direct_interc_40_out));

	direct_interc direct_interc_41_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_41_out));

	direct_interc direct_interc_42_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_3_MMFF_SO),
		.out(direct_interc_42_out));

	direct_interc direct_interc_43_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_43_out));

	direct_interc direct_interc_44_ (
		.in(flop_group_DIN[5]),
		.out(direct_interc_44_out));

	direct_interc direct_interc_45_ (
		.in(flop_group_RESET),
		.out(direct_interc_45_out));

	direct_interc direct_interc_46_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_46_out));

	direct_interc direct_interc_47_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_4_MMFF_SO),
		.out(direct_interc_47_out));

	direct_interc direct_interc_48_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_48_out));

	direct_interc direct_interc_49_ (
		.in(flop_group_DIN[6]),
		.out(direct_interc_49_out));

	direct_interc direct_interc_50_ (
		.in(flop_group_RESET),
		.out(direct_interc_50_out));

	direct_interc direct_interc_51_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_51_out));

	direct_interc direct_interc_52_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_5_MMFF_SO),
		.out(direct_interc_52_out));

	direct_interc direct_interc_53_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_53_out));

	direct_interc direct_interc_54_ (
		.in(flop_group_DIN[7]),
		.out(direct_interc_54_out));

	direct_interc direct_interc_55_ (
		.in(flop_group_RESET),
		.out(direct_interc_55_out));

	direct_interc direct_interc_56_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_56_out));

	direct_interc direct_interc_57_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_6_MMFF_SO),
		.out(direct_interc_57_out));

	direct_interc direct_interc_58_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_58_out));

	direct_interc direct_interc_59_ (
		.in(flop_group_DIN[8]),
		.out(direct_interc_59_out));

	direct_interc direct_interc_60_ (
		.in(flop_group_RESET),
		.out(direct_interc_60_out));

	direct_interc direct_interc_61_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_61_out));

	direct_interc direct_interc_62_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_7_MMFF_SO),
		.out(direct_interc_62_out));

	direct_interc direct_interc_63_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_63_out));

	direct_interc direct_interc_64_ (
		.in(flop_group_DIN[9]),
		.out(direct_interc_64_out));

	direct_interc direct_interc_65_ (
		.in(flop_group_RESET),
		.out(direct_interc_65_out));

	direct_interc direct_interc_66_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_66_out));

	direct_interc direct_interc_67_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_8_MMFF_SO),
		.out(direct_interc_67_out));

	direct_interc direct_interc_68_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_68_out));

	direct_interc direct_interc_69_ (
		.in(flop_group_DIN[10]),
		.out(direct_interc_69_out));

	direct_interc direct_interc_70_ (
		.in(flop_group_RESET),
		.out(direct_interc_70_out));

	direct_interc direct_interc_71_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_71_out));

	direct_interc direct_interc_72_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_9_MMFF_SO),
		.out(direct_interc_72_out));

	direct_interc direct_interc_73_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_73_out));

	direct_interc direct_interc_74_ (
		.in(flop_group_DIN[11]),
		.out(direct_interc_74_out));

	direct_interc direct_interc_75_ (
		.in(flop_group_RESET),
		.out(direct_interc_75_out));

	direct_interc direct_interc_76_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_76_out));

	direct_interc direct_interc_77_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_10_MMFF_SO),
		.out(direct_interc_77_out));

	direct_interc direct_interc_78_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_78_out));

	direct_interc direct_interc_79_ (
		.in(flop_group_DIN[12]),
		.out(direct_interc_79_out));

	direct_interc direct_interc_80_ (
		.in(flop_group_RESET),
		.out(direct_interc_80_out));

	direct_interc direct_interc_81_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_81_out));

	direct_interc direct_interc_82_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_11_MMFF_SO),
		.out(direct_interc_82_out));

	direct_interc direct_interc_83_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_83_out));

	direct_interc direct_interc_84_ (
		.in(flop_group_DIN[13]),
		.out(direct_interc_84_out));

	direct_interc direct_interc_85_ (
		.in(flop_group_RESET),
		.out(direct_interc_85_out));

	direct_interc direct_interc_86_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_86_out));

	direct_interc direct_interc_87_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_12_MMFF_SO),
		.out(direct_interc_87_out));

	direct_interc direct_interc_88_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_88_out));

	direct_interc direct_interc_89_ (
		.in(flop_group_DIN[14]),
		.out(direct_interc_89_out));

	direct_interc direct_interc_90_ (
		.in(flop_group_RESET),
		.out(direct_interc_90_out));

	direct_interc direct_interc_91_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_91_out));

	direct_interc direct_interc_92_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_13_MMFF_SO),
		.out(direct_interc_92_out));

	direct_interc direct_interc_93_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_93_out));

	direct_interc direct_interc_94_ (
		.in(flop_group_DIN[15]),
		.out(direct_interc_94_out));

	direct_interc direct_interc_95_ (
		.in(flop_group_RESET),
		.out(direct_interc_95_out));

	direct_interc direct_interc_96_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_96_out));

	direct_interc direct_interc_97_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_14_MMFF_SO),
		.out(direct_interc_97_out));

	direct_interc direct_interc_98_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_98_out));

	direct_interc direct_interc_99_ (
		.in(flop_group_DIN[16]),
		.out(direct_interc_99_out));

	direct_interc direct_interc_100_ (
		.in(flop_group_RESET),
		.out(direct_interc_100_out));

	direct_interc direct_interc_101_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_101_out));

	direct_interc direct_interc_102_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_15_MMFF_SO),
		.out(direct_interc_102_out));

	direct_interc direct_interc_103_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_103_out));

	direct_interc direct_interc_104_ (
		.in(flop_group_DIN[17]),
		.out(direct_interc_104_out));

	direct_interc direct_interc_105_ (
		.in(flop_group_RESET),
		.out(direct_interc_105_out));

	direct_interc direct_interc_106_ (
		.in(flop_group_ENABLE),
		.out(direct_interc_106_out));

	direct_interc direct_interc_107_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF_16_MMFF_SO),
		.out(direct_interc_107_out));

	direct_interc direct_interc_108_ (
		.in(flop_group_CLOCK),
		.out(direct_interc_108_out));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: flop_group -----
