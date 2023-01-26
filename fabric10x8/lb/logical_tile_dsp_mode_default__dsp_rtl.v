//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: dsp_rtl
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: dsp_rtl -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_dsp_mode_default__dsp_rtl -----
module logical_tile_dsp_mode_default__dsp_rtl(scan_mode,
                                              scan_enable,
                                              global_reset,
                                              config_enable,
                                              prog_clock,
                                              dsp_rtl_a_i,
                                              dsp_rtl_b_i,
                                              dsp_rtl_feedback,
                                              dsp_rtl_unsigned_a,
                                              dsp_rtl_unsigned_b,
                                              dsp_rtl_lreset,
                                              dsp_rtl_shift_right,
                                              dsp_rtl_saturate_enable,
                                              dsp_rtl_round,
                                              dsp_rtl_subtract,
                                              dsp_rtl_load_acc,
                                              dsp_rtl_acc_fir_i,
                                              dsp_rtl_sc_in,
                                              dsp_rtl_clk,
                                              ccff_head,
                                              dsp_rtl_z_o,
                                              dsp_rtl_dly_b_o,
                                              dsp_rtl_sc_out,
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
input [0:19] dsp_rtl_a_i;
//----- INPUT PORTS -----
input [0:17] dsp_rtl_b_i;
//----- INPUT PORTS -----
input [0:2] dsp_rtl_feedback;
//----- INPUT PORTS -----
input [0:0] dsp_rtl_unsigned_a;
//----- INPUT PORTS -----
input [0:0] dsp_rtl_unsigned_b;
//----- INPUT PORTS -----
input [0:0] dsp_rtl_lreset;
//----- INPUT PORTS -----
input [0:5] dsp_rtl_shift_right;
//----- INPUT PORTS -----
input [0:0] dsp_rtl_saturate_enable;
//----- INPUT PORTS -----
input [0:0] dsp_rtl_round;
//----- INPUT PORTS -----
input [0:0] dsp_rtl_subtract;
//----- INPUT PORTS -----
input [0:0] dsp_rtl_load_acc;
//----- INPUT PORTS -----
input [0:5] dsp_rtl_acc_fir_i;
//----- INPUT PORTS -----
input [0:19] dsp_rtl_sc_in;
//----- INPUT PORTS -----
input [0:0] dsp_rtl_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:37] dsp_rtl_z_o;
//----- OUTPUT PORTS -----
output [0:17] dsp_rtl_dly_b_o;
//----- OUTPUT PORTS -----
output [0:19] dsp_rtl_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:17] logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o;
wire [0:19] logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out;
wire [0:37] logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0 (
		.scan_mode(scan_mode),
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.dsp_phy_a_i({direct_interc_76_out, direct_interc_77_out, direct_interc_78_out, direct_interc_79_out, direct_interc_80_out, direct_interc_81_out, direct_interc_82_out, direct_interc_83_out, direct_interc_84_out, direct_interc_85_out, direct_interc_86_out, direct_interc_87_out, direct_interc_88_out, direct_interc_89_out, direct_interc_90_out, direct_interc_91_out, direct_interc_92_out, direct_interc_93_out, direct_interc_94_out, direct_interc_95_out}),
		.dsp_phy_b_i({direct_interc_96_out, direct_interc_97_out, direct_interc_98_out, direct_interc_99_out, direct_interc_100_out, direct_interc_101_out, direct_interc_102_out, direct_interc_103_out, direct_interc_104_out, direct_interc_105_out, direct_interc_106_out, direct_interc_107_out, direct_interc_108_out, direct_interc_109_out, direct_interc_110_out, direct_interc_111_out, direct_interc_112_out, direct_interc_113_out}),
		.dsp_phy_feedback({direct_interc_114_out, direct_interc_115_out, direct_interc_116_out}),
		.dsp_phy_unsigned_a(direct_interc_117_out),
		.dsp_phy_unsigned_b(direct_interc_118_out),
		.dsp_phy_lreset(direct_interc_119_out),
		.dsp_phy_shift_right({direct_interc_120_out, direct_interc_121_out, direct_interc_122_out, direct_interc_123_out, direct_interc_124_out, direct_interc_125_out}),
		.dsp_phy_saturate_enable(direct_interc_126_out),
		.dsp_phy_round(direct_interc_127_out),
		.dsp_phy_subtract(direct_interc_128_out),
		.dsp_phy_load_acc(direct_interc_129_out),
		.dsp_phy_acc_fir_i({direct_interc_130_out, direct_interc_131_out, direct_interc_132_out, direct_interc_133_out, direct_interc_134_out, direct_interc_135_out}),
		.dsp_phy_sc_in({direct_interc_136_out, direct_interc_137_out, direct_interc_138_out, direct_interc_139_out, direct_interc_140_out, direct_interc_141_out, direct_interc_142_out, direct_interc_143_out, direct_interc_144_out, direct_interc_145_out, direct_interc_146_out, direct_interc_147_out, direct_interc_148_out, direct_interc_149_out, direct_interc_150_out, direct_interc_151_out, direct_interc_152_out, direct_interc_153_out, direct_interc_154_out, direct_interc_155_out}),
		.ccff_head(ccff_head),
		.dsp_phy_z_o(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[0:37]),
		.dsp_phy_dly_b_o(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[0:17]),
		.dsp_phy_sc_out(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[0:19]),
		.ccff_tail(ccff_tail),
		.dsp_phy_clk(direct_interc_156_out));

	direct_interc direct_interc_0_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[0]),
		.out(dsp_rtl_z_o[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[1]),
		.out(dsp_rtl_z_o[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[2]),
		.out(dsp_rtl_z_o[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[3]),
		.out(dsp_rtl_z_o[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[4]),
		.out(dsp_rtl_z_o[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[5]),
		.out(dsp_rtl_z_o[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[6]),
		.out(dsp_rtl_z_o[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[7]),
		.out(dsp_rtl_z_o[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[8]),
		.out(dsp_rtl_z_o[8]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[9]),
		.out(dsp_rtl_z_o[9]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[10]),
		.out(dsp_rtl_z_o[10]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[11]),
		.out(dsp_rtl_z_o[11]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[12]),
		.out(dsp_rtl_z_o[12]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[13]),
		.out(dsp_rtl_z_o[13]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[14]),
		.out(dsp_rtl_z_o[14]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[15]),
		.out(dsp_rtl_z_o[15]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[16]),
		.out(dsp_rtl_z_o[16]));

	direct_interc direct_interc_17_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[17]),
		.out(dsp_rtl_z_o[17]));

	direct_interc direct_interc_18_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[18]),
		.out(dsp_rtl_z_o[18]));

	direct_interc direct_interc_19_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[19]),
		.out(dsp_rtl_z_o[19]));

	direct_interc direct_interc_20_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[20]),
		.out(dsp_rtl_z_o[20]));

	direct_interc direct_interc_21_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[21]),
		.out(dsp_rtl_z_o[21]));

	direct_interc direct_interc_22_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[22]),
		.out(dsp_rtl_z_o[22]));

	direct_interc direct_interc_23_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[23]),
		.out(dsp_rtl_z_o[23]));

	direct_interc direct_interc_24_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[24]),
		.out(dsp_rtl_z_o[24]));

	direct_interc direct_interc_25_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[25]),
		.out(dsp_rtl_z_o[25]));

	direct_interc direct_interc_26_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[26]),
		.out(dsp_rtl_z_o[26]));

	direct_interc direct_interc_27_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[27]),
		.out(dsp_rtl_z_o[27]));

	direct_interc direct_interc_28_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[28]),
		.out(dsp_rtl_z_o[28]));

	direct_interc direct_interc_29_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[29]),
		.out(dsp_rtl_z_o[29]));

	direct_interc direct_interc_30_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[30]),
		.out(dsp_rtl_z_o[30]));

	direct_interc direct_interc_31_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[31]),
		.out(dsp_rtl_z_o[31]));

	direct_interc direct_interc_32_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[32]),
		.out(dsp_rtl_z_o[32]));

	direct_interc direct_interc_33_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[33]),
		.out(dsp_rtl_z_o[33]));

	direct_interc direct_interc_34_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[34]),
		.out(dsp_rtl_z_o[34]));

	direct_interc direct_interc_35_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[35]),
		.out(dsp_rtl_z_o[35]));

	direct_interc direct_interc_36_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[36]),
		.out(dsp_rtl_z_o[36]));

	direct_interc direct_interc_37_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_z_o[37]),
		.out(dsp_rtl_z_o[37]));

	direct_interc direct_interc_38_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[0]),
		.out(dsp_rtl_dly_b_o[0]));

	direct_interc direct_interc_39_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[1]),
		.out(dsp_rtl_dly_b_o[1]));

	direct_interc direct_interc_40_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[2]),
		.out(dsp_rtl_dly_b_o[2]));

	direct_interc direct_interc_41_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[3]),
		.out(dsp_rtl_dly_b_o[3]));

	direct_interc direct_interc_42_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[4]),
		.out(dsp_rtl_dly_b_o[4]));

	direct_interc direct_interc_43_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[5]),
		.out(dsp_rtl_dly_b_o[5]));

	direct_interc direct_interc_44_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[6]),
		.out(dsp_rtl_dly_b_o[6]));

	direct_interc direct_interc_45_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[7]),
		.out(dsp_rtl_dly_b_o[7]));

	direct_interc direct_interc_46_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[8]),
		.out(dsp_rtl_dly_b_o[8]));

	direct_interc direct_interc_47_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[9]),
		.out(dsp_rtl_dly_b_o[9]));

	direct_interc direct_interc_48_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[10]),
		.out(dsp_rtl_dly_b_o[10]));

	direct_interc direct_interc_49_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[11]),
		.out(dsp_rtl_dly_b_o[11]));

	direct_interc direct_interc_50_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[12]),
		.out(dsp_rtl_dly_b_o[12]));

	direct_interc direct_interc_51_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[13]),
		.out(dsp_rtl_dly_b_o[13]));

	direct_interc direct_interc_52_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[14]),
		.out(dsp_rtl_dly_b_o[14]));

	direct_interc direct_interc_53_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[15]),
		.out(dsp_rtl_dly_b_o[15]));

	direct_interc direct_interc_54_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[16]),
		.out(dsp_rtl_dly_b_o[16]));

	direct_interc direct_interc_55_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_dly_b_o[17]),
		.out(dsp_rtl_dly_b_o[17]));

	direct_interc direct_interc_56_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[0]),
		.out(dsp_rtl_sc_out[0]));

	direct_interc direct_interc_57_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[1]),
		.out(dsp_rtl_sc_out[1]));

	direct_interc direct_interc_58_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[2]),
		.out(dsp_rtl_sc_out[2]));

	direct_interc direct_interc_59_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[3]),
		.out(dsp_rtl_sc_out[3]));

	direct_interc direct_interc_60_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[4]),
		.out(dsp_rtl_sc_out[4]));

	direct_interc direct_interc_61_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[5]),
		.out(dsp_rtl_sc_out[5]));

	direct_interc direct_interc_62_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[6]),
		.out(dsp_rtl_sc_out[6]));

	direct_interc direct_interc_63_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[7]),
		.out(dsp_rtl_sc_out[7]));

	direct_interc direct_interc_64_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[8]),
		.out(dsp_rtl_sc_out[8]));

	direct_interc direct_interc_65_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[9]),
		.out(dsp_rtl_sc_out[9]));

	direct_interc direct_interc_66_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[10]),
		.out(dsp_rtl_sc_out[10]));

	direct_interc direct_interc_67_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[11]),
		.out(dsp_rtl_sc_out[11]));

	direct_interc direct_interc_68_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[12]),
		.out(dsp_rtl_sc_out[12]));

	direct_interc direct_interc_69_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[13]),
		.out(dsp_rtl_sc_out[13]));

	direct_interc direct_interc_70_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[14]),
		.out(dsp_rtl_sc_out[14]));

	direct_interc direct_interc_71_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[15]),
		.out(dsp_rtl_sc_out[15]));

	direct_interc direct_interc_72_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[16]),
		.out(dsp_rtl_sc_out[16]));

	direct_interc direct_interc_73_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[17]),
		.out(dsp_rtl_sc_out[17]));

	direct_interc direct_interc_74_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[18]),
		.out(dsp_rtl_sc_out[18]));

	direct_interc direct_interc_75_ (
		.in(logical_tile_dsp_mode_default__dsp_rtl_mode_physical__dsp_phy_0_dsp_phy_sc_out[19]),
		.out(dsp_rtl_sc_out[19]));

	direct_interc direct_interc_76_ (
		.in(dsp_rtl_a_i[0]),
		.out(direct_interc_76_out));

	direct_interc direct_interc_77_ (
		.in(dsp_rtl_a_i[1]),
		.out(direct_interc_77_out));

	direct_interc direct_interc_78_ (
		.in(dsp_rtl_a_i[2]),
		.out(direct_interc_78_out));

	direct_interc direct_interc_79_ (
		.in(dsp_rtl_a_i[3]),
		.out(direct_interc_79_out));

	direct_interc direct_interc_80_ (
		.in(dsp_rtl_a_i[4]),
		.out(direct_interc_80_out));

	direct_interc direct_interc_81_ (
		.in(dsp_rtl_a_i[5]),
		.out(direct_interc_81_out));

	direct_interc direct_interc_82_ (
		.in(dsp_rtl_a_i[6]),
		.out(direct_interc_82_out));

	direct_interc direct_interc_83_ (
		.in(dsp_rtl_a_i[7]),
		.out(direct_interc_83_out));

	direct_interc direct_interc_84_ (
		.in(dsp_rtl_a_i[8]),
		.out(direct_interc_84_out));

	direct_interc direct_interc_85_ (
		.in(dsp_rtl_a_i[9]),
		.out(direct_interc_85_out));

	direct_interc direct_interc_86_ (
		.in(dsp_rtl_a_i[10]),
		.out(direct_interc_86_out));

	direct_interc direct_interc_87_ (
		.in(dsp_rtl_a_i[11]),
		.out(direct_interc_87_out));

	direct_interc direct_interc_88_ (
		.in(dsp_rtl_a_i[12]),
		.out(direct_interc_88_out));

	direct_interc direct_interc_89_ (
		.in(dsp_rtl_a_i[13]),
		.out(direct_interc_89_out));

	direct_interc direct_interc_90_ (
		.in(dsp_rtl_a_i[14]),
		.out(direct_interc_90_out));

	direct_interc direct_interc_91_ (
		.in(dsp_rtl_a_i[15]),
		.out(direct_interc_91_out));

	direct_interc direct_interc_92_ (
		.in(dsp_rtl_a_i[16]),
		.out(direct_interc_92_out));

	direct_interc direct_interc_93_ (
		.in(dsp_rtl_a_i[17]),
		.out(direct_interc_93_out));

	direct_interc direct_interc_94_ (
		.in(dsp_rtl_a_i[18]),
		.out(direct_interc_94_out));

	direct_interc direct_interc_95_ (
		.in(dsp_rtl_a_i[19]),
		.out(direct_interc_95_out));

	direct_interc direct_interc_96_ (
		.in(dsp_rtl_b_i[0]),
		.out(direct_interc_96_out));

	direct_interc direct_interc_97_ (
		.in(dsp_rtl_b_i[1]),
		.out(direct_interc_97_out));

	direct_interc direct_interc_98_ (
		.in(dsp_rtl_b_i[2]),
		.out(direct_interc_98_out));

	direct_interc direct_interc_99_ (
		.in(dsp_rtl_b_i[3]),
		.out(direct_interc_99_out));

	direct_interc direct_interc_100_ (
		.in(dsp_rtl_b_i[4]),
		.out(direct_interc_100_out));

	direct_interc direct_interc_101_ (
		.in(dsp_rtl_b_i[5]),
		.out(direct_interc_101_out));

	direct_interc direct_interc_102_ (
		.in(dsp_rtl_b_i[6]),
		.out(direct_interc_102_out));

	direct_interc direct_interc_103_ (
		.in(dsp_rtl_b_i[7]),
		.out(direct_interc_103_out));

	direct_interc direct_interc_104_ (
		.in(dsp_rtl_b_i[8]),
		.out(direct_interc_104_out));

	direct_interc direct_interc_105_ (
		.in(dsp_rtl_b_i[9]),
		.out(direct_interc_105_out));

	direct_interc direct_interc_106_ (
		.in(dsp_rtl_b_i[10]),
		.out(direct_interc_106_out));

	direct_interc direct_interc_107_ (
		.in(dsp_rtl_b_i[11]),
		.out(direct_interc_107_out));

	direct_interc direct_interc_108_ (
		.in(dsp_rtl_b_i[12]),
		.out(direct_interc_108_out));

	direct_interc direct_interc_109_ (
		.in(dsp_rtl_b_i[13]),
		.out(direct_interc_109_out));

	direct_interc direct_interc_110_ (
		.in(dsp_rtl_b_i[14]),
		.out(direct_interc_110_out));

	direct_interc direct_interc_111_ (
		.in(dsp_rtl_b_i[15]),
		.out(direct_interc_111_out));

	direct_interc direct_interc_112_ (
		.in(dsp_rtl_b_i[16]),
		.out(direct_interc_112_out));

	direct_interc direct_interc_113_ (
		.in(dsp_rtl_b_i[17]),
		.out(direct_interc_113_out));

	direct_interc direct_interc_114_ (
		.in(dsp_rtl_feedback[0]),
		.out(direct_interc_114_out));

	direct_interc direct_interc_115_ (
		.in(dsp_rtl_feedback[1]),
		.out(direct_interc_115_out));

	direct_interc direct_interc_116_ (
		.in(dsp_rtl_feedback[2]),
		.out(direct_interc_116_out));

	direct_interc direct_interc_117_ (
		.in(dsp_rtl_unsigned_a),
		.out(direct_interc_117_out));

	direct_interc direct_interc_118_ (
		.in(dsp_rtl_unsigned_b),
		.out(direct_interc_118_out));

	direct_interc direct_interc_119_ (
		.in(dsp_rtl_lreset),
		.out(direct_interc_119_out));

	direct_interc direct_interc_120_ (
		.in(dsp_rtl_shift_right[0]),
		.out(direct_interc_120_out));

	direct_interc direct_interc_121_ (
		.in(dsp_rtl_shift_right[1]),
		.out(direct_interc_121_out));

	direct_interc direct_interc_122_ (
		.in(dsp_rtl_shift_right[2]),
		.out(direct_interc_122_out));

	direct_interc direct_interc_123_ (
		.in(dsp_rtl_shift_right[3]),
		.out(direct_interc_123_out));

	direct_interc direct_interc_124_ (
		.in(dsp_rtl_shift_right[4]),
		.out(direct_interc_124_out));

	direct_interc direct_interc_125_ (
		.in(dsp_rtl_shift_right[5]),
		.out(direct_interc_125_out));

	direct_interc direct_interc_126_ (
		.in(dsp_rtl_saturate_enable),
		.out(direct_interc_126_out));

	direct_interc direct_interc_127_ (
		.in(dsp_rtl_round),
		.out(direct_interc_127_out));

	direct_interc direct_interc_128_ (
		.in(dsp_rtl_subtract),
		.out(direct_interc_128_out));

	direct_interc direct_interc_129_ (
		.in(dsp_rtl_load_acc),
		.out(direct_interc_129_out));

	direct_interc direct_interc_130_ (
		.in(dsp_rtl_acc_fir_i[0]),
		.out(direct_interc_130_out));

	direct_interc direct_interc_131_ (
		.in(dsp_rtl_acc_fir_i[1]),
		.out(direct_interc_131_out));

	direct_interc direct_interc_132_ (
		.in(dsp_rtl_acc_fir_i[2]),
		.out(direct_interc_132_out));

	direct_interc direct_interc_133_ (
		.in(dsp_rtl_acc_fir_i[3]),
		.out(direct_interc_133_out));

	direct_interc direct_interc_134_ (
		.in(dsp_rtl_acc_fir_i[4]),
		.out(direct_interc_134_out));

	direct_interc direct_interc_135_ (
		.in(dsp_rtl_acc_fir_i[5]),
		.out(direct_interc_135_out));

	direct_interc direct_interc_136_ (
		.in(dsp_rtl_sc_in[0]),
		.out(direct_interc_136_out));

	direct_interc direct_interc_137_ (
		.in(dsp_rtl_sc_in[1]),
		.out(direct_interc_137_out));

	direct_interc direct_interc_138_ (
		.in(dsp_rtl_sc_in[2]),
		.out(direct_interc_138_out));

	direct_interc direct_interc_139_ (
		.in(dsp_rtl_sc_in[3]),
		.out(direct_interc_139_out));

	direct_interc direct_interc_140_ (
		.in(dsp_rtl_sc_in[4]),
		.out(direct_interc_140_out));

	direct_interc direct_interc_141_ (
		.in(dsp_rtl_sc_in[5]),
		.out(direct_interc_141_out));

	direct_interc direct_interc_142_ (
		.in(dsp_rtl_sc_in[6]),
		.out(direct_interc_142_out));

	direct_interc direct_interc_143_ (
		.in(dsp_rtl_sc_in[7]),
		.out(direct_interc_143_out));

	direct_interc direct_interc_144_ (
		.in(dsp_rtl_sc_in[8]),
		.out(direct_interc_144_out));

	direct_interc direct_interc_145_ (
		.in(dsp_rtl_sc_in[9]),
		.out(direct_interc_145_out));

	direct_interc direct_interc_146_ (
		.in(dsp_rtl_sc_in[10]),
		.out(direct_interc_146_out));

	direct_interc direct_interc_147_ (
		.in(dsp_rtl_sc_in[11]),
		.out(direct_interc_147_out));

	direct_interc direct_interc_148_ (
		.in(dsp_rtl_sc_in[12]),
		.out(direct_interc_148_out));

	direct_interc direct_interc_149_ (
		.in(dsp_rtl_sc_in[13]),
		.out(direct_interc_149_out));

	direct_interc direct_interc_150_ (
		.in(dsp_rtl_sc_in[14]),
		.out(direct_interc_150_out));

	direct_interc direct_interc_151_ (
		.in(dsp_rtl_sc_in[15]),
		.out(direct_interc_151_out));

	direct_interc direct_interc_152_ (
		.in(dsp_rtl_sc_in[16]),
		.out(direct_interc_152_out));

	direct_interc direct_interc_153_ (
		.in(dsp_rtl_sc_in[17]),
		.out(direct_interc_153_out));

	direct_interc direct_interc_154_ (
		.in(dsp_rtl_sc_in[18]),
		.out(direct_interc_154_out));

	direct_interc direct_interc_155_ (
		.in(dsp_rtl_sc_in[19]),
		.out(direct_interc_155_out));

	direct_interc direct_interc_156_ (
		.in(dsp_rtl_clk),
		.out(direct_interc_156_out));

endmodule
// ----- END Verilog module for logical_tile_dsp_mode_default__dsp_rtl -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: dsp_rtl -----
