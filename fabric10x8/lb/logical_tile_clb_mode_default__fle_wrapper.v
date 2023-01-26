//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: fle_wrapper
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: fle_wrapper -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper -----
module logical_tile_clb_mode_default__fle_wrapper(config_enable,
                                                  prog_clock,
                                                  scan_enable,
                                                  global_reset,
                                                  scan_mode,
                                                  fle_wrapper_II,
                                                  fle_wrapper_SS,
                                                  fle_wrapper_cin,
                                                  fle_wrapper_clk,
                                                  fle_wrapper_cascdn_i,
                                                  fle_wrapper_cascup_i,
                                                  fle_wrapper_sc_in,
                                                  ccff_head,
                                                  fle_wrapper_out,
                                                  fle_wrapper_cout,
                                                  fle_wrapper_cascdn_o,
                                                  fle_wrapper_cascup_o,
                                                  fle_wrapper_sc_out,
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
input [0:47] fle_wrapper_II;
//----- INPUT PORTS -----
input [0:5] fle_wrapper_SS;
//----- INPUT PORTS -----
input [0:0] fle_wrapper_cin;
//----- INPUT PORTS -----
input [0:0] fle_wrapper_clk;
//----- INPUT PORTS -----
input [0:0] fle_wrapper_cascdn_i;
//----- INPUT PORTS -----
input [0:0] fle_wrapper_cascup_i;
//----- INPUT PORTS -----
input [0:1] fle_wrapper_sc_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:23] fle_wrapper_out;
//----- OUTPUT PORTS -----
output [0:0] fle_wrapper_cout;
//----- OUTPUT PORTS -----
output [0:0] fle_wrapper_cascdn_o;
//----- OUTPUT PORTS -----
output [0:0] fle_wrapper_cascup_o;
//----- OUTPUT PORTS -----
output [0:1] fle_wrapper_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_sc_out;
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
wire [0:2] mux_tree_size6_6_sram;
wire [0:2] mux_tree_size6_6_sram_inv;
wire [0:2] mux_tree_size6_7_sram;
wire [0:2] mux_tree_size6_7_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.comb_block_II({direct_interc_13_out, direct_interc_14_out, direct_interc_15_out, direct_interc_16_out, direct_interc_17_out, direct_interc_18_out, direct_interc_19_out, direct_interc_20_out, direct_interc_21_out, direct_interc_22_out, direct_interc_23_out, direct_interc_24_out, direct_interc_25_out, direct_interc_26_out, direct_interc_27_out, direct_interc_28_out, direct_interc_29_out, direct_interc_30_out, direct_interc_31_out, direct_interc_32_out, direct_interc_33_out, direct_interc_34_out, direct_interc_35_out, direct_interc_36_out, direct_interc_37_out, direct_interc_38_out, direct_interc_39_out, direct_interc_40_out, direct_interc_41_out, direct_interc_42_out, direct_interc_43_out, direct_interc_44_out, direct_interc_45_out, direct_interc_46_out, direct_interc_47_out, direct_interc_48_out, direct_interc_49_out, direct_interc_50_out, direct_interc_51_out, direct_interc_52_out, direct_interc_53_out, direct_interc_54_out, direct_interc_55_out, direct_interc_56_out, direct_interc_57_out, direct_interc_58_out, direct_interc_59_out, direct_interc_60_out}),
		.comb_block_cin(direct_interc_61_out),
		.comb_block_cascdn_i(direct_interc_62_out),
		.comb_block_cascup_i(direct_interc_63_out),
		.ccff_head(ccff_head),
		.comb_block_out0(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[0:7]),
		.comb_block_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[0:7]),
		.comb_block_out1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[0:7]),
		.comb_block_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_cout),
		.comb_block_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_cascdn_o),
		.comb_block_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_wrap_o_up({direct_interc_64_out, direct_interc_65_out, direct_interc_66_out, direct_interc_67_out, direct_interc_68_out, direct_interc_69_out, direct_interc_70_out, direct_interc_71_out}),
		.ff_wrap_o_dn({direct_interc_72_out, direct_interc_73_out, direct_interc_74_out, direct_interc_75_out, direct_interc_76_out, direct_interc_77_out, direct_interc_78_out, direct_interc_79_out}),
		.ff_wrap_reset({mux_tree_size6_0_out, mux_tree_size6_1_out, mux_tree_size6_2_out, mux_tree_size6_3_out}),
		.ff_wrap_enable({mux_tree_size6_4_out, mux_tree_size6_5_out, mux_tree_size6_6_out, mux_tree_size6_7_out}),
		.ff_wrap_sc_in({direct_interc_80_out, direct_interc_81_out}),
		.ff_wrap_clock(direct_interc_82_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_ccff_tail),
		.ff_wrap_out_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[0:7]),
		.ff_wrap_out_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[0:7]),
		.ff_wrap_sc_out(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_sc_out[0:1]),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ccff_tail));

	mux_tree_size2 mux_fle_wrapper_out_0 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[0], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[0]}),
		.sram(mux_tree_size2_0_sram),
		.sram_inv(mux_tree_size2_0_sram_inv),
		.out(fle_wrapper_out[0]));

	mux_tree_size2 mux_fle_wrapper_out_1 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[0], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[0]}),
		.sram(mux_tree_size2_1_sram),
		.sram_inv(mux_tree_size2_1_sram_inv),
		.out(fle_wrapper_out[1]));

	mux_tree_size2 mux_fle_wrapper_out_3 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[1], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[1]}),
		.sram(mux_tree_size2_2_sram),
		.sram_inv(mux_tree_size2_2_sram_inv),
		.out(fle_wrapper_out[3]));

	mux_tree_size2 mux_fle_wrapper_out_4 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[1], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[1]}),
		.sram(mux_tree_size2_3_sram),
		.sram_inv(mux_tree_size2_3_sram_inv),
		.out(fle_wrapper_out[4]));

	mux_tree_size2 mux_fle_wrapper_out_6 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[2], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[2]}),
		.sram(mux_tree_size2_4_sram),
		.sram_inv(mux_tree_size2_4_sram_inv),
		.out(fle_wrapper_out[6]));

	mux_tree_size2 mux_fle_wrapper_out_7 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[2], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[2]}),
		.sram(mux_tree_size2_5_sram),
		.sram_inv(mux_tree_size2_5_sram_inv),
		.out(fle_wrapper_out[7]));

	mux_tree_size2 mux_fle_wrapper_out_9 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[3], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[3]}),
		.sram(mux_tree_size2_6_sram),
		.sram_inv(mux_tree_size2_6_sram_inv),
		.out(fle_wrapper_out[9]));

	mux_tree_size2 mux_fle_wrapper_out_10 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[3], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[3]}),
		.sram(mux_tree_size2_7_sram),
		.sram_inv(mux_tree_size2_7_sram_inv),
		.out(fle_wrapper_out[10]));

	mux_tree_size2 mux_fle_wrapper_out_12 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[4], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[4]}),
		.sram(mux_tree_size2_8_sram),
		.sram_inv(mux_tree_size2_8_sram_inv),
		.out(fle_wrapper_out[12]));

	mux_tree_size2 mux_fle_wrapper_out_13 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[4], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[4]}),
		.sram(mux_tree_size2_9_sram),
		.sram_inv(mux_tree_size2_9_sram_inv),
		.out(fle_wrapper_out[13]));

	mux_tree_size2 mux_fle_wrapper_out_15 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[5], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[5]}),
		.sram(mux_tree_size2_10_sram),
		.sram_inv(mux_tree_size2_10_sram_inv),
		.out(fle_wrapper_out[15]));

	mux_tree_size2 mux_fle_wrapper_out_16 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[5], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[5]}),
		.sram(mux_tree_size2_11_sram),
		.sram_inv(mux_tree_size2_11_sram_inv),
		.out(fle_wrapper_out[16]));

	mux_tree_size2 mux_fle_wrapper_out_18 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[6], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[6]}),
		.sram(mux_tree_size2_12_sram),
		.sram_inv(mux_tree_size2_12_sram_inv),
		.out(fle_wrapper_out[18]));

	mux_tree_size2 mux_fle_wrapper_out_19 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[6], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[6]}),
		.sram(mux_tree_size2_13_sram),
		.sram_inv(mux_tree_size2_13_sram_inv),
		.out(fle_wrapper_out[19]));

	mux_tree_size2 mux_fle_wrapper_out_21 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[7], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_up[7]}),
		.sram(mux_tree_size2_14_sram),
		.sram_inv(mux_tree_size2_14_sram_inv),
		.out(fle_wrapper_out[21]));

	mux_tree_size2 mux_fle_wrapper_out_22 (
		.in({logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[7], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_out_dn[7]}),
		.sram(mux_tree_size2_15_sram),
		.sram_inv(mux_tree_size2_15_sram_inv),
		.out(fle_wrapper_out[22]));

	mux_tree_size2_mem mem_fle_wrapper_out_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_0_ccff_tail),
		.mem_out(mux_tree_size2_0_sram),
		.mem_outb(mux_tree_size2_0_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_1_ccff_tail),
		.mem_out(mux_tree_size2_1_sram),
		.mem_outb(mux_tree_size2_1_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_2_ccff_tail),
		.mem_out(mux_tree_size2_2_sram),
		.mem_outb(mux_tree_size2_2_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_3_ccff_tail),
		.mem_out(mux_tree_size2_3_sram),
		.mem_outb(mux_tree_size2_3_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_4_ccff_tail),
		.mem_out(mux_tree_size2_4_sram),
		.mem_outb(mux_tree_size2_4_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_5_ccff_tail),
		.mem_out(mux_tree_size2_5_sram),
		.mem_outb(mux_tree_size2_5_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_6_ccff_tail),
		.mem_out(mux_tree_size2_6_sram),
		.mem_outb(mux_tree_size2_6_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_7_ccff_tail),
		.mem_out(mux_tree_size2_7_sram),
		.mem_outb(mux_tree_size2_7_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_8_ccff_tail),
		.mem_out(mux_tree_size2_8_sram),
		.mem_outb(mux_tree_size2_8_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_9_ccff_tail),
		.mem_out(mux_tree_size2_9_sram),
		.mem_outb(mux_tree_size2_9_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_10_ccff_tail),
		.mem_out(mux_tree_size2_10_sram),
		.mem_outb(mux_tree_size2_10_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_11_ccff_tail),
		.mem_out(mux_tree_size2_11_sram),
		.mem_outb(mux_tree_size2_11_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_18 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_12_ccff_tail),
		.mem_out(mux_tree_size2_12_sram),
		.mem_outb(mux_tree_size2_12_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_19 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_13_ccff_tail),
		.mem_out(mux_tree_size2_13_sram),
		.mem_outb(mux_tree_size2_13_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_21 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_14_ccff_tail),
		.mem_out(mux_tree_size2_14_sram),
		.mem_outb(mux_tree_size2_14_sram_inv));

	mux_tree_size2_mem mem_fle_wrapper_out_22 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_15_ccff_tail),
		.mem_out(mux_tree_size2_15_sram),
		.mem_outb(mux_tree_size2_15_sram_inv));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[0]),
		.out(fle_wrapper_out[2]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[1]),
		.out(fle_wrapper_out[5]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[2]),
		.out(fle_wrapper_out[8]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[3]),
		.out(fle_wrapper_out[11]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[4]),
		.out(fle_wrapper_out[14]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[5]),
		.out(fle_wrapper_out[17]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[6]),
		.out(fle_wrapper_out[20]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_o6[7]),
		.out(fle_wrapper_out[23]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_cout),
		.out(fle_wrapper_cout));

	direct_interc direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_cascdn_o),
		.out(fle_wrapper_cascdn_o));

	direct_interc direct_interc_10_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_cascup_o),
		.out(fle_wrapper_cascup_o));

	direct_interc direct_interc_11_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_sc_out[0]),
		.out(fle_wrapper_sc_out[0]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_0_ff_wrap_sc_out[1]),
		.out(fle_wrapper_sc_out[1]));

	direct_interc direct_interc_13_ (
		.in(fle_wrapper_II[0]),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(fle_wrapper_II[1]),
		.out(direct_interc_14_out));

	direct_interc direct_interc_15_ (
		.in(fle_wrapper_II[2]),
		.out(direct_interc_15_out));

	direct_interc direct_interc_16_ (
		.in(fle_wrapper_II[3]),
		.out(direct_interc_16_out));

	direct_interc direct_interc_17_ (
		.in(fle_wrapper_II[4]),
		.out(direct_interc_17_out));

	direct_interc direct_interc_18_ (
		.in(fle_wrapper_II[5]),
		.out(direct_interc_18_out));

	direct_interc direct_interc_19_ (
		.in(fle_wrapper_II[6]),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(fle_wrapper_II[7]),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(fle_wrapper_II[8]),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(fle_wrapper_II[9]),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(fle_wrapper_II[10]),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(fle_wrapper_II[11]),
		.out(direct_interc_24_out));

	direct_interc direct_interc_25_ (
		.in(fle_wrapper_II[12]),
		.out(direct_interc_25_out));

	direct_interc direct_interc_26_ (
		.in(fle_wrapper_II[13]),
		.out(direct_interc_26_out));

	direct_interc direct_interc_27_ (
		.in(fle_wrapper_II[14]),
		.out(direct_interc_27_out));

	direct_interc direct_interc_28_ (
		.in(fle_wrapper_II[15]),
		.out(direct_interc_28_out));

	direct_interc direct_interc_29_ (
		.in(fle_wrapper_II[16]),
		.out(direct_interc_29_out));

	direct_interc direct_interc_30_ (
		.in(fle_wrapper_II[17]),
		.out(direct_interc_30_out));

	direct_interc direct_interc_31_ (
		.in(fle_wrapper_II[18]),
		.out(direct_interc_31_out));

	direct_interc direct_interc_32_ (
		.in(fle_wrapper_II[19]),
		.out(direct_interc_32_out));

	direct_interc direct_interc_33_ (
		.in(fle_wrapper_II[20]),
		.out(direct_interc_33_out));

	direct_interc direct_interc_34_ (
		.in(fle_wrapper_II[21]),
		.out(direct_interc_34_out));

	direct_interc direct_interc_35_ (
		.in(fle_wrapper_II[22]),
		.out(direct_interc_35_out));

	direct_interc direct_interc_36_ (
		.in(fle_wrapper_II[23]),
		.out(direct_interc_36_out));

	direct_interc direct_interc_37_ (
		.in(fle_wrapper_II[24]),
		.out(direct_interc_37_out));

	direct_interc direct_interc_38_ (
		.in(fle_wrapper_II[25]),
		.out(direct_interc_38_out));

	direct_interc direct_interc_39_ (
		.in(fle_wrapper_II[26]),
		.out(direct_interc_39_out));

	direct_interc direct_interc_40_ (
		.in(fle_wrapper_II[27]),
		.out(direct_interc_40_out));

	direct_interc direct_interc_41_ (
		.in(fle_wrapper_II[28]),
		.out(direct_interc_41_out));

	direct_interc direct_interc_42_ (
		.in(fle_wrapper_II[29]),
		.out(direct_interc_42_out));

	direct_interc direct_interc_43_ (
		.in(fle_wrapper_II[30]),
		.out(direct_interc_43_out));

	direct_interc direct_interc_44_ (
		.in(fle_wrapper_II[31]),
		.out(direct_interc_44_out));

	direct_interc direct_interc_45_ (
		.in(fle_wrapper_II[32]),
		.out(direct_interc_45_out));

	direct_interc direct_interc_46_ (
		.in(fle_wrapper_II[33]),
		.out(direct_interc_46_out));

	direct_interc direct_interc_47_ (
		.in(fle_wrapper_II[34]),
		.out(direct_interc_47_out));

	direct_interc direct_interc_48_ (
		.in(fle_wrapper_II[35]),
		.out(direct_interc_48_out));

	direct_interc direct_interc_49_ (
		.in(fle_wrapper_II[36]),
		.out(direct_interc_49_out));

	direct_interc direct_interc_50_ (
		.in(fle_wrapper_II[37]),
		.out(direct_interc_50_out));

	direct_interc direct_interc_51_ (
		.in(fle_wrapper_II[38]),
		.out(direct_interc_51_out));

	direct_interc direct_interc_52_ (
		.in(fle_wrapper_II[39]),
		.out(direct_interc_52_out));

	direct_interc direct_interc_53_ (
		.in(fle_wrapper_II[40]),
		.out(direct_interc_53_out));

	direct_interc direct_interc_54_ (
		.in(fle_wrapper_II[41]),
		.out(direct_interc_54_out));

	direct_interc direct_interc_55_ (
		.in(fle_wrapper_II[42]),
		.out(direct_interc_55_out));

	direct_interc direct_interc_56_ (
		.in(fle_wrapper_II[43]),
		.out(direct_interc_56_out));

	direct_interc direct_interc_57_ (
		.in(fle_wrapper_II[44]),
		.out(direct_interc_57_out));

	direct_interc direct_interc_58_ (
		.in(fle_wrapper_II[45]),
		.out(direct_interc_58_out));

	direct_interc direct_interc_59_ (
		.in(fle_wrapper_II[46]),
		.out(direct_interc_59_out));

	direct_interc direct_interc_60_ (
		.in(fle_wrapper_II[47]),
		.out(direct_interc_60_out));

	direct_interc direct_interc_61_ (
		.in(fle_wrapper_cin),
		.out(direct_interc_61_out));

	direct_interc direct_interc_62_ (
		.in(fle_wrapper_cascdn_i),
		.out(direct_interc_62_out));

	direct_interc direct_interc_63_ (
		.in(fle_wrapper_cascup_i),
		.out(direct_interc_63_out));

	direct_interc direct_interc_64_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[0]),
		.out(direct_interc_64_out));

	direct_interc direct_interc_65_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[1]),
		.out(direct_interc_65_out));

	direct_interc direct_interc_66_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[2]),
		.out(direct_interc_66_out));

	direct_interc direct_interc_67_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[3]),
		.out(direct_interc_67_out));

	direct_interc direct_interc_68_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[4]),
		.out(direct_interc_68_out));

	direct_interc direct_interc_69_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[5]),
		.out(direct_interc_69_out));

	direct_interc direct_interc_70_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[6]),
		.out(direct_interc_70_out));

	direct_interc direct_interc_71_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out0[7]),
		.out(direct_interc_71_out));

	direct_interc direct_interc_72_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[0]),
		.out(direct_interc_72_out));

	direct_interc direct_interc_73_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[1]),
		.out(direct_interc_73_out));

	direct_interc direct_interc_74_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[2]),
		.out(direct_interc_74_out));

	direct_interc direct_interc_75_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[3]),
		.out(direct_interc_75_out));

	direct_interc direct_interc_76_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[4]),
		.out(direct_interc_76_out));

	direct_interc direct_interc_77_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[5]),
		.out(direct_interc_77_out));

	direct_interc direct_interc_78_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[6]),
		.out(direct_interc_78_out));

	direct_interc direct_interc_79_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_0_comb_block_out1[7]),
		.out(direct_interc_79_out));

	direct_interc direct_interc_80_ (
		.in(fle_wrapper_sc_in[0]),
		.out(direct_interc_80_out));

	direct_interc direct_interc_81_ (
		.in(fle_wrapper_sc_in[1]),
		.out(direct_interc_81_out));

	direct_interc direct_interc_82_ (
		.in(fle_wrapper_clk),
		.out(direct_interc_82_out));

	mux_tree_size6 mux_ff_wrap_0_reset_0 (
		.in(fle_wrapper_SS[0:5]),
		.sram(mux_tree_size6_0_sram[0:2]),
		.sram_inv(mux_tree_size6_0_sram_inv[0:2]),
		.out(mux_tree_size6_0_out));

	mux_tree_size6 mux_ff_wrap_0_reset_1 (
		.in(fle_wrapper_SS[0:5]),
		.sram(mux_tree_size6_1_sram[0:2]),
		.sram_inv(mux_tree_size6_1_sram_inv[0:2]),
		.out(mux_tree_size6_1_out));

	mux_tree_size6 mux_ff_wrap_0_reset_2 (
		.in(fle_wrapper_SS[0:5]),
		.sram(mux_tree_size6_2_sram[0:2]),
		.sram_inv(mux_tree_size6_2_sram_inv[0:2]),
		.out(mux_tree_size6_2_out));

	mux_tree_size6 mux_ff_wrap_0_reset_3 (
		.in(fle_wrapper_SS[0:5]),
		.sram(mux_tree_size6_3_sram[0:2]),
		.sram_inv(mux_tree_size6_3_sram_inv[0:2]),
		.out(mux_tree_size6_3_out));

	mux_tree_size6 mux_ff_wrap_0_enable_0 (
		.in(fle_wrapper_SS[0:5]),
		.sram(mux_tree_size6_4_sram[0:2]),
		.sram_inv(mux_tree_size6_4_sram_inv[0:2]),
		.out(mux_tree_size6_4_out));

	mux_tree_size6 mux_ff_wrap_0_enable_1 (
		.in(fle_wrapper_SS[0:5]),
		.sram(mux_tree_size6_5_sram[0:2]),
		.sram_inv(mux_tree_size6_5_sram_inv[0:2]),
		.out(mux_tree_size6_5_out));

	mux_tree_size6 mux_ff_wrap_0_enable_2 (
		.in(fle_wrapper_SS[0:5]),
		.sram(mux_tree_size6_6_sram[0:2]),
		.sram_inv(mux_tree_size6_6_sram_inv[0:2]),
		.out(mux_tree_size6_6_out));

	mux_tree_size6 mux_ff_wrap_0_enable_3 (
		.in(fle_wrapper_SS[0:5]),
		.sram(mux_tree_size6_7_sram[0:2]),
		.sram_inv(mux_tree_size6_7_sram_inv[0:2]),
		.out(mux_tree_size6_7_out));

	mux_tree_size6_mem mem_ff_wrap_0_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_0_ccff_tail),
		.mem_out(mux_tree_size6_0_sram[0:2]),
		.mem_outb(mux_tree_size6_0_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_reset_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_1_ccff_tail),
		.mem_out(mux_tree_size6_1_sram[0:2]),
		.mem_outb(mux_tree_size6_1_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_reset_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_2_ccff_tail),
		.mem_out(mux_tree_size6_2_sram[0:2]),
		.mem_outb(mux_tree_size6_2_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_reset_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_3_ccff_tail),
		.mem_out(mux_tree_size6_3_sram[0:2]),
		.mem_outb(mux_tree_size6_3_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_4_ccff_tail),
		.mem_out(mux_tree_size6_4_sram[0:2]),
		.mem_outb(mux_tree_size6_4_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_enable_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_5_ccff_tail),
		.mem_out(mux_tree_size6_5_sram[0:2]),
		.mem_outb(mux_tree_size6_5_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_enable_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size6_mem_6_ccff_tail),
		.mem_out(mux_tree_size6_6_sram[0:2]),
		.mem_outb(mux_tree_size6_6_sram_inv[0:2]));

	mux_tree_size6_mem mem_ff_wrap_0_enable_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size6_mem_6_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size6_7_sram[0:2]),
		.mem_outb(mux_tree_size6_7_sram_inv[0:2]));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: fle_wrapper -----
