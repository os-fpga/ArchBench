//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: bram
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: bram -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_bram_ -----
module logical_tile_bram_mode_bram_(scan_mode,
                                    scan_enable,
                                    global_reset,
                                    rwm,
                                    config_enable,
                                    prog_clock,
                                    bram_I00,
                                    bram_I10,
                                    bram_I20,
                                    bram_I30,
                                    bram_IS0,
                                    bram_I01,
                                    bram_I11,
                                    bram_I21,
                                    bram_I31,
                                    bram_IS1,
                                    bram_I02,
                                    bram_I12,
                                    bram_I22,
                                    bram_I32,
                                    bram_IS2,
                                    bram_sc_in,
                                    bram_RAM_ID_i,
                                    bram_PL_IN,
                                    bram_PL_DATA_IN,
                                    bram_clk,
                                    ccff_head,
                                    bram_O0,
                                    bram_O1,
                                    bram_O2,
                                    bram_sc_out,
                                    bram_PL_OUT,
                                    bram_PL_DATA_OUT,
                                    ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] global_reset;
//----- GLOBAL PORTS -----
input [0:2] rwm;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:11] bram_I00;
//----- INPUT PORTS -----
input [0:11] bram_I10;
//----- INPUT PORTS -----
input [0:11] bram_I20;
//----- INPUT PORTS -----
input [0:11] bram_I30;
//----- INPUT PORTS -----
input [0:5] bram_IS0;
//----- INPUT PORTS -----
input [0:11] bram_I01;
//----- INPUT PORTS -----
input [0:11] bram_I11;
//----- INPUT PORTS -----
input [0:11] bram_I21;
//----- INPUT PORTS -----
input [0:11] bram_I31;
//----- INPUT PORTS -----
input [0:5] bram_IS1;
//----- INPUT PORTS -----
input [0:11] bram_I02;
//----- INPUT PORTS -----
input [0:11] bram_I12;
//----- INPUT PORTS -----
input [0:11] bram_I22;
//----- INPUT PORTS -----
input [0:11] bram_I32;
//----- INPUT PORTS -----
input [0:5] bram_IS2;
//----- INPUT PORTS -----
input [0:47] bram_sc_in;
//----- INPUT PORTS -----
input [0:19] bram_RAM_ID_i;
//----- INPUT PORTS -----
input [0:73] bram_PL_IN;
//----- INPUT PORTS -----
input [0:35] bram_PL_DATA_IN;
//----- INPUT PORTS -----
input [0:15] bram_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:23] bram_O0;
//----- OUTPUT PORTS -----
output [0:23] bram_O1;
//----- OUTPUT PORTS -----
output [0:23] bram_O2;
//----- OUTPUT PORTS -----
output [0:47] bram_sc_out;
//----- OUTPUT PORTS -----
output [0:73] bram_PL_OUT;
//----- OUTPUT PORTS -----
output [0:35] bram_PL_DATA_OUT;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:31] logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o;
wire [0:35] logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o;
wire [0:1] logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_WEN_o;
wire [0:17] logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o;
wire [0:17] logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o;
wire [0:17] logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o;
wire [0:17] logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o;
wire [0:43] logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out;
wire [0:17] logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1;
wire [0:17] logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2;
wire [0:17] logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1;
wire [0:17] logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2;
wire [0:3] logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_sc_out;
wire [0:1] logical_tile_bram_mode_default__flush_opt_0_flush_opt_O;
wire [0:3] mux_tree_clock_size16_0_sram;
wire [0:3] mux_tree_clock_size16_0_sram_inv;
wire [0:3] mux_tree_clock_size16_1_sram;
wire [0:3] mux_tree_clock_size16_1_sram_inv;
wire [0:3] mux_tree_clock_size16_2_sram;
wire [0:3] mux_tree_clock_size16_2_sram_inv;
wire [0:3] mux_tree_clock_size16_3_sram;
wire [0:3] mux_tree_clock_size16_3_sram_inv;
wire [0:4] mux_tree_size24_0_sram;
wire [0:4] mux_tree_size24_0_sram_inv;
wire [0:4] mux_tree_size24_100_sram;
wire [0:4] mux_tree_size24_100_sram_inv;
wire [0:4] mux_tree_size24_101_sram;
wire [0:4] mux_tree_size24_101_sram_inv;
wire [0:4] mux_tree_size24_102_sram;
wire [0:4] mux_tree_size24_102_sram_inv;
wire [0:4] mux_tree_size24_103_sram;
wire [0:4] mux_tree_size24_103_sram_inv;
wire [0:4] mux_tree_size24_104_sram;
wire [0:4] mux_tree_size24_104_sram_inv;
wire [0:4] mux_tree_size24_105_sram;
wire [0:4] mux_tree_size24_105_sram_inv;
wire [0:4] mux_tree_size24_106_sram;
wire [0:4] mux_tree_size24_106_sram_inv;
wire [0:4] mux_tree_size24_107_sram;
wire [0:4] mux_tree_size24_107_sram_inv;
wire [0:4] mux_tree_size24_108_sram;
wire [0:4] mux_tree_size24_108_sram_inv;
wire [0:4] mux_tree_size24_109_sram;
wire [0:4] mux_tree_size24_109_sram_inv;
wire [0:4] mux_tree_size24_10_sram;
wire [0:4] mux_tree_size24_10_sram_inv;
wire [0:4] mux_tree_size24_110_sram;
wire [0:4] mux_tree_size24_110_sram_inv;
wire [0:4] mux_tree_size24_111_sram;
wire [0:4] mux_tree_size24_111_sram_inv;
wire [0:4] mux_tree_size24_112_sram;
wire [0:4] mux_tree_size24_112_sram_inv;
wire [0:4] mux_tree_size24_113_sram;
wire [0:4] mux_tree_size24_113_sram_inv;
wire [0:4] mux_tree_size24_114_sram;
wire [0:4] mux_tree_size24_114_sram_inv;
wire [0:4] mux_tree_size24_115_sram;
wire [0:4] mux_tree_size24_115_sram_inv;
wire [0:4] mux_tree_size24_116_sram;
wire [0:4] mux_tree_size24_116_sram_inv;
wire [0:4] mux_tree_size24_117_sram;
wire [0:4] mux_tree_size24_117_sram_inv;
wire [0:4] mux_tree_size24_118_sram;
wire [0:4] mux_tree_size24_118_sram_inv;
wire [0:4] mux_tree_size24_119_sram;
wire [0:4] mux_tree_size24_119_sram_inv;
wire [0:4] mux_tree_size24_11_sram;
wire [0:4] mux_tree_size24_11_sram_inv;
wire [0:4] mux_tree_size24_120_sram;
wire [0:4] mux_tree_size24_120_sram_inv;
wire [0:4] mux_tree_size24_121_sram;
wire [0:4] mux_tree_size24_121_sram_inv;
wire [0:4] mux_tree_size24_122_sram;
wire [0:4] mux_tree_size24_122_sram_inv;
wire [0:4] mux_tree_size24_123_sram;
wire [0:4] mux_tree_size24_123_sram_inv;
wire [0:4] mux_tree_size24_124_sram;
wire [0:4] mux_tree_size24_124_sram_inv;
wire [0:4] mux_tree_size24_125_sram;
wire [0:4] mux_tree_size24_125_sram_inv;
wire [0:4] mux_tree_size24_126_sram;
wire [0:4] mux_tree_size24_126_sram_inv;
wire [0:4] mux_tree_size24_127_sram;
wire [0:4] mux_tree_size24_127_sram_inv;
wire [0:4] mux_tree_size24_128_sram;
wire [0:4] mux_tree_size24_128_sram_inv;
wire [0:4] mux_tree_size24_129_sram;
wire [0:4] mux_tree_size24_129_sram_inv;
wire [0:4] mux_tree_size24_12_sram;
wire [0:4] mux_tree_size24_12_sram_inv;
wire [0:4] mux_tree_size24_130_sram;
wire [0:4] mux_tree_size24_130_sram_inv;
wire [0:4] mux_tree_size24_131_sram;
wire [0:4] mux_tree_size24_131_sram_inv;
wire [0:4] mux_tree_size24_132_sram;
wire [0:4] mux_tree_size24_132_sram_inv;
wire [0:4] mux_tree_size24_133_sram;
wire [0:4] mux_tree_size24_133_sram_inv;
wire [0:4] mux_tree_size24_134_sram;
wire [0:4] mux_tree_size24_134_sram_inv;
wire [0:4] mux_tree_size24_135_sram;
wire [0:4] mux_tree_size24_135_sram_inv;
wire [0:4] mux_tree_size24_136_sram;
wire [0:4] mux_tree_size24_136_sram_inv;
wire [0:4] mux_tree_size24_137_sram;
wire [0:4] mux_tree_size24_137_sram_inv;
wire [0:4] mux_tree_size24_138_sram;
wire [0:4] mux_tree_size24_138_sram_inv;
wire [0:4] mux_tree_size24_139_sram;
wire [0:4] mux_tree_size24_139_sram_inv;
wire [0:4] mux_tree_size24_13_sram;
wire [0:4] mux_tree_size24_13_sram_inv;
wire [0:4] mux_tree_size24_140_sram;
wire [0:4] mux_tree_size24_140_sram_inv;
wire [0:4] mux_tree_size24_141_sram;
wire [0:4] mux_tree_size24_141_sram_inv;
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
wire [0:4] mux_tree_size24_59_sram;
wire [0:4] mux_tree_size24_59_sram_inv;
wire [0:4] mux_tree_size24_5_sram;
wire [0:4] mux_tree_size24_5_sram_inv;
wire [0:4] mux_tree_size24_60_sram;
wire [0:4] mux_tree_size24_60_sram_inv;
wire [0:4] mux_tree_size24_61_sram;
wire [0:4] mux_tree_size24_61_sram_inv;
wire [0:4] mux_tree_size24_62_sram;
wire [0:4] mux_tree_size24_62_sram_inv;
wire [0:4] mux_tree_size24_63_sram;
wire [0:4] mux_tree_size24_63_sram_inv;
wire [0:4] mux_tree_size24_64_sram;
wire [0:4] mux_tree_size24_64_sram_inv;
wire [0:4] mux_tree_size24_65_sram;
wire [0:4] mux_tree_size24_65_sram_inv;
wire [0:4] mux_tree_size24_66_sram;
wire [0:4] mux_tree_size24_66_sram_inv;
wire [0:4] mux_tree_size24_67_sram;
wire [0:4] mux_tree_size24_67_sram_inv;
wire [0:4] mux_tree_size24_68_sram;
wire [0:4] mux_tree_size24_68_sram_inv;
wire [0:4] mux_tree_size24_69_sram;
wire [0:4] mux_tree_size24_69_sram_inv;
wire [0:4] mux_tree_size24_6_sram;
wire [0:4] mux_tree_size24_6_sram_inv;
wire [0:4] mux_tree_size24_70_sram;
wire [0:4] mux_tree_size24_70_sram_inv;
wire [0:4] mux_tree_size24_71_sram;
wire [0:4] mux_tree_size24_71_sram_inv;
wire [0:4] mux_tree_size24_72_sram;
wire [0:4] mux_tree_size24_72_sram_inv;
wire [0:4] mux_tree_size24_73_sram;
wire [0:4] mux_tree_size24_73_sram_inv;
wire [0:4] mux_tree_size24_74_sram;
wire [0:4] mux_tree_size24_74_sram_inv;
wire [0:4] mux_tree_size24_75_sram;
wire [0:4] mux_tree_size24_75_sram_inv;
wire [0:4] mux_tree_size24_76_sram;
wire [0:4] mux_tree_size24_76_sram_inv;
wire [0:4] mux_tree_size24_77_sram;
wire [0:4] mux_tree_size24_77_sram_inv;
wire [0:4] mux_tree_size24_78_sram;
wire [0:4] mux_tree_size24_78_sram_inv;
wire [0:4] mux_tree_size24_79_sram;
wire [0:4] mux_tree_size24_79_sram_inv;
wire [0:4] mux_tree_size24_7_sram;
wire [0:4] mux_tree_size24_7_sram_inv;
wire [0:4] mux_tree_size24_80_sram;
wire [0:4] mux_tree_size24_80_sram_inv;
wire [0:4] mux_tree_size24_81_sram;
wire [0:4] mux_tree_size24_81_sram_inv;
wire [0:4] mux_tree_size24_82_sram;
wire [0:4] mux_tree_size24_82_sram_inv;
wire [0:4] mux_tree_size24_83_sram;
wire [0:4] mux_tree_size24_83_sram_inv;
wire [0:4] mux_tree_size24_84_sram;
wire [0:4] mux_tree_size24_84_sram_inv;
wire [0:4] mux_tree_size24_85_sram;
wire [0:4] mux_tree_size24_85_sram_inv;
wire [0:4] mux_tree_size24_86_sram;
wire [0:4] mux_tree_size24_86_sram_inv;
wire [0:4] mux_tree_size24_87_sram;
wire [0:4] mux_tree_size24_87_sram_inv;
wire [0:4] mux_tree_size24_88_sram;
wire [0:4] mux_tree_size24_88_sram_inv;
wire [0:4] mux_tree_size24_89_sram;
wire [0:4] mux_tree_size24_89_sram_inv;
wire [0:4] mux_tree_size24_8_sram;
wire [0:4] mux_tree_size24_8_sram_inv;
wire [0:4] mux_tree_size24_90_sram;
wire [0:4] mux_tree_size24_90_sram_inv;
wire [0:4] mux_tree_size24_91_sram;
wire [0:4] mux_tree_size24_91_sram_inv;
wire [0:4] mux_tree_size24_92_sram;
wire [0:4] mux_tree_size24_92_sram_inv;
wire [0:4] mux_tree_size24_93_sram;
wire [0:4] mux_tree_size24_93_sram_inv;
wire [0:4] mux_tree_size24_94_sram;
wire [0:4] mux_tree_size24_94_sram_inv;
wire [0:4] mux_tree_size24_95_sram;
wire [0:4] mux_tree_size24_95_sram_inv;
wire [0:4] mux_tree_size24_96_sram;
wire [0:4] mux_tree_size24_96_sram_inv;
wire [0:4] mux_tree_size24_97_sram;
wire [0:4] mux_tree_size24_97_sram_inv;
wire [0:4] mux_tree_size24_98_sram;
wire [0:4] mux_tree_size24_98_sram_inv;
wire [0:4] mux_tree_size24_99_sram;
wire [0:4] mux_tree_size24_99_sram_inv;
wire [0:4] mux_tree_size24_9_sram;
wire [0:4] mux_tree_size24_9_sram_inv;
wire [0:1] mux_tree_size4_0_sram;
wire [0:1] mux_tree_size4_0_sram_inv;
wire [0:1] mux_tree_size4_1_sram;
wire [0:1] mux_tree_size4_1_sram_inv;
wire [0:1] mux_tree_size4_2_sram;
wire [0:1] mux_tree_size4_2_sram_inv;
wire [0:1] mux_tree_size4_3_sram;
wire [0:1] mux_tree_size4_3_sram_inv;
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

	logical_tile_bram_mode_default__bram_rtl logical_tile_bram_mode_default__bram_rtl_0 (
		.scan_mode(scan_mode),
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.rwm(rwm[0:2]),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.bram_rtl_WDATA_A1_i({mux_tree_size24_0_out, mux_tree_size24_1_out, mux_tree_size24_2_out, mux_tree_size24_3_out, mux_tree_size24_4_out, mux_tree_size24_5_out, mux_tree_size24_6_out, mux_tree_size24_7_out, mux_tree_size24_8_out, mux_tree_size24_9_out, mux_tree_size24_10_out, mux_tree_size24_11_out, mux_tree_size24_12_out, mux_tree_size24_13_out, mux_tree_size24_14_out, mux_tree_size24_15_out, mux_tree_size24_16_out, mux_tree_size24_17_out}),
		.bram_rtl_WDATA_A2_i({mux_tree_size24_18_out, mux_tree_size24_19_out, mux_tree_size24_20_out, mux_tree_size24_21_out, mux_tree_size24_22_out, mux_tree_size24_23_out, mux_tree_size24_24_out, mux_tree_size24_25_out, mux_tree_size24_26_out, mux_tree_size24_27_out, mux_tree_size24_28_out, mux_tree_size24_29_out, mux_tree_size24_30_out, mux_tree_size24_31_out, mux_tree_size24_32_out, mux_tree_size24_33_out, mux_tree_size24_34_out, mux_tree_size24_35_out}),
		.bram_rtl_ADDR_A1_i({mux_tree_size24_36_out, mux_tree_size24_37_out, mux_tree_size24_38_out, mux_tree_size24_39_out, mux_tree_size24_40_out, mux_tree_size24_41_out, mux_tree_size24_42_out, mux_tree_size24_43_out, mux_tree_size24_44_out, mux_tree_size24_45_out, mux_tree_size24_46_out, mux_tree_size24_47_out, mux_tree_size24_48_out, mux_tree_size24_49_out, mux_tree_size24_50_out}),
		.bram_rtl_ADDR_A2_i({mux_tree_size24_51_out, mux_tree_size24_52_out, mux_tree_size24_53_out, mux_tree_size24_54_out, mux_tree_size24_55_out, mux_tree_size24_56_out, mux_tree_size24_57_out, mux_tree_size24_58_out, mux_tree_size24_59_out, mux_tree_size24_60_out, mux_tree_size24_61_out, mux_tree_size24_62_out, mux_tree_size24_63_out, mux_tree_size24_64_out}),
		.bram_rtl_REN_A1_i(mux_tree_size24_65_out),
		.bram_rtl_REN_A2_i(mux_tree_size24_66_out),
		.bram_rtl_WEN_A1_i(mux_tree_size6_0_out),
		.bram_rtl_WEN_A2_i(mux_tree_size6_1_out),
		.bram_rtl_BE_A1_i({mux_tree_size24_67_out, mux_tree_size24_68_out}),
		.bram_rtl_BE_A2_i({mux_tree_size24_69_out, mux_tree_size24_70_out}),
		.bram_rtl_FLUSH1_i(mux_tree_size2_0_out),
		.bram_rtl_WDATA_B1_i({mux_tree_size24_71_out, mux_tree_size24_72_out, mux_tree_size24_73_out, mux_tree_size24_74_out, mux_tree_size24_75_out, mux_tree_size24_76_out, mux_tree_size24_77_out, mux_tree_size24_78_out, mux_tree_size24_79_out, mux_tree_size24_80_out, mux_tree_size24_81_out, mux_tree_size24_82_out, mux_tree_size24_83_out, mux_tree_size24_84_out, mux_tree_size24_85_out, mux_tree_size24_86_out, mux_tree_size24_87_out, mux_tree_size24_88_out}),
		.bram_rtl_WDATA_B2_i({mux_tree_size24_89_out, mux_tree_size24_90_out, mux_tree_size24_91_out, mux_tree_size24_92_out, mux_tree_size24_93_out, mux_tree_size24_94_out, mux_tree_size24_95_out, mux_tree_size24_96_out, mux_tree_size24_97_out, mux_tree_size24_98_out, mux_tree_size24_99_out, mux_tree_size24_100_out, mux_tree_size24_101_out, mux_tree_size24_102_out, mux_tree_size24_103_out, mux_tree_size24_104_out, mux_tree_size24_105_out, mux_tree_size24_106_out}),
		.bram_rtl_ADDR_B1_i({mux_tree_size24_107_out, mux_tree_size24_108_out, mux_tree_size24_109_out, mux_tree_size24_110_out, mux_tree_size24_111_out, mux_tree_size24_112_out, mux_tree_size24_113_out, mux_tree_size24_114_out, mux_tree_size24_115_out, mux_tree_size24_116_out, mux_tree_size24_117_out, mux_tree_size24_118_out, mux_tree_size24_119_out, mux_tree_size24_120_out, mux_tree_size24_121_out}),
		.bram_rtl_ADDR_B2_i({mux_tree_size24_122_out, mux_tree_size24_123_out, mux_tree_size24_124_out, mux_tree_size24_125_out, mux_tree_size24_126_out, mux_tree_size24_127_out, mux_tree_size24_128_out, mux_tree_size24_129_out, mux_tree_size24_130_out, mux_tree_size24_131_out, mux_tree_size24_132_out, mux_tree_size24_133_out, mux_tree_size24_134_out, mux_tree_size24_135_out}),
		.bram_rtl_REN_B1_i(mux_tree_size24_136_out),
		.bram_rtl_REN_B2_i(mux_tree_size24_137_out),
		.bram_rtl_WEN_B1_i(mux_tree_size6_2_out),
		.bram_rtl_WEN_B2_i(mux_tree_size6_3_out),
		.bram_rtl_BE_B1_i({mux_tree_size24_138_out, mux_tree_size24_139_out}),
		.bram_rtl_BE_B2_i({mux_tree_size24_140_out, mux_tree_size24_141_out}),
		.bram_rtl_FLUSH2_i(mux_tree_size2_1_out),
		.bram_rtl_RAM_ID_i({direct_interc_230_out, direct_interc_231_out, direct_interc_232_out, direct_interc_233_out, direct_interc_234_out, direct_interc_235_out, direct_interc_236_out, direct_interc_237_out, direct_interc_238_out, direct_interc_239_out, direct_interc_240_out, direct_interc_241_out, direct_interc_242_out, direct_interc_243_out, direct_interc_244_out, direct_interc_245_out, direct_interc_246_out, direct_interc_247_out, direct_interc_248_out, direct_interc_249_out}),
		.bram_rtl_PL_INIT_i(direct_interc_250_out),
		.bram_rtl_PL_ENA_i(direct_interc_251_out),
		.bram_rtl_PL_REN_i(direct_interc_252_out),
		.bram_rtl_PL_WEN_i({direct_interc_253_out, direct_interc_254_out}),
		.bram_rtl_PL_ADDR_i({direct_interc_255_out, direct_interc_256_out, direct_interc_257_out, direct_interc_258_out, direct_interc_259_out, direct_interc_260_out, direct_interc_261_out, direct_interc_262_out, direct_interc_263_out, direct_interc_264_out, direct_interc_265_out, direct_interc_266_out, direct_interc_267_out, direct_interc_268_out, direct_interc_269_out, direct_interc_270_out, direct_interc_271_out, direct_interc_272_out, direct_interc_273_out, direct_interc_274_out, direct_interc_275_out, direct_interc_276_out, direct_interc_277_out, direct_interc_278_out, direct_interc_279_out, direct_interc_280_out, direct_interc_281_out, direct_interc_282_out, direct_interc_283_out, direct_interc_284_out, direct_interc_285_out, direct_interc_286_out}),
		.bram_rtl_PL_DATA_i({direct_interc_287_out, direct_interc_288_out, direct_interc_289_out, direct_interc_290_out, direct_interc_291_out, direct_interc_292_out, direct_interc_293_out, direct_interc_294_out, direct_interc_295_out, direct_interc_296_out, direct_interc_297_out, direct_interc_298_out, direct_interc_299_out, direct_interc_300_out, direct_interc_301_out, direct_interc_302_out, direct_interc_303_out, direct_interc_304_out, direct_interc_305_out, direct_interc_306_out, direct_interc_307_out, direct_interc_308_out, direct_interc_309_out, direct_interc_310_out, direct_interc_311_out, direct_interc_312_out, direct_interc_313_out, direct_interc_314_out, direct_interc_315_out, direct_interc_316_out, direct_interc_317_out, direct_interc_318_out, direct_interc_319_out, direct_interc_320_out, direct_interc_321_out, direct_interc_322_out}),
		.bram_rtl_sc_in({direct_interc_323_out, direct_interc_324_out, direct_interc_325_out, direct_interc_326_out, direct_interc_327_out, direct_interc_328_out, direct_interc_329_out, direct_interc_330_out, direct_interc_331_out, direct_interc_332_out, direct_interc_333_out, direct_interc_334_out, direct_interc_335_out, direct_interc_336_out, direct_interc_337_out, direct_interc_338_out, direct_interc_339_out, direct_interc_340_out, direct_interc_341_out, direct_interc_342_out, direct_interc_343_out, direct_interc_344_out, direct_interc_345_out, direct_interc_346_out, direct_interc_347_out, direct_interc_348_out, direct_interc_349_out, direct_interc_350_out, direct_interc_351_out, direct_interc_352_out, direct_interc_353_out, direct_interc_354_out, direct_interc_355_out, direct_interc_356_out, direct_interc_357_out, direct_interc_358_out, direct_interc_359_out, direct_interc_360_out, direct_interc_361_out, direct_interc_362_out, direct_interc_363_out, direct_interc_364_out, direct_interc_365_out, direct_interc_366_out}),
		.bram_rtl_CLK_A1_i(direct_interc_367_out),
		.bram_rtl_CLK_A2_i(direct_interc_368_out),
		.bram_rtl_CLK_B1_i(direct_interc_369_out),
		.bram_rtl_CLK_B2_i(direct_interc_370_out),
		.bram_rtl_PL_CLK_i(direct_interc_371_out),
		.ccff_head(ccff_head),
		.bram_rtl_RDATA_A1_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[0:17]),
		.bram_rtl_RDATA_A2_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[0:17]),
		.bram_rtl_RDATA_B1_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[0:17]),
		.bram_rtl_RDATA_B2_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[0:17]),
		.bram_rtl_PL_INIT_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_INIT_o),
		.bram_rtl_PL_ENA_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ENA_o),
		.bram_rtl_PL_REN_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_REN_o),
		.bram_rtl_PL_CLK_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_CLK_o),
		.bram_rtl_PL_WEN_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_WEN_o[0:1]),
		.bram_rtl_PL_ADDR_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[0:31]),
		.bram_rtl_PL_DATA_o(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[0:35]),
		.bram_rtl_sc_out(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[0:43]),
		.ccff_tail(logical_tile_bram_mode_default__bram_rtl_0_ccff_tail));

	logical_tile_bram_mode_default__sr_opt logical_tile_bram_mode_default__sr_opt_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.sr_opt_I(mux_tree_size6_4_out),
		.ccff_head(logical_tile_bram_mode_default__bram_rtl_0_ccff_tail),
		.sr_opt_O(logical_tile_bram_mode_default__sr_opt_0_sr_opt_O),
		.ccff_tail(logical_tile_bram_mode_default__sr_opt_0_ccff_tail));

	logical_tile_bram_mode_default__sr_opt logical_tile_bram_mode_default__sr_opt_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.sr_opt_I(mux_tree_size6_5_out),
		.ccff_head(logical_tile_bram_mode_default__sr_opt_0_ccff_tail),
		.sr_opt_O(logical_tile_bram_mode_default__sr_opt_1_sr_opt_O),
		.ccff_tail(logical_tile_bram_mode_default__sr_opt_1_ccff_tail));

	logical_tile_bram_mode_default__sr_opt logical_tile_bram_mode_default__sr_opt_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.sr_opt_I(mux_tree_size6_6_out),
		.ccff_head(logical_tile_bram_mode_default__sr_opt_1_ccff_tail),
		.sr_opt_O(logical_tile_bram_mode_default__sr_opt_2_sr_opt_O),
		.ccff_tail(logical_tile_bram_mode_default__sr_opt_2_ccff_tail));

	logical_tile_bram_mode_default__sr_opt logical_tile_bram_mode_default__sr_opt_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.sr_opt_I(mux_tree_size6_7_out),
		.ccff_head(logical_tile_bram_mode_default__sr_opt_2_ccff_tail),
		.sr_opt_O(logical_tile_bram_mode_default__sr_opt_3_sr_opt_O),
		.ccff_tail(logical_tile_bram_mode_default__sr_opt_3_ccff_tail));

	logical_tile_bram_mode_default__flush_opt logical_tile_bram_mode_default__flush_opt_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.flush_opt_I({mux_tree_size6_8_out, mux_tree_size6_9_out}),
		.ccff_head(logical_tile_bram_mode_default__sr_opt_3_ccff_tail),
		.flush_opt_O(logical_tile_bram_mode_default__flush_opt_0_flush_opt_O[0:1]),
		.ccff_tail(logical_tile_bram_mode_default__flush_opt_0_ccff_tail));

	logical_tile_bram_mode_default__clk_opt logical_tile_bram_mode_default__clk_opt_0 (
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.clk_opt_I(mux_tree_clock_size16_0_out),
		.ccff_head(logical_tile_bram_mode_default__flush_opt_0_ccff_tail),
		.clk_opt_O(logical_tile_bram_mode_default__clk_opt_0_clk_opt_O),
		.ccff_tail(logical_tile_bram_mode_default__clk_opt_0_ccff_tail));

	logical_tile_bram_mode_default__clk_opt logical_tile_bram_mode_default__clk_opt_1 (
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.clk_opt_I(mux_tree_clock_size16_1_out),
		.ccff_head(logical_tile_bram_mode_default__clk_opt_0_ccff_tail),
		.clk_opt_O(logical_tile_bram_mode_default__clk_opt_1_clk_opt_O),
		.ccff_tail(logical_tile_bram_mode_default__clk_opt_1_ccff_tail));

	logical_tile_bram_mode_default__clk_opt logical_tile_bram_mode_default__clk_opt_2 (
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.clk_opt_I(mux_tree_clock_size16_2_out),
		.ccff_head(logical_tile_bram_mode_default__clk_opt_1_ccff_tail),
		.clk_opt_O(logical_tile_bram_mode_default__clk_opt_2_clk_opt_O),
		.ccff_tail(logical_tile_bram_mode_default__clk_opt_2_ccff_tail));

	logical_tile_bram_mode_default__clk_opt logical_tile_bram_mode_default__clk_opt_3 (
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.clk_opt_I(mux_tree_clock_size16_3_out),
		.ccff_head(logical_tile_bram_mode_default__clk_opt_2_ccff_tail),
		.clk_opt_O(logical_tile_bram_mode_default__clk_opt_3_clk_opt_O),
		.ccff_tail(logical_tile_bram_mode_default__clk_opt_3_ccff_tail));

	logical_tile_bram_mode_default__ff_wrap logical_tile_bram_mode_default__ff_wrap_0 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_wrap_rdata_a1({direct_interc_372_out, direct_interc_373_out, direct_interc_374_out, direct_interc_375_out, direct_interc_376_out, direct_interc_377_out, direct_interc_378_out, direct_interc_379_out, direct_interc_380_out, direct_interc_381_out, direct_interc_382_out, direct_interc_383_out, direct_interc_384_out, direct_interc_385_out, direct_interc_386_out, direct_interc_387_out, direct_interc_388_out, direct_interc_389_out}),
		.ff_wrap_rdata_b1({direct_interc_390_out, direct_interc_391_out, direct_interc_392_out, direct_interc_393_out, direct_interc_394_out, direct_interc_395_out, direct_interc_396_out, direct_interc_397_out, direct_interc_398_out, direct_interc_399_out, direct_interc_400_out, direct_interc_401_out, direct_interc_402_out, direct_interc_403_out, direct_interc_404_out, direct_interc_405_out, direct_interc_406_out, direct_interc_407_out}),
		.ff_wrap_rdata_a2({direct_interc_408_out, direct_interc_409_out, direct_interc_410_out, direct_interc_411_out, direct_interc_412_out, direct_interc_413_out, direct_interc_414_out, direct_interc_415_out, direct_interc_416_out, direct_interc_417_out, direct_interc_418_out, direct_interc_419_out, direct_interc_420_out, direct_interc_421_out, direct_interc_422_out, direct_interc_423_out, direct_interc_424_out, direct_interc_425_out}),
		.ff_wrap_rdata_b2({direct_interc_426_out, direct_interc_427_out, direct_interc_428_out, direct_interc_429_out, direct_interc_430_out, direct_interc_431_out, direct_interc_432_out, direct_interc_433_out, direct_interc_434_out, direct_interc_435_out, direct_interc_436_out, direct_interc_437_out, direct_interc_438_out, direct_interc_439_out, direct_interc_440_out, direct_interc_441_out, direct_interc_442_out, direct_interc_443_out}),
		.ff_wrap_reset({mux_tree_size4_0_out, mux_tree_size4_1_out, mux_tree_size4_2_out, mux_tree_size4_3_out}),
		.ff_wrap_enable({mux_tree_size6_10_out, mux_tree_size6_11_out, mux_tree_size6_12_out, mux_tree_size6_13_out}),
		.ff_wrap_sc_in({direct_interc_444_out, direct_interc_445_out, direct_interc_446_out, direct_interc_447_out}),
		.ff_wrap_clock({direct_interc_448_out, direct_interc_449_out, direct_interc_450_out, direct_interc_451_out}),
		.ccff_head(logical_tile_bram_mode_default__clk_opt_3_ccff_tail),
		.ff_wrap_out_a1(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[0:17]),
		.ff_wrap_out_b1(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[0:17]),
		.ff_wrap_out_a2(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[0:17]),
		.ff_wrap_out_b2(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[0:17]),
		.ff_wrap_sc_out(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_sc_out[0:3]),
		.ccff_tail(logical_tile_bram_mode_default__ff_wrap_0_ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[0]),
		.out(bram_O0[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[0]),
		.out(bram_O0[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[0]),
		.out(bram_O0[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[0]),
		.out(bram_O0[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[1]),
		.out(bram_O0[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[1]),
		.out(bram_O0[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[1]),
		.out(bram_O0[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[1]),
		.out(bram_O0[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[2]),
		.out(bram_O0[8]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[2]),
		.out(bram_O0[9]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[2]),
		.out(bram_O0[10]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[2]),
		.out(bram_O0[11]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[3]),
		.out(bram_O0[12]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[3]),
		.out(bram_O0[13]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[3]),
		.out(bram_O0[14]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[3]),
		.out(bram_O0[15]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[4]),
		.out(bram_O0[16]));

	direct_interc direct_interc_17_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[4]),
		.out(bram_O0[17]));

	direct_interc direct_interc_18_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[4]),
		.out(bram_O0[18]));

	direct_interc direct_interc_19_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[4]),
		.out(bram_O0[19]));

	direct_interc direct_interc_20_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[5]),
		.out(bram_O0[20]));

	direct_interc direct_interc_21_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[5]),
		.out(bram_O0[21]));

	direct_interc direct_interc_22_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[5]),
		.out(bram_O0[22]));

	direct_interc direct_interc_23_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[5]),
		.out(bram_O0[23]));

	direct_interc direct_interc_24_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[6]),
		.out(bram_O1[0]));

	direct_interc direct_interc_25_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[6]),
		.out(bram_O1[1]));

	direct_interc direct_interc_26_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[6]),
		.out(bram_O1[2]));

	direct_interc direct_interc_27_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[6]),
		.out(bram_O1[3]));

	direct_interc direct_interc_28_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[7]),
		.out(bram_O1[4]));

	direct_interc direct_interc_29_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[7]),
		.out(bram_O1[5]));

	direct_interc direct_interc_30_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[7]),
		.out(bram_O1[6]));

	direct_interc direct_interc_31_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[7]),
		.out(bram_O1[7]));

	direct_interc direct_interc_32_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[8]),
		.out(bram_O1[8]));

	direct_interc direct_interc_33_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[8]),
		.out(bram_O1[9]));

	direct_interc direct_interc_34_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[8]),
		.out(bram_O1[10]));

	direct_interc direct_interc_35_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[8]),
		.out(bram_O1[11]));

	direct_interc direct_interc_36_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[9]),
		.out(bram_O1[12]));

	direct_interc direct_interc_37_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[9]),
		.out(bram_O1[13]));

	direct_interc direct_interc_38_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[9]),
		.out(bram_O1[14]));

	direct_interc direct_interc_39_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[9]),
		.out(bram_O1[15]));

	direct_interc direct_interc_40_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[10]),
		.out(bram_O1[16]));

	direct_interc direct_interc_41_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[10]),
		.out(bram_O1[17]));

	direct_interc direct_interc_42_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[10]),
		.out(bram_O1[18]));

	direct_interc direct_interc_43_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[10]),
		.out(bram_O1[19]));

	direct_interc direct_interc_44_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[11]),
		.out(bram_O1[20]));

	direct_interc direct_interc_45_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[11]),
		.out(bram_O1[21]));

	direct_interc direct_interc_46_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[11]),
		.out(bram_O1[22]));

	direct_interc direct_interc_47_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[11]),
		.out(bram_O1[23]));

	direct_interc direct_interc_48_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[12]),
		.out(bram_O2[0]));

	direct_interc direct_interc_49_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[12]),
		.out(bram_O2[1]));

	direct_interc direct_interc_50_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[12]),
		.out(bram_O2[2]));

	direct_interc direct_interc_51_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[12]),
		.out(bram_O2[3]));

	direct_interc direct_interc_52_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[13]),
		.out(bram_O2[4]));

	direct_interc direct_interc_53_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[13]),
		.out(bram_O2[5]));

	direct_interc direct_interc_54_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[13]),
		.out(bram_O2[6]));

	direct_interc direct_interc_55_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[13]),
		.out(bram_O2[7]));

	direct_interc direct_interc_56_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[14]),
		.out(bram_O2[8]));

	direct_interc direct_interc_57_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[14]),
		.out(bram_O2[9]));

	direct_interc direct_interc_58_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[14]),
		.out(bram_O2[10]));

	direct_interc direct_interc_59_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[14]),
		.out(bram_O2[11]));

	direct_interc direct_interc_60_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[15]),
		.out(bram_O2[12]));

	direct_interc direct_interc_61_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[15]),
		.out(bram_O2[13]));

	direct_interc direct_interc_62_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[15]),
		.out(bram_O2[14]));

	direct_interc direct_interc_63_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[15]),
		.out(bram_O2[15]));

	direct_interc direct_interc_64_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[16]),
		.out(bram_O2[16]));

	direct_interc direct_interc_65_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[16]),
		.out(bram_O2[17]));

	direct_interc direct_interc_66_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[16]),
		.out(bram_O2[18]));

	direct_interc direct_interc_67_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[16]),
		.out(bram_O2[19]));

	direct_interc direct_interc_68_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b2[17]),
		.out(bram_O2[20]));

	direct_interc direct_interc_69_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a2[17]),
		.out(bram_O2[21]));

	direct_interc direct_interc_70_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_b1[17]),
		.out(bram_O2[22]));

	direct_interc direct_interc_71_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_out_a1[17]),
		.out(bram_O2[23]));

	direct_interc direct_interc_72_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[0]),
		.out(bram_sc_out[0]));

	direct_interc direct_interc_73_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[1]),
		.out(bram_sc_out[1]));

	direct_interc direct_interc_74_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[2]),
		.out(bram_sc_out[2]));

	direct_interc direct_interc_75_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[3]),
		.out(bram_sc_out[3]));

	direct_interc direct_interc_76_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[4]),
		.out(bram_sc_out[4]));

	direct_interc direct_interc_77_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[5]),
		.out(bram_sc_out[5]));

	direct_interc direct_interc_78_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[6]),
		.out(bram_sc_out[6]));

	direct_interc direct_interc_79_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[7]),
		.out(bram_sc_out[7]));

	direct_interc direct_interc_80_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[8]),
		.out(bram_sc_out[8]));

	direct_interc direct_interc_81_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[9]),
		.out(bram_sc_out[9]));

	direct_interc direct_interc_82_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[10]),
		.out(bram_sc_out[10]));

	direct_interc direct_interc_83_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[11]),
		.out(bram_sc_out[11]));

	direct_interc direct_interc_84_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[12]),
		.out(bram_sc_out[12]));

	direct_interc direct_interc_85_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[13]),
		.out(bram_sc_out[13]));

	direct_interc direct_interc_86_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[14]),
		.out(bram_sc_out[14]));

	direct_interc direct_interc_87_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[15]),
		.out(bram_sc_out[15]));

	direct_interc direct_interc_88_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[16]),
		.out(bram_sc_out[16]));

	direct_interc direct_interc_89_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[17]),
		.out(bram_sc_out[17]));

	direct_interc direct_interc_90_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[18]),
		.out(bram_sc_out[18]));

	direct_interc direct_interc_91_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[19]),
		.out(bram_sc_out[19]));

	direct_interc direct_interc_92_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[20]),
		.out(bram_sc_out[20]));

	direct_interc direct_interc_93_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[21]),
		.out(bram_sc_out[21]));

	direct_interc direct_interc_94_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[22]),
		.out(bram_sc_out[22]));

	direct_interc direct_interc_95_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[23]),
		.out(bram_sc_out[23]));

	direct_interc direct_interc_96_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[24]),
		.out(bram_sc_out[24]));

	direct_interc direct_interc_97_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[25]),
		.out(bram_sc_out[25]));

	direct_interc direct_interc_98_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[26]),
		.out(bram_sc_out[26]));

	direct_interc direct_interc_99_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[27]),
		.out(bram_sc_out[27]));

	direct_interc direct_interc_100_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[28]),
		.out(bram_sc_out[28]));

	direct_interc direct_interc_101_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[29]),
		.out(bram_sc_out[29]));

	direct_interc direct_interc_102_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[30]),
		.out(bram_sc_out[30]));

	direct_interc direct_interc_103_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[31]),
		.out(bram_sc_out[31]));

	direct_interc direct_interc_104_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[32]),
		.out(bram_sc_out[32]));

	direct_interc direct_interc_105_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[33]),
		.out(bram_sc_out[33]));

	direct_interc direct_interc_106_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[34]),
		.out(bram_sc_out[34]));

	direct_interc direct_interc_107_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[35]),
		.out(bram_sc_out[35]));

	direct_interc direct_interc_108_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[36]),
		.out(bram_sc_out[36]));

	direct_interc direct_interc_109_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[37]),
		.out(bram_sc_out[37]));

	direct_interc direct_interc_110_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[38]),
		.out(bram_sc_out[38]));

	direct_interc direct_interc_111_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[39]),
		.out(bram_sc_out[39]));

	direct_interc direct_interc_112_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[40]),
		.out(bram_sc_out[40]));

	direct_interc direct_interc_113_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[41]),
		.out(bram_sc_out[41]));

	direct_interc direct_interc_114_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[42]),
		.out(bram_sc_out[42]));

	direct_interc direct_interc_115_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_sc_out[43]),
		.out(bram_sc_out[43]));

	direct_interc direct_interc_116_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_sc_out[0]),
		.out(bram_sc_out[44]));

	direct_interc direct_interc_117_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_sc_out[1]),
		.out(bram_sc_out[45]));

	direct_interc direct_interc_118_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_sc_out[2]),
		.out(bram_sc_out[46]));

	direct_interc direct_interc_119_ (
		.in(logical_tile_bram_mode_default__ff_wrap_0_ff_wrap_sc_out[3]),
		.out(bram_sc_out[47]));

	direct_interc direct_interc_120_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[0]),
		.out(bram_PL_OUT[0]));

	direct_interc direct_interc_121_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[1]),
		.out(bram_PL_OUT[1]));

	direct_interc direct_interc_122_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[2]),
		.out(bram_PL_OUT[2]));

	direct_interc direct_interc_123_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[3]),
		.out(bram_PL_OUT[3]));

	direct_interc direct_interc_124_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[4]),
		.out(bram_PL_OUT[4]));

	direct_interc direct_interc_125_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[5]),
		.out(bram_PL_OUT[5]));

	direct_interc direct_interc_126_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[6]),
		.out(bram_PL_OUT[6]));

	direct_interc direct_interc_127_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[7]),
		.out(bram_PL_OUT[7]));

	direct_interc direct_interc_128_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[8]),
		.out(bram_PL_OUT[8]));

	direct_interc direct_interc_129_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[9]),
		.out(bram_PL_OUT[9]));

	direct_interc direct_interc_130_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[10]),
		.out(bram_PL_OUT[10]));

	direct_interc direct_interc_131_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[11]),
		.out(bram_PL_OUT[11]));

	direct_interc direct_interc_132_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[12]),
		.out(bram_PL_OUT[12]));

	direct_interc direct_interc_133_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[13]),
		.out(bram_PL_OUT[13]));

	direct_interc direct_interc_134_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[14]),
		.out(bram_PL_OUT[14]));

	direct_interc direct_interc_135_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[15]),
		.out(bram_PL_OUT[15]));

	direct_interc direct_interc_136_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[16]),
		.out(bram_PL_OUT[16]));

	direct_interc direct_interc_137_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[17]),
		.out(bram_PL_OUT[17]));

	direct_interc direct_interc_138_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[18]),
		.out(bram_PL_OUT[18]));

	direct_interc direct_interc_139_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[19]),
		.out(bram_PL_OUT[19]));

	direct_interc direct_interc_140_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[20]),
		.out(bram_PL_OUT[20]));

	direct_interc direct_interc_141_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[21]),
		.out(bram_PL_OUT[21]));

	direct_interc direct_interc_142_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[22]),
		.out(bram_PL_OUT[22]));

	direct_interc direct_interc_143_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[23]),
		.out(bram_PL_OUT[23]));

	direct_interc direct_interc_144_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[24]),
		.out(bram_PL_OUT[24]));

	direct_interc direct_interc_145_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[25]),
		.out(bram_PL_OUT[25]));

	direct_interc direct_interc_146_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[26]),
		.out(bram_PL_OUT[26]));

	direct_interc direct_interc_147_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[27]),
		.out(bram_PL_OUT[27]));

	direct_interc direct_interc_148_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[28]),
		.out(bram_PL_OUT[28]));

	direct_interc direct_interc_149_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[29]),
		.out(bram_PL_OUT[29]));

	direct_interc direct_interc_150_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[30]),
		.out(bram_PL_OUT[30]));

	direct_interc direct_interc_151_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[31]),
		.out(bram_PL_OUT[31]));

	direct_interc direct_interc_152_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[32]),
		.out(bram_PL_OUT[32]));

	direct_interc direct_interc_153_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[33]),
		.out(bram_PL_OUT[33]));

	direct_interc direct_interc_154_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[34]),
		.out(bram_PL_OUT[34]));

	direct_interc direct_interc_155_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_DATA_o[35]),
		.out(bram_PL_OUT[35]));

	direct_interc direct_interc_156_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[0]),
		.out(bram_PL_OUT[36]));

	direct_interc direct_interc_157_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[1]),
		.out(bram_PL_OUT[37]));

	direct_interc direct_interc_158_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[2]),
		.out(bram_PL_OUT[38]));

	direct_interc direct_interc_159_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[3]),
		.out(bram_PL_OUT[39]));

	direct_interc direct_interc_160_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[4]),
		.out(bram_PL_OUT[40]));

	direct_interc direct_interc_161_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[5]),
		.out(bram_PL_OUT[41]));

	direct_interc direct_interc_162_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[6]),
		.out(bram_PL_OUT[42]));

	direct_interc direct_interc_163_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[7]),
		.out(bram_PL_OUT[43]));

	direct_interc direct_interc_164_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[8]),
		.out(bram_PL_OUT[44]));

	direct_interc direct_interc_165_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[9]),
		.out(bram_PL_OUT[45]));

	direct_interc direct_interc_166_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[10]),
		.out(bram_PL_OUT[46]));

	direct_interc direct_interc_167_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[11]),
		.out(bram_PL_OUT[47]));

	direct_interc direct_interc_168_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[12]),
		.out(bram_PL_OUT[48]));

	direct_interc direct_interc_169_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[13]),
		.out(bram_PL_OUT[49]));

	direct_interc direct_interc_170_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[14]),
		.out(bram_PL_OUT[50]));

	direct_interc direct_interc_171_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[15]),
		.out(bram_PL_OUT[51]));

	direct_interc direct_interc_172_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[16]),
		.out(bram_PL_OUT[52]));

	direct_interc direct_interc_173_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[17]),
		.out(bram_PL_OUT[53]));

	direct_interc direct_interc_174_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[18]),
		.out(bram_PL_OUT[54]));

	direct_interc direct_interc_175_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[19]),
		.out(bram_PL_OUT[55]));

	direct_interc direct_interc_176_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[20]),
		.out(bram_PL_OUT[56]));

	direct_interc direct_interc_177_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[21]),
		.out(bram_PL_OUT[57]));

	direct_interc direct_interc_178_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[22]),
		.out(bram_PL_OUT[58]));

	direct_interc direct_interc_179_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[23]),
		.out(bram_PL_OUT[59]));

	direct_interc direct_interc_180_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[24]),
		.out(bram_PL_OUT[60]));

	direct_interc direct_interc_181_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[25]),
		.out(bram_PL_OUT[61]));

	direct_interc direct_interc_182_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[26]),
		.out(bram_PL_OUT[62]));

	direct_interc direct_interc_183_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[27]),
		.out(bram_PL_OUT[63]));

	direct_interc direct_interc_184_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[28]),
		.out(bram_PL_OUT[64]));

	direct_interc direct_interc_185_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[29]),
		.out(bram_PL_OUT[65]));

	direct_interc direct_interc_186_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[30]),
		.out(bram_PL_OUT[66]));

	direct_interc direct_interc_187_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ADDR_o[31]),
		.out(bram_PL_OUT[67]));

	direct_interc direct_interc_188_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_WEN_o[0]),
		.out(bram_PL_OUT[68]));

	direct_interc direct_interc_189_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_WEN_o[1]),
		.out(bram_PL_OUT[69]));

	direct_interc direct_interc_190_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_CLK_o),
		.out(bram_PL_OUT[70]));

	direct_interc direct_interc_191_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_REN_o),
		.out(bram_PL_OUT[71]));

	direct_interc direct_interc_192_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_ENA_o),
		.out(bram_PL_OUT[72]));

	direct_interc direct_interc_193_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_PL_INIT_o),
		.out(bram_PL_OUT[73]));

	direct_interc direct_interc_194_ (
		.in(bram_PL_DATA_IN[0]),
		.out(bram_PL_DATA_OUT[0]));

	direct_interc direct_interc_195_ (
		.in(bram_PL_DATA_IN[1]),
		.out(bram_PL_DATA_OUT[1]));

	direct_interc direct_interc_196_ (
		.in(bram_PL_DATA_IN[2]),
		.out(bram_PL_DATA_OUT[2]));

	direct_interc direct_interc_197_ (
		.in(bram_PL_DATA_IN[3]),
		.out(bram_PL_DATA_OUT[3]));

	direct_interc direct_interc_198_ (
		.in(bram_PL_DATA_IN[4]),
		.out(bram_PL_DATA_OUT[4]));

	direct_interc direct_interc_199_ (
		.in(bram_PL_DATA_IN[5]),
		.out(bram_PL_DATA_OUT[5]));

	direct_interc direct_interc_200_ (
		.in(bram_PL_DATA_IN[6]),
		.out(bram_PL_DATA_OUT[6]));

	direct_interc direct_interc_201_ (
		.in(bram_PL_DATA_IN[7]),
		.out(bram_PL_DATA_OUT[7]));

	direct_interc direct_interc_202_ (
		.in(bram_PL_DATA_IN[8]),
		.out(bram_PL_DATA_OUT[8]));

	direct_interc direct_interc_203_ (
		.in(bram_PL_DATA_IN[9]),
		.out(bram_PL_DATA_OUT[9]));

	direct_interc direct_interc_204_ (
		.in(bram_PL_DATA_IN[10]),
		.out(bram_PL_DATA_OUT[10]));

	direct_interc direct_interc_205_ (
		.in(bram_PL_DATA_IN[11]),
		.out(bram_PL_DATA_OUT[11]));

	direct_interc direct_interc_206_ (
		.in(bram_PL_DATA_IN[12]),
		.out(bram_PL_DATA_OUT[12]));

	direct_interc direct_interc_207_ (
		.in(bram_PL_DATA_IN[13]),
		.out(bram_PL_DATA_OUT[13]));

	direct_interc direct_interc_208_ (
		.in(bram_PL_DATA_IN[14]),
		.out(bram_PL_DATA_OUT[14]));

	direct_interc direct_interc_209_ (
		.in(bram_PL_DATA_IN[15]),
		.out(bram_PL_DATA_OUT[15]));

	direct_interc direct_interc_210_ (
		.in(bram_PL_DATA_IN[16]),
		.out(bram_PL_DATA_OUT[16]));

	direct_interc direct_interc_211_ (
		.in(bram_PL_DATA_IN[17]),
		.out(bram_PL_DATA_OUT[17]));

	direct_interc direct_interc_212_ (
		.in(bram_PL_DATA_IN[18]),
		.out(bram_PL_DATA_OUT[18]));

	direct_interc direct_interc_213_ (
		.in(bram_PL_DATA_IN[19]),
		.out(bram_PL_DATA_OUT[19]));

	direct_interc direct_interc_214_ (
		.in(bram_PL_DATA_IN[20]),
		.out(bram_PL_DATA_OUT[20]));

	direct_interc direct_interc_215_ (
		.in(bram_PL_DATA_IN[21]),
		.out(bram_PL_DATA_OUT[21]));

	direct_interc direct_interc_216_ (
		.in(bram_PL_DATA_IN[22]),
		.out(bram_PL_DATA_OUT[22]));

	direct_interc direct_interc_217_ (
		.in(bram_PL_DATA_IN[23]),
		.out(bram_PL_DATA_OUT[23]));

	direct_interc direct_interc_218_ (
		.in(bram_PL_DATA_IN[24]),
		.out(bram_PL_DATA_OUT[24]));

	direct_interc direct_interc_219_ (
		.in(bram_PL_DATA_IN[25]),
		.out(bram_PL_DATA_OUT[25]));

	direct_interc direct_interc_220_ (
		.in(bram_PL_DATA_IN[26]),
		.out(bram_PL_DATA_OUT[26]));

	direct_interc direct_interc_221_ (
		.in(bram_PL_DATA_IN[27]),
		.out(bram_PL_DATA_OUT[27]));

	direct_interc direct_interc_222_ (
		.in(bram_PL_DATA_IN[28]),
		.out(bram_PL_DATA_OUT[28]));

	direct_interc direct_interc_223_ (
		.in(bram_PL_DATA_IN[29]),
		.out(bram_PL_DATA_OUT[29]));

	direct_interc direct_interc_224_ (
		.in(bram_PL_DATA_IN[30]),
		.out(bram_PL_DATA_OUT[30]));

	direct_interc direct_interc_225_ (
		.in(bram_PL_DATA_IN[31]),
		.out(bram_PL_DATA_OUT[31]));

	direct_interc direct_interc_226_ (
		.in(bram_PL_DATA_IN[32]),
		.out(bram_PL_DATA_OUT[32]));

	direct_interc direct_interc_227_ (
		.in(bram_PL_DATA_IN[33]),
		.out(bram_PL_DATA_OUT[33]));

	direct_interc direct_interc_228_ (
		.in(bram_PL_DATA_IN[34]),
		.out(bram_PL_DATA_OUT[34]));

	direct_interc direct_interc_229_ (
		.in(bram_PL_DATA_IN[35]),
		.out(bram_PL_DATA_OUT[35]));

	direct_interc direct_interc_230_ (
		.in(bram_RAM_ID_i[0]),
		.out(direct_interc_230_out));

	direct_interc direct_interc_231_ (
		.in(bram_RAM_ID_i[1]),
		.out(direct_interc_231_out));

	direct_interc direct_interc_232_ (
		.in(bram_RAM_ID_i[2]),
		.out(direct_interc_232_out));

	direct_interc direct_interc_233_ (
		.in(bram_RAM_ID_i[3]),
		.out(direct_interc_233_out));

	direct_interc direct_interc_234_ (
		.in(bram_RAM_ID_i[4]),
		.out(direct_interc_234_out));

	direct_interc direct_interc_235_ (
		.in(bram_RAM_ID_i[5]),
		.out(direct_interc_235_out));

	direct_interc direct_interc_236_ (
		.in(bram_RAM_ID_i[6]),
		.out(direct_interc_236_out));

	direct_interc direct_interc_237_ (
		.in(bram_RAM_ID_i[7]),
		.out(direct_interc_237_out));

	direct_interc direct_interc_238_ (
		.in(bram_RAM_ID_i[8]),
		.out(direct_interc_238_out));

	direct_interc direct_interc_239_ (
		.in(bram_RAM_ID_i[9]),
		.out(direct_interc_239_out));

	direct_interc direct_interc_240_ (
		.in(bram_RAM_ID_i[10]),
		.out(direct_interc_240_out));

	direct_interc direct_interc_241_ (
		.in(bram_RAM_ID_i[11]),
		.out(direct_interc_241_out));

	direct_interc direct_interc_242_ (
		.in(bram_RAM_ID_i[12]),
		.out(direct_interc_242_out));

	direct_interc direct_interc_243_ (
		.in(bram_RAM_ID_i[13]),
		.out(direct_interc_243_out));

	direct_interc direct_interc_244_ (
		.in(bram_RAM_ID_i[14]),
		.out(direct_interc_244_out));

	direct_interc direct_interc_245_ (
		.in(bram_RAM_ID_i[15]),
		.out(direct_interc_245_out));

	direct_interc direct_interc_246_ (
		.in(bram_RAM_ID_i[16]),
		.out(direct_interc_246_out));

	direct_interc direct_interc_247_ (
		.in(bram_RAM_ID_i[17]),
		.out(direct_interc_247_out));

	direct_interc direct_interc_248_ (
		.in(bram_RAM_ID_i[18]),
		.out(direct_interc_248_out));

	direct_interc direct_interc_249_ (
		.in(bram_RAM_ID_i[19]),
		.out(direct_interc_249_out));

	direct_interc direct_interc_250_ (
		.in(bram_PL_IN[73]),
		.out(direct_interc_250_out));

	direct_interc direct_interc_251_ (
		.in(bram_PL_IN[72]),
		.out(direct_interc_251_out));

	direct_interc direct_interc_252_ (
		.in(bram_PL_IN[71]),
		.out(direct_interc_252_out));

	direct_interc direct_interc_253_ (
		.in(bram_PL_IN[68]),
		.out(direct_interc_253_out));

	direct_interc direct_interc_254_ (
		.in(bram_PL_IN[69]),
		.out(direct_interc_254_out));

	direct_interc direct_interc_255_ (
		.in(bram_PL_IN[36]),
		.out(direct_interc_255_out));

	direct_interc direct_interc_256_ (
		.in(bram_PL_IN[37]),
		.out(direct_interc_256_out));

	direct_interc direct_interc_257_ (
		.in(bram_PL_IN[38]),
		.out(direct_interc_257_out));

	direct_interc direct_interc_258_ (
		.in(bram_PL_IN[39]),
		.out(direct_interc_258_out));

	direct_interc direct_interc_259_ (
		.in(bram_PL_IN[40]),
		.out(direct_interc_259_out));

	direct_interc direct_interc_260_ (
		.in(bram_PL_IN[41]),
		.out(direct_interc_260_out));

	direct_interc direct_interc_261_ (
		.in(bram_PL_IN[42]),
		.out(direct_interc_261_out));

	direct_interc direct_interc_262_ (
		.in(bram_PL_IN[43]),
		.out(direct_interc_262_out));

	direct_interc direct_interc_263_ (
		.in(bram_PL_IN[44]),
		.out(direct_interc_263_out));

	direct_interc direct_interc_264_ (
		.in(bram_PL_IN[45]),
		.out(direct_interc_264_out));

	direct_interc direct_interc_265_ (
		.in(bram_PL_IN[46]),
		.out(direct_interc_265_out));

	direct_interc direct_interc_266_ (
		.in(bram_PL_IN[47]),
		.out(direct_interc_266_out));

	direct_interc direct_interc_267_ (
		.in(bram_PL_IN[48]),
		.out(direct_interc_267_out));

	direct_interc direct_interc_268_ (
		.in(bram_PL_IN[49]),
		.out(direct_interc_268_out));

	direct_interc direct_interc_269_ (
		.in(bram_PL_IN[50]),
		.out(direct_interc_269_out));

	direct_interc direct_interc_270_ (
		.in(bram_PL_IN[51]),
		.out(direct_interc_270_out));

	direct_interc direct_interc_271_ (
		.in(bram_PL_IN[52]),
		.out(direct_interc_271_out));

	direct_interc direct_interc_272_ (
		.in(bram_PL_IN[53]),
		.out(direct_interc_272_out));

	direct_interc direct_interc_273_ (
		.in(bram_PL_IN[54]),
		.out(direct_interc_273_out));

	direct_interc direct_interc_274_ (
		.in(bram_PL_IN[55]),
		.out(direct_interc_274_out));

	direct_interc direct_interc_275_ (
		.in(bram_PL_IN[56]),
		.out(direct_interc_275_out));

	direct_interc direct_interc_276_ (
		.in(bram_PL_IN[57]),
		.out(direct_interc_276_out));

	direct_interc direct_interc_277_ (
		.in(bram_PL_IN[58]),
		.out(direct_interc_277_out));

	direct_interc direct_interc_278_ (
		.in(bram_PL_IN[59]),
		.out(direct_interc_278_out));

	direct_interc direct_interc_279_ (
		.in(bram_PL_IN[60]),
		.out(direct_interc_279_out));

	direct_interc direct_interc_280_ (
		.in(bram_PL_IN[61]),
		.out(direct_interc_280_out));

	direct_interc direct_interc_281_ (
		.in(bram_PL_IN[62]),
		.out(direct_interc_281_out));

	direct_interc direct_interc_282_ (
		.in(bram_PL_IN[63]),
		.out(direct_interc_282_out));

	direct_interc direct_interc_283_ (
		.in(bram_PL_IN[64]),
		.out(direct_interc_283_out));

	direct_interc direct_interc_284_ (
		.in(bram_PL_IN[65]),
		.out(direct_interc_284_out));

	direct_interc direct_interc_285_ (
		.in(bram_PL_IN[66]),
		.out(direct_interc_285_out));

	direct_interc direct_interc_286_ (
		.in(bram_PL_IN[67]),
		.out(direct_interc_286_out));

	direct_interc direct_interc_287_ (
		.in(bram_PL_IN[0]),
		.out(direct_interc_287_out));

	direct_interc direct_interc_288_ (
		.in(bram_PL_IN[1]),
		.out(direct_interc_288_out));

	direct_interc direct_interc_289_ (
		.in(bram_PL_IN[2]),
		.out(direct_interc_289_out));

	direct_interc direct_interc_290_ (
		.in(bram_PL_IN[3]),
		.out(direct_interc_290_out));

	direct_interc direct_interc_291_ (
		.in(bram_PL_IN[4]),
		.out(direct_interc_291_out));

	direct_interc direct_interc_292_ (
		.in(bram_PL_IN[5]),
		.out(direct_interc_292_out));

	direct_interc direct_interc_293_ (
		.in(bram_PL_IN[6]),
		.out(direct_interc_293_out));

	direct_interc direct_interc_294_ (
		.in(bram_PL_IN[7]),
		.out(direct_interc_294_out));

	direct_interc direct_interc_295_ (
		.in(bram_PL_IN[8]),
		.out(direct_interc_295_out));

	direct_interc direct_interc_296_ (
		.in(bram_PL_IN[9]),
		.out(direct_interc_296_out));

	direct_interc direct_interc_297_ (
		.in(bram_PL_IN[10]),
		.out(direct_interc_297_out));

	direct_interc direct_interc_298_ (
		.in(bram_PL_IN[11]),
		.out(direct_interc_298_out));

	direct_interc direct_interc_299_ (
		.in(bram_PL_IN[12]),
		.out(direct_interc_299_out));

	direct_interc direct_interc_300_ (
		.in(bram_PL_IN[13]),
		.out(direct_interc_300_out));

	direct_interc direct_interc_301_ (
		.in(bram_PL_IN[14]),
		.out(direct_interc_301_out));

	direct_interc direct_interc_302_ (
		.in(bram_PL_IN[15]),
		.out(direct_interc_302_out));

	direct_interc direct_interc_303_ (
		.in(bram_PL_IN[16]),
		.out(direct_interc_303_out));

	direct_interc direct_interc_304_ (
		.in(bram_PL_IN[17]),
		.out(direct_interc_304_out));

	direct_interc direct_interc_305_ (
		.in(bram_PL_IN[18]),
		.out(direct_interc_305_out));

	direct_interc direct_interc_306_ (
		.in(bram_PL_IN[19]),
		.out(direct_interc_306_out));

	direct_interc direct_interc_307_ (
		.in(bram_PL_IN[20]),
		.out(direct_interc_307_out));

	direct_interc direct_interc_308_ (
		.in(bram_PL_IN[21]),
		.out(direct_interc_308_out));

	direct_interc direct_interc_309_ (
		.in(bram_PL_IN[22]),
		.out(direct_interc_309_out));

	direct_interc direct_interc_310_ (
		.in(bram_PL_IN[23]),
		.out(direct_interc_310_out));

	direct_interc direct_interc_311_ (
		.in(bram_PL_IN[24]),
		.out(direct_interc_311_out));

	direct_interc direct_interc_312_ (
		.in(bram_PL_IN[25]),
		.out(direct_interc_312_out));

	direct_interc direct_interc_313_ (
		.in(bram_PL_IN[26]),
		.out(direct_interc_313_out));

	direct_interc direct_interc_314_ (
		.in(bram_PL_IN[27]),
		.out(direct_interc_314_out));

	direct_interc direct_interc_315_ (
		.in(bram_PL_IN[28]),
		.out(direct_interc_315_out));

	direct_interc direct_interc_316_ (
		.in(bram_PL_IN[29]),
		.out(direct_interc_316_out));

	direct_interc direct_interc_317_ (
		.in(bram_PL_IN[30]),
		.out(direct_interc_317_out));

	direct_interc direct_interc_318_ (
		.in(bram_PL_IN[31]),
		.out(direct_interc_318_out));

	direct_interc direct_interc_319_ (
		.in(bram_PL_IN[32]),
		.out(direct_interc_319_out));

	direct_interc direct_interc_320_ (
		.in(bram_PL_IN[33]),
		.out(direct_interc_320_out));

	direct_interc direct_interc_321_ (
		.in(bram_PL_IN[34]),
		.out(direct_interc_321_out));

	direct_interc direct_interc_322_ (
		.in(bram_PL_IN[35]),
		.out(direct_interc_322_out));

	direct_interc direct_interc_323_ (
		.in(bram_sc_in[0]),
		.out(direct_interc_323_out));

	direct_interc direct_interc_324_ (
		.in(bram_sc_in[1]),
		.out(direct_interc_324_out));

	direct_interc direct_interc_325_ (
		.in(bram_sc_in[2]),
		.out(direct_interc_325_out));

	direct_interc direct_interc_326_ (
		.in(bram_sc_in[3]),
		.out(direct_interc_326_out));

	direct_interc direct_interc_327_ (
		.in(bram_sc_in[4]),
		.out(direct_interc_327_out));

	direct_interc direct_interc_328_ (
		.in(bram_sc_in[5]),
		.out(direct_interc_328_out));

	direct_interc direct_interc_329_ (
		.in(bram_sc_in[6]),
		.out(direct_interc_329_out));

	direct_interc direct_interc_330_ (
		.in(bram_sc_in[7]),
		.out(direct_interc_330_out));

	direct_interc direct_interc_331_ (
		.in(bram_sc_in[8]),
		.out(direct_interc_331_out));

	direct_interc direct_interc_332_ (
		.in(bram_sc_in[9]),
		.out(direct_interc_332_out));

	direct_interc direct_interc_333_ (
		.in(bram_sc_in[10]),
		.out(direct_interc_333_out));

	direct_interc direct_interc_334_ (
		.in(bram_sc_in[11]),
		.out(direct_interc_334_out));

	direct_interc direct_interc_335_ (
		.in(bram_sc_in[12]),
		.out(direct_interc_335_out));

	direct_interc direct_interc_336_ (
		.in(bram_sc_in[13]),
		.out(direct_interc_336_out));

	direct_interc direct_interc_337_ (
		.in(bram_sc_in[14]),
		.out(direct_interc_337_out));

	direct_interc direct_interc_338_ (
		.in(bram_sc_in[15]),
		.out(direct_interc_338_out));

	direct_interc direct_interc_339_ (
		.in(bram_sc_in[16]),
		.out(direct_interc_339_out));

	direct_interc direct_interc_340_ (
		.in(bram_sc_in[17]),
		.out(direct_interc_340_out));

	direct_interc direct_interc_341_ (
		.in(bram_sc_in[18]),
		.out(direct_interc_341_out));

	direct_interc direct_interc_342_ (
		.in(bram_sc_in[19]),
		.out(direct_interc_342_out));

	direct_interc direct_interc_343_ (
		.in(bram_sc_in[20]),
		.out(direct_interc_343_out));

	direct_interc direct_interc_344_ (
		.in(bram_sc_in[21]),
		.out(direct_interc_344_out));

	direct_interc direct_interc_345_ (
		.in(bram_sc_in[22]),
		.out(direct_interc_345_out));

	direct_interc direct_interc_346_ (
		.in(bram_sc_in[23]),
		.out(direct_interc_346_out));

	direct_interc direct_interc_347_ (
		.in(bram_sc_in[24]),
		.out(direct_interc_347_out));

	direct_interc direct_interc_348_ (
		.in(bram_sc_in[25]),
		.out(direct_interc_348_out));

	direct_interc direct_interc_349_ (
		.in(bram_sc_in[26]),
		.out(direct_interc_349_out));

	direct_interc direct_interc_350_ (
		.in(bram_sc_in[27]),
		.out(direct_interc_350_out));

	direct_interc direct_interc_351_ (
		.in(bram_sc_in[28]),
		.out(direct_interc_351_out));

	direct_interc direct_interc_352_ (
		.in(bram_sc_in[29]),
		.out(direct_interc_352_out));

	direct_interc direct_interc_353_ (
		.in(bram_sc_in[30]),
		.out(direct_interc_353_out));

	direct_interc direct_interc_354_ (
		.in(bram_sc_in[31]),
		.out(direct_interc_354_out));

	direct_interc direct_interc_355_ (
		.in(bram_sc_in[32]),
		.out(direct_interc_355_out));

	direct_interc direct_interc_356_ (
		.in(bram_sc_in[33]),
		.out(direct_interc_356_out));

	direct_interc direct_interc_357_ (
		.in(bram_sc_in[34]),
		.out(direct_interc_357_out));

	direct_interc direct_interc_358_ (
		.in(bram_sc_in[35]),
		.out(direct_interc_358_out));

	direct_interc direct_interc_359_ (
		.in(bram_sc_in[36]),
		.out(direct_interc_359_out));

	direct_interc direct_interc_360_ (
		.in(bram_sc_in[37]),
		.out(direct_interc_360_out));

	direct_interc direct_interc_361_ (
		.in(bram_sc_in[38]),
		.out(direct_interc_361_out));

	direct_interc direct_interc_362_ (
		.in(bram_sc_in[39]),
		.out(direct_interc_362_out));

	direct_interc direct_interc_363_ (
		.in(bram_sc_in[40]),
		.out(direct_interc_363_out));

	direct_interc direct_interc_364_ (
		.in(bram_sc_in[41]),
		.out(direct_interc_364_out));

	direct_interc direct_interc_365_ (
		.in(bram_sc_in[42]),
		.out(direct_interc_365_out));

	direct_interc direct_interc_366_ (
		.in(bram_sc_in[43]),
		.out(direct_interc_366_out));

	direct_interc direct_interc_367_ (
		.in(logical_tile_bram_mode_default__clk_opt_0_clk_opt_O),
		.out(direct_interc_367_out));

	direct_interc direct_interc_368_ (
		.in(logical_tile_bram_mode_default__clk_opt_2_clk_opt_O),
		.out(direct_interc_368_out));

	direct_interc direct_interc_369_ (
		.in(logical_tile_bram_mode_default__clk_opt_1_clk_opt_O),
		.out(direct_interc_369_out));

	direct_interc direct_interc_370_ (
		.in(logical_tile_bram_mode_default__clk_opt_3_clk_opt_O),
		.out(direct_interc_370_out));

	direct_interc direct_interc_371_ (
		.in(bram_PL_IN[70]),
		.out(direct_interc_371_out));

	direct_interc direct_interc_372_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[0]),
		.out(direct_interc_372_out));

	direct_interc direct_interc_373_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[1]),
		.out(direct_interc_373_out));

	direct_interc direct_interc_374_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[2]),
		.out(direct_interc_374_out));

	direct_interc direct_interc_375_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[3]),
		.out(direct_interc_375_out));

	direct_interc direct_interc_376_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[4]),
		.out(direct_interc_376_out));

	direct_interc direct_interc_377_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[5]),
		.out(direct_interc_377_out));

	direct_interc direct_interc_378_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[6]),
		.out(direct_interc_378_out));

	direct_interc direct_interc_379_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[7]),
		.out(direct_interc_379_out));

	direct_interc direct_interc_380_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[8]),
		.out(direct_interc_380_out));

	direct_interc direct_interc_381_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[9]),
		.out(direct_interc_381_out));

	direct_interc direct_interc_382_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[10]),
		.out(direct_interc_382_out));

	direct_interc direct_interc_383_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[11]),
		.out(direct_interc_383_out));

	direct_interc direct_interc_384_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[12]),
		.out(direct_interc_384_out));

	direct_interc direct_interc_385_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[13]),
		.out(direct_interc_385_out));

	direct_interc direct_interc_386_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[14]),
		.out(direct_interc_386_out));

	direct_interc direct_interc_387_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[15]),
		.out(direct_interc_387_out));

	direct_interc direct_interc_388_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[16]),
		.out(direct_interc_388_out));

	direct_interc direct_interc_389_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A1_o[17]),
		.out(direct_interc_389_out));

	direct_interc direct_interc_390_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[0]),
		.out(direct_interc_390_out));

	direct_interc direct_interc_391_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[1]),
		.out(direct_interc_391_out));

	direct_interc direct_interc_392_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[2]),
		.out(direct_interc_392_out));

	direct_interc direct_interc_393_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[3]),
		.out(direct_interc_393_out));

	direct_interc direct_interc_394_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[4]),
		.out(direct_interc_394_out));

	direct_interc direct_interc_395_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[5]),
		.out(direct_interc_395_out));

	direct_interc direct_interc_396_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[6]),
		.out(direct_interc_396_out));

	direct_interc direct_interc_397_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[7]),
		.out(direct_interc_397_out));

	direct_interc direct_interc_398_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[8]),
		.out(direct_interc_398_out));

	direct_interc direct_interc_399_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[9]),
		.out(direct_interc_399_out));

	direct_interc direct_interc_400_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[10]),
		.out(direct_interc_400_out));

	direct_interc direct_interc_401_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[11]),
		.out(direct_interc_401_out));

	direct_interc direct_interc_402_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[12]),
		.out(direct_interc_402_out));

	direct_interc direct_interc_403_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[13]),
		.out(direct_interc_403_out));

	direct_interc direct_interc_404_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[14]),
		.out(direct_interc_404_out));

	direct_interc direct_interc_405_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[15]),
		.out(direct_interc_405_out));

	direct_interc direct_interc_406_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[16]),
		.out(direct_interc_406_out));

	direct_interc direct_interc_407_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B1_o[17]),
		.out(direct_interc_407_out));

	direct_interc direct_interc_408_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[0]),
		.out(direct_interc_408_out));

	direct_interc direct_interc_409_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[1]),
		.out(direct_interc_409_out));

	direct_interc direct_interc_410_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[2]),
		.out(direct_interc_410_out));

	direct_interc direct_interc_411_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[3]),
		.out(direct_interc_411_out));

	direct_interc direct_interc_412_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[4]),
		.out(direct_interc_412_out));

	direct_interc direct_interc_413_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[5]),
		.out(direct_interc_413_out));

	direct_interc direct_interc_414_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[6]),
		.out(direct_interc_414_out));

	direct_interc direct_interc_415_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[7]),
		.out(direct_interc_415_out));

	direct_interc direct_interc_416_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[8]),
		.out(direct_interc_416_out));

	direct_interc direct_interc_417_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[9]),
		.out(direct_interc_417_out));

	direct_interc direct_interc_418_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[10]),
		.out(direct_interc_418_out));

	direct_interc direct_interc_419_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[11]),
		.out(direct_interc_419_out));

	direct_interc direct_interc_420_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[12]),
		.out(direct_interc_420_out));

	direct_interc direct_interc_421_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[13]),
		.out(direct_interc_421_out));

	direct_interc direct_interc_422_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[14]),
		.out(direct_interc_422_out));

	direct_interc direct_interc_423_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[15]),
		.out(direct_interc_423_out));

	direct_interc direct_interc_424_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[16]),
		.out(direct_interc_424_out));

	direct_interc direct_interc_425_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_A2_o[17]),
		.out(direct_interc_425_out));

	direct_interc direct_interc_426_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[0]),
		.out(direct_interc_426_out));

	direct_interc direct_interc_427_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[1]),
		.out(direct_interc_427_out));

	direct_interc direct_interc_428_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[2]),
		.out(direct_interc_428_out));

	direct_interc direct_interc_429_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[3]),
		.out(direct_interc_429_out));

	direct_interc direct_interc_430_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[4]),
		.out(direct_interc_430_out));

	direct_interc direct_interc_431_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[5]),
		.out(direct_interc_431_out));

	direct_interc direct_interc_432_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[6]),
		.out(direct_interc_432_out));

	direct_interc direct_interc_433_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[7]),
		.out(direct_interc_433_out));

	direct_interc direct_interc_434_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[8]),
		.out(direct_interc_434_out));

	direct_interc direct_interc_435_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[9]),
		.out(direct_interc_435_out));

	direct_interc direct_interc_436_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[10]),
		.out(direct_interc_436_out));

	direct_interc direct_interc_437_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[11]),
		.out(direct_interc_437_out));

	direct_interc direct_interc_438_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[12]),
		.out(direct_interc_438_out));

	direct_interc direct_interc_439_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[13]),
		.out(direct_interc_439_out));

	direct_interc direct_interc_440_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[14]),
		.out(direct_interc_440_out));

	direct_interc direct_interc_441_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[15]),
		.out(direct_interc_441_out));

	direct_interc direct_interc_442_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[16]),
		.out(direct_interc_442_out));

	direct_interc direct_interc_443_ (
		.in(logical_tile_bram_mode_default__bram_rtl_0_bram_rtl_RDATA_B2_o[17]),
		.out(direct_interc_443_out));

	direct_interc direct_interc_444_ (
		.in(bram_sc_in[44]),
		.out(direct_interc_444_out));

	direct_interc direct_interc_445_ (
		.in(bram_sc_in[45]),
		.out(direct_interc_445_out));

	direct_interc direct_interc_446_ (
		.in(bram_sc_in[46]),
		.out(direct_interc_446_out));

	direct_interc direct_interc_447_ (
		.in(bram_sc_in[47]),
		.out(direct_interc_447_out));

	direct_interc direct_interc_448_ (
		.in(logical_tile_bram_mode_default__clk_opt_0_clk_opt_O),
		.out(direct_interc_448_out));

	direct_interc direct_interc_449_ (
		.in(logical_tile_bram_mode_default__clk_opt_1_clk_opt_O),
		.out(direct_interc_449_out));

	direct_interc direct_interc_450_ (
		.in(logical_tile_bram_mode_default__clk_opt_2_clk_opt_O),
		.out(direct_interc_450_out));

	direct_interc direct_interc_451_ (
		.in(logical_tile_bram_mode_default__clk_opt_3_clk_opt_O),
		.out(direct_interc_451_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_0 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_0_sram[0:4]),
		.sram_inv(mux_tree_size24_0_sram_inv[0:4]),
		.out(mux_tree_size24_0_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_1 (
		.in({bram_I00[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_1_sram[0:4]),
		.sram_inv(mux_tree_size24_1_sram_inv[0:4]),
		.out(mux_tree_size24_1_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_2 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_2_sram[0:4]),
		.sram_inv(mux_tree_size24_2_sram_inv[0:4]),
		.out(mux_tree_size24_2_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_3 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_3_sram[0:4]),
		.sram_inv(mux_tree_size24_3_sram_inv[0:4]),
		.out(mux_tree_size24_3_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_4 (
		.in({bram_I00[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_4_sram[0:4]),
		.sram_inv(mux_tree_size24_4_sram_inv[0:4]),
		.out(mux_tree_size24_4_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_5 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_5_sram[0:4]),
		.sram_inv(mux_tree_size24_5_sram_inv[0:4]),
		.out(mux_tree_size24_5_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_6 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_6_sram[0:4]),
		.sram_inv(mux_tree_size24_6_sram_inv[0:4]),
		.out(mux_tree_size24_6_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_7 (
		.in({bram_I01[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_7_sram[0:4]),
		.sram_inv(mux_tree_size24_7_sram_inv[0:4]),
		.out(mux_tree_size24_7_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_8 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_8_sram[0:4]),
		.sram_inv(mux_tree_size24_8_sram_inv[0:4]),
		.out(mux_tree_size24_8_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_9 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_9_sram[0:4]),
		.sram_inv(mux_tree_size24_9_sram_inv[0:4]),
		.out(mux_tree_size24_9_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_10 (
		.in({bram_I01[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_10_sram[0:4]),
		.sram_inv(mux_tree_size24_10_sram_inv[0:4]),
		.out(mux_tree_size24_10_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_11 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_11_sram[0:4]),
		.sram_inv(mux_tree_size24_11_sram_inv[0:4]),
		.out(mux_tree_size24_11_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_12 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_12_sram[0:4]),
		.sram_inv(mux_tree_size24_12_sram_inv[0:4]),
		.out(mux_tree_size24_12_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_13 (
		.in({bram_I02[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_13_sram[0:4]),
		.sram_inv(mux_tree_size24_13_sram_inv[0:4]),
		.out(mux_tree_size24_13_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_14 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_14_sram[0:4]),
		.sram_inv(mux_tree_size24_14_sram_inv[0:4]),
		.out(mux_tree_size24_14_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_15 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_15_sram[0:4]),
		.sram_inv(mux_tree_size24_15_sram_inv[0:4]),
		.out(mux_tree_size24_15_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_16 (
		.in({bram_I02[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_16_sram[0:4]),
		.sram_inv(mux_tree_size24_16_sram_inv[0:4]),
		.out(mux_tree_size24_16_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A1_i_17 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_17_sram[0:4]),
		.sram_inv(mux_tree_size24_17_sram_inv[0:4]),
		.out(mux_tree_size24_17_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_0 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_18_sram[0:4]),
		.sram_inv(mux_tree_size24_18_sram_inv[0:4]),
		.out(mux_tree_size24_18_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_1 (
		.in({bram_I10[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_19_sram[0:4]),
		.sram_inv(mux_tree_size24_19_sram_inv[0:4]),
		.out(mux_tree_size24_19_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_2 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_20_sram[0:4]),
		.sram_inv(mux_tree_size24_20_sram_inv[0:4]),
		.out(mux_tree_size24_20_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_3 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_21_sram[0:4]),
		.sram_inv(mux_tree_size24_21_sram_inv[0:4]),
		.out(mux_tree_size24_21_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_4 (
		.in({bram_I10[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_22_sram[0:4]),
		.sram_inv(mux_tree_size24_22_sram_inv[0:4]),
		.out(mux_tree_size24_22_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_5 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_23_sram[0:4]),
		.sram_inv(mux_tree_size24_23_sram_inv[0:4]),
		.out(mux_tree_size24_23_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_6 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_24_sram[0:4]),
		.sram_inv(mux_tree_size24_24_sram_inv[0:4]),
		.out(mux_tree_size24_24_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_7 (
		.in({bram_I11[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_25_sram[0:4]),
		.sram_inv(mux_tree_size24_25_sram_inv[0:4]),
		.out(mux_tree_size24_25_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_8 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_26_sram[0:4]),
		.sram_inv(mux_tree_size24_26_sram_inv[0:4]),
		.out(mux_tree_size24_26_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_9 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_27_sram[0:4]),
		.sram_inv(mux_tree_size24_27_sram_inv[0:4]),
		.out(mux_tree_size24_27_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_10 (
		.in({bram_I11[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_28_sram[0:4]),
		.sram_inv(mux_tree_size24_28_sram_inv[0:4]),
		.out(mux_tree_size24_28_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_11 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_29_sram[0:4]),
		.sram_inv(mux_tree_size24_29_sram_inv[0:4]),
		.out(mux_tree_size24_29_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_12 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_30_sram[0:4]),
		.sram_inv(mux_tree_size24_30_sram_inv[0:4]),
		.out(mux_tree_size24_30_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_13 (
		.in({bram_I12[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_31_sram[0:4]),
		.sram_inv(mux_tree_size24_31_sram_inv[0:4]),
		.out(mux_tree_size24_31_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_14 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_32_sram[0:4]),
		.sram_inv(mux_tree_size24_32_sram_inv[0:4]),
		.out(mux_tree_size24_32_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_15 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_33_sram[0:4]),
		.sram_inv(mux_tree_size24_33_sram_inv[0:4]),
		.out(mux_tree_size24_33_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_16 (
		.in({bram_I12[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_34_sram[0:4]),
		.sram_inv(mux_tree_size24_34_sram_inv[0:4]),
		.out(mux_tree_size24_34_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_A2_i_17 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_35_sram[0:4]),
		.sram_inv(mux_tree_size24_35_sram_inv[0:4]),
		.out(mux_tree_size24_35_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_0 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_36_sram[0:4]),
		.sram_inv(mux_tree_size24_36_sram_inv[0:4]),
		.out(mux_tree_size24_36_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_1 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_37_sram[0:4]),
		.sram_inv(mux_tree_size24_37_sram_inv[0:4]),
		.out(mux_tree_size24_37_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_2 (
		.in({bram_I00[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_38_sram[0:4]),
		.sram_inv(mux_tree_size24_38_sram_inv[0:4]),
		.out(mux_tree_size24_38_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_3 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_39_sram[0:4]),
		.sram_inv(mux_tree_size24_39_sram_inv[0:4]),
		.out(mux_tree_size24_39_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_4 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_40_sram[0:4]),
		.sram_inv(mux_tree_size24_40_sram_inv[0:4]),
		.out(mux_tree_size24_40_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_5 (
		.in({bram_I00[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_41_sram[0:4]),
		.sram_inv(mux_tree_size24_41_sram_inv[0:4]),
		.out(mux_tree_size24_41_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_6 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_42_sram[0:4]),
		.sram_inv(mux_tree_size24_42_sram_inv[0:4]),
		.out(mux_tree_size24_42_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_7 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_43_sram[0:4]),
		.sram_inv(mux_tree_size24_43_sram_inv[0:4]),
		.out(mux_tree_size24_43_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_8 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_44_sram[0:4]),
		.sram_inv(mux_tree_size24_44_sram_inv[0:4]),
		.out(mux_tree_size24_44_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_9 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_45_sram[0:4]),
		.sram_inv(mux_tree_size24_45_sram_inv[0:4]),
		.out(mux_tree_size24_45_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_10 (
		.in({bram_I01[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_46_sram[0:4]),
		.sram_inv(mux_tree_size24_46_sram_inv[0:4]),
		.out(mux_tree_size24_46_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_11 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_47_sram[0:4]),
		.sram_inv(mux_tree_size24_47_sram_inv[0:4]),
		.out(mux_tree_size24_47_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_12 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_48_sram[0:4]),
		.sram_inv(mux_tree_size24_48_sram_inv[0:4]),
		.out(mux_tree_size24_48_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_13 (
		.in({bram_I02[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_49_sram[0:4]),
		.sram_inv(mux_tree_size24_49_sram_inv[0:4]),
		.out(mux_tree_size24_49_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A1_i_14 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_50_sram[0:4]),
		.sram_inv(mux_tree_size24_50_sram_inv[0:4]),
		.out(mux_tree_size24_50_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_0 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_51_sram[0:4]),
		.sram_inv(mux_tree_size24_51_sram_inv[0:4]),
		.out(mux_tree_size24_51_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_1 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_52_sram[0:4]),
		.sram_inv(mux_tree_size24_52_sram_inv[0:4]),
		.out(mux_tree_size24_52_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_2 (
		.in({bram_I10[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_53_sram[0:4]),
		.sram_inv(mux_tree_size24_53_sram_inv[0:4]),
		.out(mux_tree_size24_53_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_3 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_54_sram[0:4]),
		.sram_inv(mux_tree_size24_54_sram_inv[0:4]),
		.out(mux_tree_size24_54_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_4 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_55_sram[0:4]),
		.sram_inv(mux_tree_size24_55_sram_inv[0:4]),
		.out(mux_tree_size24_55_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_5 (
		.in({bram_I10[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_56_sram[0:4]),
		.sram_inv(mux_tree_size24_56_sram_inv[0:4]),
		.out(mux_tree_size24_56_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_6 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_57_sram[0:4]),
		.sram_inv(mux_tree_size24_57_sram_inv[0:4]),
		.out(mux_tree_size24_57_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_7 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_58_sram[0:4]),
		.sram_inv(mux_tree_size24_58_sram_inv[0:4]),
		.out(mux_tree_size24_58_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_8 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_59_sram[0:4]),
		.sram_inv(mux_tree_size24_59_sram_inv[0:4]),
		.out(mux_tree_size24_59_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_9 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_60_sram[0:4]),
		.sram_inv(mux_tree_size24_60_sram_inv[0:4]),
		.out(mux_tree_size24_60_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_10 (
		.in({bram_I11[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_61_sram[0:4]),
		.sram_inv(mux_tree_size24_61_sram_inv[0:4]),
		.out(mux_tree_size24_61_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_11 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_62_sram[0:4]),
		.sram_inv(mux_tree_size24_62_sram_inv[0:4]),
		.out(mux_tree_size24_62_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_12 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_63_sram[0:4]),
		.sram_inv(mux_tree_size24_63_sram_inv[0:4]),
		.out(mux_tree_size24_63_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_A2_i_13 (
		.in({bram_I12[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_64_sram[0:4]),
		.sram_inv(mux_tree_size24_64_sram_inv[0:4]),
		.out(mux_tree_size24_64_out));

	mux_tree_size24 mux_bram_rtl_0_REN_A1_i_0 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_65_sram[0:4]),
		.sram_inv(mux_tree_size24_65_sram_inv[0:4]),
		.out(mux_tree_size24_65_out));

	mux_tree_size24 mux_bram_rtl_0_REN_A2_i_0 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_66_sram[0:4]),
		.sram_inv(mux_tree_size24_66_sram_inv[0:4]),
		.out(mux_tree_size24_66_out));

	mux_tree_size24 mux_bram_rtl_0_BE_A1_i_0 (
		.in({bram_I01[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_67_sram[0:4]),
		.sram_inv(mux_tree_size24_67_sram_inv[0:4]),
		.out(mux_tree_size24_67_out));

	mux_tree_size24 mux_bram_rtl_0_BE_A1_i_1 (
		.in({bram_I02[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_68_sram[0:4]),
		.sram_inv(mux_tree_size24_68_sram_inv[0:4]),
		.out(mux_tree_size24_68_out));

	mux_tree_size24 mux_bram_rtl_0_BE_A2_i_0 (
		.in({bram_I11[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_69_sram[0:4]),
		.sram_inv(mux_tree_size24_69_sram_inv[0:4]),
		.out(mux_tree_size24_69_out));

	mux_tree_size24 mux_bram_rtl_0_BE_A2_i_1 (
		.in({bram_I12[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_70_sram[0:4]),
		.sram_inv(mux_tree_size24_70_sram_inv[0:4]),
		.out(mux_tree_size24_70_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_0 (
		.in({bram_I00[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_71_sram[0:4]),
		.sram_inv(mux_tree_size24_71_sram_inv[0:4]),
		.out(mux_tree_size24_71_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_1 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_72_sram[0:4]),
		.sram_inv(mux_tree_size24_72_sram_inv[0:4]),
		.out(mux_tree_size24_72_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_2 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_73_sram[0:4]),
		.sram_inv(mux_tree_size24_73_sram_inv[0:4]),
		.out(mux_tree_size24_73_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_3 (
		.in({bram_I00[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_74_sram[0:4]),
		.sram_inv(mux_tree_size24_74_sram_inv[0:4]),
		.out(mux_tree_size24_74_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_4 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_75_sram[0:4]),
		.sram_inv(mux_tree_size24_75_sram_inv[0:4]),
		.out(mux_tree_size24_75_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_5 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_76_sram[0:4]),
		.sram_inv(mux_tree_size24_76_sram_inv[0:4]),
		.out(mux_tree_size24_76_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_6 (
		.in({bram_I01[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_77_sram[0:4]),
		.sram_inv(mux_tree_size24_77_sram_inv[0:4]),
		.out(mux_tree_size24_77_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_7 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_78_sram[0:4]),
		.sram_inv(mux_tree_size24_78_sram_inv[0:4]),
		.out(mux_tree_size24_78_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_8 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_79_sram[0:4]),
		.sram_inv(mux_tree_size24_79_sram_inv[0:4]),
		.out(mux_tree_size24_79_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_9 (
		.in({bram_I01[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_80_sram[0:4]),
		.sram_inv(mux_tree_size24_80_sram_inv[0:4]),
		.out(mux_tree_size24_80_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_10 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_81_sram[0:4]),
		.sram_inv(mux_tree_size24_81_sram_inv[0:4]),
		.out(mux_tree_size24_81_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_11 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_82_sram[0:4]),
		.sram_inv(mux_tree_size24_82_sram_inv[0:4]),
		.out(mux_tree_size24_82_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_12 (
		.in({bram_I02[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_83_sram[0:4]),
		.sram_inv(mux_tree_size24_83_sram_inv[0:4]),
		.out(mux_tree_size24_83_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_13 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_84_sram[0:4]),
		.sram_inv(mux_tree_size24_84_sram_inv[0:4]),
		.out(mux_tree_size24_84_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_14 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_85_sram[0:4]),
		.sram_inv(mux_tree_size24_85_sram_inv[0:4]),
		.out(mux_tree_size24_85_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_15 (
		.in({bram_I02[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_86_sram[0:4]),
		.sram_inv(mux_tree_size24_86_sram_inv[0:4]),
		.out(mux_tree_size24_86_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_16 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_87_sram[0:4]),
		.sram_inv(mux_tree_size24_87_sram_inv[0:4]),
		.out(mux_tree_size24_87_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B1_i_17 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_88_sram[0:4]),
		.sram_inv(mux_tree_size24_88_sram_inv[0:4]),
		.out(mux_tree_size24_88_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_0 (
		.in({bram_I10[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_89_sram[0:4]),
		.sram_inv(mux_tree_size24_89_sram_inv[0:4]),
		.out(mux_tree_size24_89_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_1 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_90_sram[0:4]),
		.sram_inv(mux_tree_size24_90_sram_inv[0:4]),
		.out(mux_tree_size24_90_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_2 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_91_sram[0:4]),
		.sram_inv(mux_tree_size24_91_sram_inv[0:4]),
		.out(mux_tree_size24_91_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_3 (
		.in({bram_I10[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_92_sram[0:4]),
		.sram_inv(mux_tree_size24_92_sram_inv[0:4]),
		.out(mux_tree_size24_92_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_4 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_93_sram[0:4]),
		.sram_inv(mux_tree_size24_93_sram_inv[0:4]),
		.out(mux_tree_size24_93_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_5 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_94_sram[0:4]),
		.sram_inv(mux_tree_size24_94_sram_inv[0:4]),
		.out(mux_tree_size24_94_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_6 (
		.in({bram_I11[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_95_sram[0:4]),
		.sram_inv(mux_tree_size24_95_sram_inv[0:4]),
		.out(mux_tree_size24_95_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_7 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_96_sram[0:4]),
		.sram_inv(mux_tree_size24_96_sram_inv[0:4]),
		.out(mux_tree_size24_96_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_8 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_97_sram[0:4]),
		.sram_inv(mux_tree_size24_97_sram_inv[0:4]),
		.out(mux_tree_size24_97_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_9 (
		.in({bram_I11[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_98_sram[0:4]),
		.sram_inv(mux_tree_size24_98_sram_inv[0:4]),
		.out(mux_tree_size24_98_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_10 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_99_sram[0:4]),
		.sram_inv(mux_tree_size24_99_sram_inv[0:4]),
		.out(mux_tree_size24_99_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_11 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_100_sram[0:4]),
		.sram_inv(mux_tree_size24_100_sram_inv[0:4]),
		.out(mux_tree_size24_100_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_12 (
		.in({bram_I12[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_101_sram[0:4]),
		.sram_inv(mux_tree_size24_101_sram_inv[0:4]),
		.out(mux_tree_size24_101_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_13 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_102_sram[0:4]),
		.sram_inv(mux_tree_size24_102_sram_inv[0:4]),
		.out(mux_tree_size24_102_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_14 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_103_sram[0:4]),
		.sram_inv(mux_tree_size24_103_sram_inv[0:4]),
		.out(mux_tree_size24_103_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_15 (
		.in({bram_I12[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_104_sram[0:4]),
		.sram_inv(mux_tree_size24_104_sram_inv[0:4]),
		.out(mux_tree_size24_104_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_16 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_105_sram[0:4]),
		.sram_inv(mux_tree_size24_105_sram_inv[0:4]),
		.out(mux_tree_size24_105_out));

	mux_tree_size24 mux_bram_rtl_0_WDATA_B2_i_17 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_106_sram[0:4]),
		.sram_inv(mux_tree_size24_106_sram_inv[0:4]),
		.out(mux_tree_size24_106_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_0 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_107_sram[0:4]),
		.sram_inv(mux_tree_size24_107_sram_inv[0:4]),
		.out(mux_tree_size24_107_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_1 (
		.in({bram_I00[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_108_sram[0:4]),
		.sram_inv(mux_tree_size24_108_sram_inv[0:4]),
		.out(mux_tree_size24_108_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_2 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_109_sram[0:4]),
		.sram_inv(mux_tree_size24_109_sram_inv[0:4]),
		.out(mux_tree_size24_109_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_3 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_110_sram[0:4]),
		.sram_inv(mux_tree_size24_110_sram_inv[0:4]),
		.out(mux_tree_size24_110_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_4 (
		.in({bram_I00[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_111_sram[0:4]),
		.sram_inv(mux_tree_size24_111_sram_inv[0:4]),
		.out(mux_tree_size24_111_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_5 (
		.in({bram_I00[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_112_sram[0:4]),
		.sram_inv(mux_tree_size24_112_sram_inv[0:4]),
		.out(mux_tree_size24_112_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_6 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_113_sram[0:4]),
		.sram_inv(mux_tree_size24_113_sram_inv[0:4]),
		.out(mux_tree_size24_113_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_7 (
		.in({bram_I01[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_114_sram[0:4]),
		.sram_inv(mux_tree_size24_114_sram_inv[0:4]),
		.out(mux_tree_size24_114_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_8 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_115_sram[0:4]),
		.sram_inv(mux_tree_size24_115_sram_inv[0:4]),
		.out(mux_tree_size24_115_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_9 (
		.in({bram_I01[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_116_sram[0:4]),
		.sram_inv(mux_tree_size24_116_sram_inv[0:4]),
		.out(mux_tree_size24_116_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_10 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_117_sram[0:4]),
		.sram_inv(mux_tree_size24_117_sram_inv[0:4]),
		.out(mux_tree_size24_117_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_11 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_118_sram[0:4]),
		.sram_inv(mux_tree_size24_118_sram_inv[0:4]),
		.out(mux_tree_size24_118_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_12 (
		.in({bram_I02[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_119_sram[0:4]),
		.sram_inv(mux_tree_size24_119_sram_inv[0:4]),
		.out(mux_tree_size24_119_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_13 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_120_sram[0:4]),
		.sram_inv(mux_tree_size24_120_sram_inv[0:4]),
		.out(mux_tree_size24_120_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B1_i_14 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_121_sram[0:4]),
		.sram_inv(mux_tree_size24_121_sram_inv[0:4]),
		.out(mux_tree_size24_121_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_0 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_122_sram[0:4]),
		.sram_inv(mux_tree_size24_122_sram_inv[0:4]),
		.out(mux_tree_size24_122_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_1 (
		.in({bram_I10[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_123_sram[0:4]),
		.sram_inv(mux_tree_size24_123_sram_inv[0:4]),
		.out(mux_tree_size24_123_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_2 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_124_sram[0:4]),
		.sram_inv(mux_tree_size24_124_sram_inv[0:4]),
		.out(mux_tree_size24_124_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_3 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_125_sram[0:4]),
		.sram_inv(mux_tree_size24_125_sram_inv[0:4]),
		.out(mux_tree_size24_125_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_4 (
		.in({bram_I10[0:11], bram_I30[0:11]}),
		.sram(mux_tree_size24_126_sram[0:4]),
		.sram_inv(mux_tree_size24_126_sram_inv[0:4]),
		.out(mux_tree_size24_126_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_5 (
		.in({bram_I10[0:11], bram_I20[0:11]}),
		.sram(mux_tree_size24_127_sram[0:4]),
		.sram_inv(mux_tree_size24_127_sram_inv[0:4]),
		.out(mux_tree_size24_127_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_6 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_128_sram[0:4]),
		.sram_inv(mux_tree_size24_128_sram_inv[0:4]),
		.out(mux_tree_size24_128_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_7 (
		.in({bram_I11[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_129_sram[0:4]),
		.sram_inv(mux_tree_size24_129_sram_inv[0:4]),
		.out(mux_tree_size24_129_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_8 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_130_sram[0:4]),
		.sram_inv(mux_tree_size24_130_sram_inv[0:4]),
		.out(mux_tree_size24_130_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_9 (
		.in({bram_I11[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_131_sram[0:4]),
		.sram_inv(mux_tree_size24_131_sram_inv[0:4]),
		.out(mux_tree_size24_131_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_10 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_132_sram[0:4]),
		.sram_inv(mux_tree_size24_132_sram_inv[0:4]),
		.out(mux_tree_size24_132_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_11 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_133_sram[0:4]),
		.sram_inv(mux_tree_size24_133_sram_inv[0:4]),
		.out(mux_tree_size24_133_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_12 (
		.in({bram_I12[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_134_sram[0:4]),
		.sram_inv(mux_tree_size24_134_sram_inv[0:4]),
		.out(mux_tree_size24_134_out));

	mux_tree_size24 mux_bram_rtl_0_ADDR_B2_i_13 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_135_sram[0:4]),
		.sram_inv(mux_tree_size24_135_sram_inv[0:4]),
		.out(mux_tree_size24_135_out));

	mux_tree_size24 mux_bram_rtl_0_REN_B1_i_0 (
		.in({bram_I02[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_136_sram[0:4]),
		.sram_inv(mux_tree_size24_136_sram_inv[0:4]),
		.out(mux_tree_size24_136_out));

	mux_tree_size24 mux_bram_rtl_0_REN_B2_i_0 (
		.in({bram_I12[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_137_sram[0:4]),
		.sram_inv(mux_tree_size24_137_sram_inv[0:4]),
		.out(mux_tree_size24_137_out));

	mux_tree_size24 mux_bram_rtl_0_BE_B1_i_0 (
		.in({bram_I01[0:11], bram_I31[0:11]}),
		.sram(mux_tree_size24_138_sram[0:4]),
		.sram_inv(mux_tree_size24_138_sram_inv[0:4]),
		.out(mux_tree_size24_138_out));

	mux_tree_size24 mux_bram_rtl_0_BE_B1_i_1 (
		.in({bram_I02[0:11], bram_I32[0:11]}),
		.sram(mux_tree_size24_139_sram[0:4]),
		.sram_inv(mux_tree_size24_139_sram_inv[0:4]),
		.out(mux_tree_size24_139_out));

	mux_tree_size24 mux_bram_rtl_0_BE_B2_i_0 (
		.in({bram_I11[0:11], bram_I21[0:11]}),
		.sram(mux_tree_size24_140_sram[0:4]),
		.sram_inv(mux_tree_size24_140_sram_inv[0:4]),
		.out(mux_tree_size24_140_out));

	mux_tree_size24 mux_bram_rtl_0_BE_B2_i_1 (
		.in({bram_I12[0:11], bram_I22[0:11]}),
		.sram(mux_tree_size24_141_sram[0:4]),
		.sram_inv(mux_tree_size24_141_sram_inv[0:4]),
		.out(mux_tree_size24_141_out));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_bram_mode_default__ff_wrap_0_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_0_ccff_tail),
		.mem_out(mux_tree_size24_0_sram[0:4]),
		.mem_outb(mux_tree_size24_0_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_1_ccff_tail),
		.mem_out(mux_tree_size24_1_sram[0:4]),
		.mem_outb(mux_tree_size24_1_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_2_ccff_tail),
		.mem_out(mux_tree_size24_2_sram[0:4]),
		.mem_outb(mux_tree_size24_2_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_3_ccff_tail),
		.mem_out(mux_tree_size24_3_sram[0:4]),
		.mem_outb(mux_tree_size24_3_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_4_ccff_tail),
		.mem_out(mux_tree_size24_4_sram[0:4]),
		.mem_outb(mux_tree_size24_4_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_5_ccff_tail),
		.mem_out(mux_tree_size24_5_sram[0:4]),
		.mem_outb(mux_tree_size24_5_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_6_ccff_tail),
		.mem_out(mux_tree_size24_6_sram[0:4]),
		.mem_outb(mux_tree_size24_6_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_7_ccff_tail),
		.mem_out(mux_tree_size24_7_sram[0:4]),
		.mem_outb(mux_tree_size24_7_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_8_ccff_tail),
		.mem_out(mux_tree_size24_8_sram[0:4]),
		.mem_outb(mux_tree_size24_8_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_9_ccff_tail),
		.mem_out(mux_tree_size24_9_sram[0:4]),
		.mem_outb(mux_tree_size24_9_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_10_ccff_tail),
		.mem_out(mux_tree_size24_10_sram[0:4]),
		.mem_outb(mux_tree_size24_10_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_11_ccff_tail),
		.mem_out(mux_tree_size24_11_sram[0:4]),
		.mem_outb(mux_tree_size24_11_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_12_ccff_tail),
		.mem_out(mux_tree_size24_12_sram[0:4]),
		.mem_outb(mux_tree_size24_12_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_13_ccff_tail),
		.mem_out(mux_tree_size24_13_sram[0:4]),
		.mem_outb(mux_tree_size24_13_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_14_ccff_tail),
		.mem_out(mux_tree_size24_14_sram[0:4]),
		.mem_outb(mux_tree_size24_14_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_15_ccff_tail),
		.mem_out(mux_tree_size24_15_sram[0:4]),
		.mem_outb(mux_tree_size24_15_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_16_ccff_tail),
		.mem_out(mux_tree_size24_16_sram[0:4]),
		.mem_outb(mux_tree_size24_16_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A1_i_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_16_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_17_ccff_tail),
		.mem_out(mux_tree_size24_17_sram[0:4]),
		.mem_outb(mux_tree_size24_17_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_17_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_18_ccff_tail),
		.mem_out(mux_tree_size24_18_sram[0:4]),
		.mem_outb(mux_tree_size24_18_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_18_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_19_ccff_tail),
		.mem_out(mux_tree_size24_19_sram[0:4]),
		.mem_outb(mux_tree_size24_19_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_19_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_20_ccff_tail),
		.mem_out(mux_tree_size24_20_sram[0:4]),
		.mem_outb(mux_tree_size24_20_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_20_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_21_ccff_tail),
		.mem_out(mux_tree_size24_21_sram[0:4]),
		.mem_outb(mux_tree_size24_21_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_21_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_22_ccff_tail),
		.mem_out(mux_tree_size24_22_sram[0:4]),
		.mem_outb(mux_tree_size24_22_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_22_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_23_ccff_tail),
		.mem_out(mux_tree_size24_23_sram[0:4]),
		.mem_outb(mux_tree_size24_23_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_23_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_24_ccff_tail),
		.mem_out(mux_tree_size24_24_sram[0:4]),
		.mem_outb(mux_tree_size24_24_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_24_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_25_ccff_tail),
		.mem_out(mux_tree_size24_25_sram[0:4]),
		.mem_outb(mux_tree_size24_25_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_25_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_26_ccff_tail),
		.mem_out(mux_tree_size24_26_sram[0:4]),
		.mem_outb(mux_tree_size24_26_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_26_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_27_ccff_tail),
		.mem_out(mux_tree_size24_27_sram[0:4]),
		.mem_outb(mux_tree_size24_27_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_27_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_28_ccff_tail),
		.mem_out(mux_tree_size24_28_sram[0:4]),
		.mem_outb(mux_tree_size24_28_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_28_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_29_ccff_tail),
		.mem_out(mux_tree_size24_29_sram[0:4]),
		.mem_outb(mux_tree_size24_29_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_29_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_30_ccff_tail),
		.mem_out(mux_tree_size24_30_sram[0:4]),
		.mem_outb(mux_tree_size24_30_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_30_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_31_ccff_tail),
		.mem_out(mux_tree_size24_31_sram[0:4]),
		.mem_outb(mux_tree_size24_31_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_31_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_32_ccff_tail),
		.mem_out(mux_tree_size24_32_sram[0:4]),
		.mem_outb(mux_tree_size24_32_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_32_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_33_ccff_tail),
		.mem_out(mux_tree_size24_33_sram[0:4]),
		.mem_outb(mux_tree_size24_33_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_33_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_34_ccff_tail),
		.mem_out(mux_tree_size24_34_sram[0:4]),
		.mem_outb(mux_tree_size24_34_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_A2_i_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_34_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_35_ccff_tail),
		.mem_out(mux_tree_size24_35_sram[0:4]),
		.mem_outb(mux_tree_size24_35_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_35_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_36_ccff_tail),
		.mem_out(mux_tree_size24_36_sram[0:4]),
		.mem_outb(mux_tree_size24_36_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_36_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_37_ccff_tail),
		.mem_out(mux_tree_size24_37_sram[0:4]),
		.mem_outb(mux_tree_size24_37_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_37_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_38_ccff_tail),
		.mem_out(mux_tree_size24_38_sram[0:4]),
		.mem_outb(mux_tree_size24_38_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_38_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_39_ccff_tail),
		.mem_out(mux_tree_size24_39_sram[0:4]),
		.mem_outb(mux_tree_size24_39_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_39_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_40_ccff_tail),
		.mem_out(mux_tree_size24_40_sram[0:4]),
		.mem_outb(mux_tree_size24_40_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_40_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_41_ccff_tail),
		.mem_out(mux_tree_size24_41_sram[0:4]),
		.mem_outb(mux_tree_size24_41_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_41_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_42_ccff_tail),
		.mem_out(mux_tree_size24_42_sram[0:4]),
		.mem_outb(mux_tree_size24_42_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_42_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_43_ccff_tail),
		.mem_out(mux_tree_size24_43_sram[0:4]),
		.mem_outb(mux_tree_size24_43_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_43_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_44_ccff_tail),
		.mem_out(mux_tree_size24_44_sram[0:4]),
		.mem_outb(mux_tree_size24_44_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_44_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_45_ccff_tail),
		.mem_out(mux_tree_size24_45_sram[0:4]),
		.mem_outb(mux_tree_size24_45_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_45_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_46_ccff_tail),
		.mem_out(mux_tree_size24_46_sram[0:4]),
		.mem_outb(mux_tree_size24_46_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_46_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_47_ccff_tail),
		.mem_out(mux_tree_size24_47_sram[0:4]),
		.mem_outb(mux_tree_size24_47_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_47_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_48_ccff_tail),
		.mem_out(mux_tree_size24_48_sram[0:4]),
		.mem_outb(mux_tree_size24_48_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_48_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_49_ccff_tail),
		.mem_out(mux_tree_size24_49_sram[0:4]),
		.mem_outb(mux_tree_size24_49_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A1_i_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_49_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_50_ccff_tail),
		.mem_out(mux_tree_size24_50_sram[0:4]),
		.mem_outb(mux_tree_size24_50_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_50_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_51_ccff_tail),
		.mem_out(mux_tree_size24_51_sram[0:4]),
		.mem_outb(mux_tree_size24_51_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_51_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_52_ccff_tail),
		.mem_out(mux_tree_size24_52_sram[0:4]),
		.mem_outb(mux_tree_size24_52_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_52_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_53_ccff_tail),
		.mem_out(mux_tree_size24_53_sram[0:4]),
		.mem_outb(mux_tree_size24_53_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_53_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_54_ccff_tail),
		.mem_out(mux_tree_size24_54_sram[0:4]),
		.mem_outb(mux_tree_size24_54_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_54_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_55_ccff_tail),
		.mem_out(mux_tree_size24_55_sram[0:4]),
		.mem_outb(mux_tree_size24_55_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_55_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_56_ccff_tail),
		.mem_out(mux_tree_size24_56_sram[0:4]),
		.mem_outb(mux_tree_size24_56_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_56_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_57_ccff_tail),
		.mem_out(mux_tree_size24_57_sram[0:4]),
		.mem_outb(mux_tree_size24_57_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_57_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_58_ccff_tail),
		.mem_out(mux_tree_size24_58_sram[0:4]),
		.mem_outb(mux_tree_size24_58_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_58_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_59_ccff_tail),
		.mem_out(mux_tree_size24_59_sram[0:4]),
		.mem_outb(mux_tree_size24_59_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_59_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_60_ccff_tail),
		.mem_out(mux_tree_size24_60_sram[0:4]),
		.mem_outb(mux_tree_size24_60_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_60_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_61_ccff_tail),
		.mem_out(mux_tree_size24_61_sram[0:4]),
		.mem_outb(mux_tree_size24_61_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_61_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_62_ccff_tail),
		.mem_out(mux_tree_size24_62_sram[0:4]),
		.mem_outb(mux_tree_size24_62_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_62_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_63_ccff_tail),
		.mem_out(mux_tree_size24_63_sram[0:4]),
		.mem_outb(mux_tree_size24_63_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_A2_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_63_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_64_ccff_tail),
		.mem_out(mux_tree_size24_64_sram[0:4]),
		.mem_outb(mux_tree_size24_64_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_REN_A1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_64_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_65_ccff_tail),
		.mem_out(mux_tree_size24_65_sram[0:4]),
		.mem_outb(mux_tree_size24_65_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_REN_A2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_65_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_66_ccff_tail),
		.mem_out(mux_tree_size24_66_sram[0:4]),
		.mem_outb(mux_tree_size24_66_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_BE_A1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_67_ccff_tail),
		.mem_out(mux_tree_size24_67_sram[0:4]),
		.mem_outb(mux_tree_size24_67_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_BE_A1_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_67_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_68_ccff_tail),
		.mem_out(mux_tree_size24_68_sram[0:4]),
		.mem_outb(mux_tree_size24_68_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_BE_A2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_68_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_69_ccff_tail),
		.mem_out(mux_tree_size24_69_sram[0:4]),
		.mem_outb(mux_tree_size24_69_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_BE_A2_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_69_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_70_ccff_tail),
		.mem_out(mux_tree_size24_70_sram[0:4]),
		.mem_outb(mux_tree_size24_70_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_71_ccff_tail),
		.mem_out(mux_tree_size24_71_sram[0:4]),
		.mem_outb(mux_tree_size24_71_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_71_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_72_ccff_tail),
		.mem_out(mux_tree_size24_72_sram[0:4]),
		.mem_outb(mux_tree_size24_72_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_72_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_73_ccff_tail),
		.mem_out(mux_tree_size24_73_sram[0:4]),
		.mem_outb(mux_tree_size24_73_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_73_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_74_ccff_tail),
		.mem_out(mux_tree_size24_74_sram[0:4]),
		.mem_outb(mux_tree_size24_74_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_74_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_75_ccff_tail),
		.mem_out(mux_tree_size24_75_sram[0:4]),
		.mem_outb(mux_tree_size24_75_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_75_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_76_ccff_tail),
		.mem_out(mux_tree_size24_76_sram[0:4]),
		.mem_outb(mux_tree_size24_76_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_76_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_77_ccff_tail),
		.mem_out(mux_tree_size24_77_sram[0:4]),
		.mem_outb(mux_tree_size24_77_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_77_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_78_ccff_tail),
		.mem_out(mux_tree_size24_78_sram[0:4]),
		.mem_outb(mux_tree_size24_78_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_78_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_79_ccff_tail),
		.mem_out(mux_tree_size24_79_sram[0:4]),
		.mem_outb(mux_tree_size24_79_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_79_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_80_ccff_tail),
		.mem_out(mux_tree_size24_80_sram[0:4]),
		.mem_outb(mux_tree_size24_80_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_80_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_81_ccff_tail),
		.mem_out(mux_tree_size24_81_sram[0:4]),
		.mem_outb(mux_tree_size24_81_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_81_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_82_ccff_tail),
		.mem_out(mux_tree_size24_82_sram[0:4]),
		.mem_outb(mux_tree_size24_82_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_82_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_83_ccff_tail),
		.mem_out(mux_tree_size24_83_sram[0:4]),
		.mem_outb(mux_tree_size24_83_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_83_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_84_ccff_tail),
		.mem_out(mux_tree_size24_84_sram[0:4]),
		.mem_outb(mux_tree_size24_84_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_84_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_85_ccff_tail),
		.mem_out(mux_tree_size24_85_sram[0:4]),
		.mem_outb(mux_tree_size24_85_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_85_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_86_ccff_tail),
		.mem_out(mux_tree_size24_86_sram[0:4]),
		.mem_outb(mux_tree_size24_86_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_86_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_87_ccff_tail),
		.mem_out(mux_tree_size24_87_sram[0:4]),
		.mem_outb(mux_tree_size24_87_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B1_i_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_87_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_88_ccff_tail),
		.mem_out(mux_tree_size24_88_sram[0:4]),
		.mem_outb(mux_tree_size24_88_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_88_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_89_ccff_tail),
		.mem_out(mux_tree_size24_89_sram[0:4]),
		.mem_outb(mux_tree_size24_89_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_89_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_90_ccff_tail),
		.mem_out(mux_tree_size24_90_sram[0:4]),
		.mem_outb(mux_tree_size24_90_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_90_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_91_ccff_tail),
		.mem_out(mux_tree_size24_91_sram[0:4]),
		.mem_outb(mux_tree_size24_91_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_91_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_92_ccff_tail),
		.mem_out(mux_tree_size24_92_sram[0:4]),
		.mem_outb(mux_tree_size24_92_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_92_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_93_ccff_tail),
		.mem_out(mux_tree_size24_93_sram[0:4]),
		.mem_outb(mux_tree_size24_93_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_93_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_94_ccff_tail),
		.mem_out(mux_tree_size24_94_sram[0:4]),
		.mem_outb(mux_tree_size24_94_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_94_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_95_ccff_tail),
		.mem_out(mux_tree_size24_95_sram[0:4]),
		.mem_outb(mux_tree_size24_95_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_95_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_96_ccff_tail),
		.mem_out(mux_tree_size24_96_sram[0:4]),
		.mem_outb(mux_tree_size24_96_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_96_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_97_ccff_tail),
		.mem_out(mux_tree_size24_97_sram[0:4]),
		.mem_outb(mux_tree_size24_97_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_97_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_98_ccff_tail),
		.mem_out(mux_tree_size24_98_sram[0:4]),
		.mem_outb(mux_tree_size24_98_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_98_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_99_ccff_tail),
		.mem_out(mux_tree_size24_99_sram[0:4]),
		.mem_outb(mux_tree_size24_99_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_99_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_100_ccff_tail),
		.mem_out(mux_tree_size24_100_sram[0:4]),
		.mem_outb(mux_tree_size24_100_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_100_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_101_ccff_tail),
		.mem_out(mux_tree_size24_101_sram[0:4]),
		.mem_outb(mux_tree_size24_101_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_101_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_102_ccff_tail),
		.mem_out(mux_tree_size24_102_sram[0:4]),
		.mem_outb(mux_tree_size24_102_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_102_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_103_ccff_tail),
		.mem_out(mux_tree_size24_103_sram[0:4]),
		.mem_outb(mux_tree_size24_103_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_103_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_104_ccff_tail),
		.mem_out(mux_tree_size24_104_sram[0:4]),
		.mem_outb(mux_tree_size24_104_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_104_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_105_ccff_tail),
		.mem_out(mux_tree_size24_105_sram[0:4]),
		.mem_outb(mux_tree_size24_105_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_WDATA_B2_i_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_105_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_106_ccff_tail),
		.mem_out(mux_tree_size24_106_sram[0:4]),
		.mem_outb(mux_tree_size24_106_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_106_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_107_ccff_tail),
		.mem_out(mux_tree_size24_107_sram[0:4]),
		.mem_outb(mux_tree_size24_107_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_107_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_108_ccff_tail),
		.mem_out(mux_tree_size24_108_sram[0:4]),
		.mem_outb(mux_tree_size24_108_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_108_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_109_ccff_tail),
		.mem_out(mux_tree_size24_109_sram[0:4]),
		.mem_outb(mux_tree_size24_109_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_109_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_110_ccff_tail),
		.mem_out(mux_tree_size24_110_sram[0:4]),
		.mem_outb(mux_tree_size24_110_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_110_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_111_ccff_tail),
		.mem_out(mux_tree_size24_111_sram[0:4]),
		.mem_outb(mux_tree_size24_111_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_111_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_112_ccff_tail),
		.mem_out(mux_tree_size24_112_sram[0:4]),
		.mem_outb(mux_tree_size24_112_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_112_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_113_ccff_tail),
		.mem_out(mux_tree_size24_113_sram[0:4]),
		.mem_outb(mux_tree_size24_113_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_113_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_114_ccff_tail),
		.mem_out(mux_tree_size24_114_sram[0:4]),
		.mem_outb(mux_tree_size24_114_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_114_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_115_ccff_tail),
		.mem_out(mux_tree_size24_115_sram[0:4]),
		.mem_outb(mux_tree_size24_115_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_115_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_116_ccff_tail),
		.mem_out(mux_tree_size24_116_sram[0:4]),
		.mem_outb(mux_tree_size24_116_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_116_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_117_ccff_tail),
		.mem_out(mux_tree_size24_117_sram[0:4]),
		.mem_outb(mux_tree_size24_117_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_117_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_118_ccff_tail),
		.mem_out(mux_tree_size24_118_sram[0:4]),
		.mem_outb(mux_tree_size24_118_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_118_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_119_ccff_tail),
		.mem_out(mux_tree_size24_119_sram[0:4]),
		.mem_outb(mux_tree_size24_119_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_119_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_120_ccff_tail),
		.mem_out(mux_tree_size24_120_sram[0:4]),
		.mem_outb(mux_tree_size24_120_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B1_i_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_120_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_121_ccff_tail),
		.mem_out(mux_tree_size24_121_sram[0:4]),
		.mem_outb(mux_tree_size24_121_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_121_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_122_ccff_tail),
		.mem_out(mux_tree_size24_122_sram[0:4]),
		.mem_outb(mux_tree_size24_122_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_122_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_123_ccff_tail),
		.mem_out(mux_tree_size24_123_sram[0:4]),
		.mem_outb(mux_tree_size24_123_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_123_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_124_ccff_tail),
		.mem_out(mux_tree_size24_124_sram[0:4]),
		.mem_outb(mux_tree_size24_124_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_124_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_125_ccff_tail),
		.mem_out(mux_tree_size24_125_sram[0:4]),
		.mem_outb(mux_tree_size24_125_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_125_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_126_ccff_tail),
		.mem_out(mux_tree_size24_126_sram[0:4]),
		.mem_outb(mux_tree_size24_126_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_126_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_127_ccff_tail),
		.mem_out(mux_tree_size24_127_sram[0:4]),
		.mem_outb(mux_tree_size24_127_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_127_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_128_ccff_tail),
		.mem_out(mux_tree_size24_128_sram[0:4]),
		.mem_outb(mux_tree_size24_128_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_128_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_129_ccff_tail),
		.mem_out(mux_tree_size24_129_sram[0:4]),
		.mem_outb(mux_tree_size24_129_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_129_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_130_ccff_tail),
		.mem_out(mux_tree_size24_130_sram[0:4]),
		.mem_outb(mux_tree_size24_130_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_130_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_131_ccff_tail),
		.mem_out(mux_tree_size24_131_sram[0:4]),
		.mem_outb(mux_tree_size24_131_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_131_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_132_ccff_tail),
		.mem_out(mux_tree_size24_132_sram[0:4]),
		.mem_outb(mux_tree_size24_132_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_132_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_133_ccff_tail),
		.mem_out(mux_tree_size24_133_sram[0:4]),
		.mem_outb(mux_tree_size24_133_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_133_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_134_ccff_tail),
		.mem_out(mux_tree_size24_134_sram[0:4]),
		.mem_outb(mux_tree_size24_134_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_ADDR_B2_i_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_134_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_135_ccff_tail),
		.mem_out(mux_tree_size24_135_sram[0:4]),
		.mem_outb(mux_tree_size24_135_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_REN_B1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_135_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_136_ccff_tail),
		.mem_out(mux_tree_size24_136_sram[0:4]),
		.mem_outb(mux_tree_size24_136_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_REN_B2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_136_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_137_ccff_tail),
		.mem_out(mux_tree_size24_137_sram[0:4]),
		.mem_outb(mux_tree_size24_137_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_BE_B1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_138_ccff_tail),
		.mem_out(mux_tree_size24_138_sram[0:4]),
		.mem_outb(mux_tree_size24_138_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_BE_B1_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_138_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_139_ccff_tail),
		.mem_out(mux_tree_size24_139_sram[0:4]),
		.mem_outb(mux_tree_size24_139_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_BE_B2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_139_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_140_ccff_tail),
		.mem_out(mux_tree_size24_140_sram[0:4]),
		.mem_outb(mux_tree_size24_140_sram_inv[0:4]));

	mux_tree_size24_mem mem_bram_rtl_0_BE_B2_i_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_140_ccff_tail),
		.ccff_tail(mux_tree_size24_mem_141_ccff_tail),
		.mem_out(mux_tree_size24_141_sram[0:4]),
		.mem_outb(mux_tree_size24_141_sram_inv[0:4]));

	mux_tree_size6 mux_bram_rtl_0_WEN_A1_i_0 (
		.in(bram_IS2[0:5]),
		.sram(mux_tree_size6_0_sram[0:2]),
		.sram_inv(mux_tree_size6_0_sram_inv[0:2]),
		.out(mux_tree_size6_0_out));

	mux_tree_size6 mux_bram_rtl_0_WEN_A2_i_0 (
		.in(bram_IS2[0:5]),
		.sram(mux_tree_size6_1_sram[0:2]),
		.sram_inv(mux_tree_size6_1_sram_inv[0:2]),
		.out(mux_tree_size6_1_out));

	mux_tree_size6 mux_bram_rtl_0_WEN_B1_i_0 (
		.in(bram_IS2[0:5]),
		.sram(mux_tree_size6_2_sram[0:2]),
		.sram_inv(mux_tree_size6_2_sram_inv[0:2]),
		.out(mux_tree_size6_2_out));

	mux_tree_size6 mux_bram_rtl_0_WEN_B2_i_0 (
		.in(bram_IS2[0:5]),
		.sram(mux_tree_size6_3_sram[0:2]),
		.sram_inv(mux_tree_size6_3_sram_inv[0:2]),
		.out(mux_tree_size6_3_out));

	mux_tree_size6 mux_sr_opt_0_I_0 (
		.in(bram_IS0[0:5]),
		.sram(mux_tree_size6_4_sram[0:2]),
		.sram_inv(mux_tree_size6_4_sram_inv[0:2]),
		.out(mux_tree_size6_4_out));

	mux_tree_size6 mux_sr_opt_1_I_0 (
		.in(bram_IS0[0:5]),
		.sram(mux_tree_size6_5_sram[0:2]),
		.sram_inv(mux_tree_size6_5_sram_inv[0:2]),
		.out(mux_tree_size6_5_out));

	mux_tree_size6 mux_sr_opt_2_I_0 (
		.in(bram_IS0[0:5]),
		.sram(mux_tree_size6_6_sram[0:2]),
		.sram_inv(mux_tree_size6_6_sram_inv[0:2]),
		.out(mux_tree_size6_6_out));

	mux_tree_size6 mux_sr_opt_3_I_0 (
		.in(bram_IS0[0:5]),
		.sram(mux_tree_size6_7_sram[0:2]),
		.sram_inv(mux_tree_size6_7_sram_inv[0:2]),
		.out(mux_tree_size6_7_out));

	mux_tree_size6 mux_flush_opt_0_I_0 (
		.in(bram_IS2[0:5]),
		.sram(mux_tree_size6_8_sram[0:2]),
		.sram_inv(mux_tree_size6_8_sram_inv[0:2]),
		.out(mux_tree_size6_8_out));

	mux_tree_size6 mux_flush_opt_0_I_1 (
		.in(bram_IS2[0:5]),
		.sram(mux_tree_size6_9_sram[0:2]),
		.sram_inv(mux_tree_size6_9_sram_inv[0:2]),
		.out(mux_tree_size6_9_out));

	mux_tree_size6 mux_ff_wrap_0_enable_0 (
		.in(bram_IS1[0:5]),
		.sram(mux_tree_size6_10_sram[0:2]),
		.sram_inv(mux_tree_size6_10_sram_inv[0:2]),
		.out(mux_tree_size6_10_out));

	mux_tree_size6 mux_ff_wrap_0_enable_1 (
		.in(bram_IS1[0:5]),
		.sram(mux_tree_size6_11_sram[0:2]),
		.sram_inv(mux_tree_size6_11_sram_inv[0:2]),
		.out(mux_tree_size6_11_out));

	mux_tree_size6 mux_ff_wrap_0_enable_2 (
		.in(bram_IS1[0:5]),
		.sram(mux_tree_size6_12_sram[0:2]),
		.sram_inv(mux_tree_size6_12_sram_inv[0:2]),
		.out(mux_tree_size6_12_out));

	mux_tree_size6 mux_ff_wrap_0_enable_3 (
		.in(bram_IS1[0:5]),
		.sram(mux_tree_size6_13_sram[0:2]),
		.sram_inv(mux_tree_size6_13_sram_inv[0:2]),
		.out(mux_tree_size6_13_out));

	mux_tree_size6_mem mem_bram_rtl_0_WEN_A1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_66_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_0_ccff_tail),
		.mem_out(mux_tree_size6_0_sram[0:2]),
		.mem_outb(mux_tree_size6_0_sram_inv[0:2]));

	mux_tree_size6_mem mem_bram_rtl_0_WEN_A2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_1_ccff_tail),
		.mem_out(mux_tree_size6_1_sram[0:2]),
		.mem_outb(mux_tree_size6_1_sram_inv[0:2]));

	mux_tree_size6_mem mem_bram_rtl_0_WEN_B1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_137_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_2_ccff_tail),
		.mem_out(mux_tree_size6_2_sram[0:2]),
		.mem_outb(mux_tree_size6_2_sram_inv[0:2]));

	mux_tree_size6_mem mem_bram_rtl_0_WEN_B2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_3_ccff_tail),
		.mem_out(mux_tree_size6_3_sram[0:2]),
		.mem_outb(mux_tree_size6_3_sram_inv[0:2]));

	mux_tree_size6_mem mem_sr_opt_0_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_4_ccff_tail),
		.mem_out(mux_tree_size6_4_sram[0:2]),
		.mem_outb(mux_tree_size6_4_sram_inv[0:2]));

	mux_tree_size6_mem mem_sr_opt_1_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_5_ccff_tail),
		.mem_out(mux_tree_size6_5_sram[0:2]),
		.mem_outb(mux_tree_size6_5_sram_inv[0:2]));

	mux_tree_size6_mem mem_sr_opt_2_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_6_ccff_tail),
		.mem_out(mux_tree_size6_6_sram[0:2]),
		.mem_outb(mux_tree_size6_6_sram_inv[0:2]));

	mux_tree_size6_mem mem_sr_opt_3_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_7_ccff_tail),
		.mem_out(mux_tree_size6_7_sram[0:2]),
		.mem_outb(mux_tree_size6_7_sram_inv[0:2]));

	mux_tree_size6_mem mem_flush_opt_0_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_8_ccff_tail),
		.mem_out(mux_tree_size6_8_sram[0:2]),
		.mem_outb(mux_tree_size6_8_sram_inv[0:2]));

	mux_tree_size6_mem mem_flush_opt_0_I_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_9_ccff_tail),
		.mem_out(mux_tree_size6_9_sram[0:2]),
		.mem_outb(mux_tree_size6_9_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_10_ccff_tail),
		.mem_out(mux_tree_size6_10_sram[0:2]),
		.mem_outb(mux_tree_size6_10_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_enable_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_11_ccff_tail),
		.mem_out(mux_tree_size6_11_sram[0:2]),
		.mem_outb(mux_tree_size6_11_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_enable_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_12_ccff_tail),
		.mem_out(mux_tree_size6_12_sram[0:2]),
		.mem_outb(mux_tree_size6_12_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_enable_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_12_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size6_13_sram[0:2]),
		.mem_outb(mux_tree_size6_13_sram_inv[0:2]));

	mux_tree_size2 mux_bram_rtl_0_FLUSH1_i_0 (
		.in(logical_tile_bram_mode_default__flush_opt_0_flush_opt_O[0:1]),
		.sram(mux_tree_size2_0_sram),
		.sram_inv(mux_tree_size2_0_sram_inv),
		.out(mux_tree_size2_0_out));

	mux_tree_size2 mux_bram_rtl_0_FLUSH2_i_0 (
		.in(logical_tile_bram_mode_default__flush_opt_0_flush_opt_O[0:1]),
		.sram(mux_tree_size2_1_sram),
		.sram_inv(mux_tree_size2_1_sram_inv),
		.out(mux_tree_size2_1_out));

	mux_tree_size2_mem mem_bram_rtl_0_FLUSH1_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_70_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_0_ccff_tail),
		.mem_out(mux_tree_size2_0_sram),
		.mem_outb(mux_tree_size2_0_sram_inv));

	mux_tree_size2_mem mem_bram_rtl_0_FLUSH2_i_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size24_mem_141_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_1_ccff_tail),
		.mem_out(mux_tree_size2_1_sram),
		.mem_outb(mux_tree_size2_1_sram_inv));

	mux_tree_clock_size16 mux_clk_opt_0_I_0 (
		.in(bram_clk[0:15]),
		.sram(mux_tree_clock_size16_0_sram[0:3]),
		.sram_inv(mux_tree_clock_size16_0_sram_inv[0:3]),
		.out(mux_tree_clock_size16_0_out));

	mux_tree_clock_size16 mux_clk_opt_1_I_0 (
		.in(bram_clk[0:15]),
		.sram(mux_tree_clock_size16_1_sram[0:3]),
		.sram_inv(mux_tree_clock_size16_1_sram_inv[0:3]),
		.out(mux_tree_clock_size16_1_out));

	mux_tree_clock_size16 mux_clk_opt_2_I_0 (
		.in(bram_clk[0:15]),
		.sram(mux_tree_clock_size16_2_sram[0:3]),
		.sram_inv(mux_tree_clock_size16_2_sram_inv[0:3]),
		.out(mux_tree_clock_size16_2_out));

	mux_tree_clock_size16 mux_clk_opt_3_I_0 (
		.in(bram_clk[0:15]),
		.sram(mux_tree_clock_size16_3_sram[0:3]),
		.sram_inv(mux_tree_clock_size16_3_sram_inv[0:3]),
		.out(mux_tree_clock_size16_3_out));

	mux_tree_clock_size16_mem mem_clk_opt_0_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_9_ccff_tail),
		.ccff_tail(mux_tree_clock_size16_mem_0_ccff_tail),
		.mem_out(mux_tree_clock_size16_0_sram[0:3]),
		.mem_outb(mux_tree_clock_size16_0_sram_inv[0:3]));

	mux_tree_clock_size16_mem mem_clk_opt_1_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_clock_size16_mem_0_ccff_tail),
		.ccff_tail(mux_tree_clock_size16_mem_1_ccff_tail),
		.mem_out(mux_tree_clock_size16_1_sram[0:3]),
		.mem_outb(mux_tree_clock_size16_1_sram_inv[0:3]));

	mux_tree_clock_size16_mem mem_clk_opt_2_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_clock_size16_mem_1_ccff_tail),
		.ccff_tail(mux_tree_clock_size16_mem_2_ccff_tail),
		.mem_out(mux_tree_clock_size16_2_sram[0:3]),
		.mem_outb(mux_tree_clock_size16_2_sram_inv[0:3]));

	mux_tree_clock_size16_mem mem_clk_opt_3_I_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_clock_size16_mem_2_ccff_tail),
		.ccff_tail(mux_tree_clock_size16_mem_3_ccff_tail),
		.mem_out(mux_tree_clock_size16_3_sram[0:3]),
		.mem_outb(mux_tree_clock_size16_3_sram_inv[0:3]));

	mux_tree_size4 mux_ff_wrap_0_reset_0 (
		.in({logical_tile_bram_mode_default__sr_opt_0_sr_opt_O, logical_tile_bram_mode_default__sr_opt_1_sr_opt_O, logical_tile_bram_mode_default__sr_opt_2_sr_opt_O, logical_tile_bram_mode_default__sr_opt_3_sr_opt_O}),
		.sram(mux_tree_size4_0_sram[0:1]),
		.sram_inv(mux_tree_size4_0_sram_inv[0:1]),
		.out(mux_tree_size4_0_out));

	mux_tree_size4 mux_ff_wrap_0_reset_1 (
		.in({logical_tile_bram_mode_default__sr_opt_0_sr_opt_O, logical_tile_bram_mode_default__sr_opt_1_sr_opt_O, logical_tile_bram_mode_default__sr_opt_2_sr_opt_O, logical_tile_bram_mode_default__sr_opt_3_sr_opt_O}),
		.sram(mux_tree_size4_1_sram[0:1]),
		.sram_inv(mux_tree_size4_1_sram_inv[0:1]),
		.out(mux_tree_size4_1_out));

	mux_tree_size4 mux_ff_wrap_0_reset_2 (
		.in({logical_tile_bram_mode_default__sr_opt_0_sr_opt_O, logical_tile_bram_mode_default__sr_opt_1_sr_opt_O, logical_tile_bram_mode_default__sr_opt_2_sr_opt_O, logical_tile_bram_mode_default__sr_opt_3_sr_opt_O}),
		.sram(mux_tree_size4_2_sram[0:1]),
		.sram_inv(mux_tree_size4_2_sram_inv[0:1]),
		.out(mux_tree_size4_2_out));

	mux_tree_size4 mux_ff_wrap_0_reset_3 (
		.in({logical_tile_bram_mode_default__sr_opt_0_sr_opt_O, logical_tile_bram_mode_default__sr_opt_1_sr_opt_O, logical_tile_bram_mode_default__sr_opt_2_sr_opt_O, logical_tile_bram_mode_default__sr_opt_3_sr_opt_O}),
		.sram(mux_tree_size4_3_sram[0:1]),
		.sram_inv(mux_tree_size4_3_sram_inv[0:1]),
		.out(mux_tree_size4_3_out));

	mux_tree_size4_mem mem_ff_wrap_0_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_clock_size16_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_0_ccff_tail),
		.mem_out(mux_tree_size4_0_sram[0:1]),
		.mem_outb(mux_tree_size4_0_sram_inv[0:1]));

	mux_tree_size4_mem mem_ff_wrap_0_reset_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_1_ccff_tail),
		.mem_out(mux_tree_size4_1_sram[0:1]),
		.mem_outb(mux_tree_size4_1_sram_inv[0:1]));

	mux_tree_size4_mem mem_ff_wrap_0_reset_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_2_ccff_tail),
		.mem_out(mux_tree_size4_2_sram[0:1]),
		.mem_outb(mux_tree_size4_2_sram_inv[0:1]));

	mux_tree_size4_mem mem_ff_wrap_0_reset_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size4_mem_3_ccff_tail),
		.mem_out(mux_tree_size4_3_sram[0:1]),
		.mem_outb(mux_tree_size4_3_sram_inv[0:1]));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_bram_ -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: bram -----
