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

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap(scan_enable,
                                                                        global_reset,
                                                                        scan_mode,
                                                                        config_enable,
                                                                        prog_clock,
                                                                        ff_wrap_o_up,
                                                                        ff_wrap_o_dn,
                                                                        ff_wrap_reset,
                                                                        ff_wrap_enable,
                                                                        ff_wrap_sc_in,
                                                                        ff_wrap_clock,
                                                                        ccff_head,
                                                                        ff_wrap_out_up,
                                                                        ff_wrap_out_dn,
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
input [0:7] ff_wrap_o_up;
//----- INPUT PORTS -----
input [0:7] ff_wrap_o_dn;
//----- INPUT PORTS -----
input [0:3] ff_wrap_reset;
//----- INPUT PORTS -----
input [0:3] ff_wrap_enable;
//----- INPUT PORTS -----
input [0:1] ff_wrap_sc_in;
//----- INPUT PORTS -----
input [0:0] ff_wrap_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:7] ff_wrap_out_up;
//----- OUTPUT PORTS -----
output [0:7] ff_wrap_out_dn;
//----- OUTPUT PORTS -----
output [0:1] ff_wrap_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_sc_out;
wire [0:7] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_sc_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_half_in({direct_interc_2_out, direct_interc_3_out, direct_interc_4_out, direct_interc_5_out, direct_interc_6_out, direct_interc_7_out, direct_interc_8_out, direct_interc_9_out}),
		.ff_half_reset(mux_tree_size2_16_out),
		.ff_half_enable(mux_tree_size2_17_out),
		.ff_half_sc_in({direct_interc_10_out, direct_interc_11_out}),
		.ff_half_clock(direct_interc_12_out),
		.ccff_head(ccff_head),
		.ff_half_out(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[0:7]),
		.ff_half_sc_out(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_sc_out[0:1]),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_half_in({direct_interc_13_out, direct_interc_14_out, direct_interc_15_out, direct_interc_16_out, direct_interc_17_out, direct_interc_18_out, direct_interc_19_out, direct_interc_20_out}),
		.ff_half_reset(mux_tree_size2_18_out),
		.ff_half_enable(mux_tree_size2_19_out),
		.ff_half_sc_in({direct_interc_21_out, direct_interc_22_out}),
		.ff_half_clock(direct_interc_23_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ccff_tail),
		.ff_half_out(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[0:7]),
		.ff_half_sc_out(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_sc_out[0:1]),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ccff_tail));

	mux_tree_size2 mux_ff_wrap_out_up_0 (
		.in({ff_wrap_o_up[0], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[0]}),
		.sram(mux_tree_size2_0_sram),
		.sram_inv(mux_tree_size2_0_sram_inv),
		.out(ff_wrap_out_up[0]));

	mux_tree_size2 mux_ff_wrap_out_up_1 (
		.in({ff_wrap_o_up[1], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[1]}),
		.sram(mux_tree_size2_1_sram),
		.sram_inv(mux_tree_size2_1_sram_inv),
		.out(ff_wrap_out_up[1]));

	mux_tree_size2 mux_ff_wrap_out_up_2 (
		.in({ff_wrap_o_up[2], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[2]}),
		.sram(mux_tree_size2_2_sram),
		.sram_inv(mux_tree_size2_2_sram_inv),
		.out(ff_wrap_out_up[2]));

	mux_tree_size2 mux_ff_wrap_out_up_3 (
		.in({ff_wrap_o_up[3], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[3]}),
		.sram(mux_tree_size2_3_sram),
		.sram_inv(mux_tree_size2_3_sram_inv),
		.out(ff_wrap_out_up[3]));

	mux_tree_size2 mux_ff_wrap_out_up_4 (
		.in({ff_wrap_o_up[4], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[4]}),
		.sram(mux_tree_size2_4_sram),
		.sram_inv(mux_tree_size2_4_sram_inv),
		.out(ff_wrap_out_up[4]));

	mux_tree_size2 mux_ff_wrap_out_up_5 (
		.in({ff_wrap_o_up[5], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[5]}),
		.sram(mux_tree_size2_5_sram),
		.sram_inv(mux_tree_size2_5_sram_inv),
		.out(ff_wrap_out_up[5]));

	mux_tree_size2 mux_ff_wrap_out_up_6 (
		.in({ff_wrap_o_up[6], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[6]}),
		.sram(mux_tree_size2_6_sram),
		.sram_inv(mux_tree_size2_6_sram_inv),
		.out(ff_wrap_out_up[6]));

	mux_tree_size2 mux_ff_wrap_out_up_7 (
		.in({ff_wrap_o_up[7], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_out[7]}),
		.sram(mux_tree_size2_7_sram),
		.sram_inv(mux_tree_size2_7_sram_inv),
		.out(ff_wrap_out_up[7]));

	mux_tree_size2 mux_ff_wrap_out_dn_0 (
		.in({ff_wrap_o_dn[0], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[0]}),
		.sram(mux_tree_size2_8_sram),
		.sram_inv(mux_tree_size2_8_sram_inv),
		.out(ff_wrap_out_dn[0]));

	mux_tree_size2 mux_ff_wrap_out_dn_1 (
		.in({ff_wrap_o_dn[1], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[1]}),
		.sram(mux_tree_size2_9_sram),
		.sram_inv(mux_tree_size2_9_sram_inv),
		.out(ff_wrap_out_dn[1]));

	mux_tree_size2 mux_ff_wrap_out_dn_2 (
		.in({ff_wrap_o_dn[2], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[2]}),
		.sram(mux_tree_size2_10_sram),
		.sram_inv(mux_tree_size2_10_sram_inv),
		.out(ff_wrap_out_dn[2]));

	mux_tree_size2 mux_ff_wrap_out_dn_3 (
		.in({ff_wrap_o_dn[3], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[3]}),
		.sram(mux_tree_size2_11_sram),
		.sram_inv(mux_tree_size2_11_sram_inv),
		.out(ff_wrap_out_dn[3]));

	mux_tree_size2 mux_ff_wrap_out_dn_4 (
		.in({ff_wrap_o_dn[4], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[4]}),
		.sram(mux_tree_size2_12_sram),
		.sram_inv(mux_tree_size2_12_sram_inv),
		.out(ff_wrap_out_dn[4]));

	mux_tree_size2 mux_ff_wrap_out_dn_5 (
		.in({ff_wrap_o_dn[5], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[5]}),
		.sram(mux_tree_size2_13_sram),
		.sram_inv(mux_tree_size2_13_sram_inv),
		.out(ff_wrap_out_dn[5]));

	mux_tree_size2 mux_ff_wrap_out_dn_6 (
		.in({ff_wrap_o_dn[6], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[6]}),
		.sram(mux_tree_size2_14_sram),
		.sram_inv(mux_tree_size2_14_sram_inv),
		.out(ff_wrap_out_dn[6]));

	mux_tree_size2 mux_ff_wrap_out_dn_7 (
		.in({ff_wrap_o_dn[7], logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_out[7]}),
		.sram(mux_tree_size2_15_sram),
		.sram_inv(mux_tree_size2_15_sram_inv),
		.out(ff_wrap_out_dn[7]));

	mux_tree_size2 mux_ff_half_0_reset_0 (
		.in(ff_wrap_reset[0:1]),
		.sram(mux_tree_size2_16_sram),
		.sram_inv(mux_tree_size2_16_sram_inv),
		.out(mux_tree_size2_16_out));

	mux_tree_size2 mux_ff_half_0_enable_0 (
		.in(ff_wrap_enable[0:1]),
		.sram(mux_tree_size2_17_sram),
		.sram_inv(mux_tree_size2_17_sram_inv),
		.out(mux_tree_size2_17_out));

	mux_tree_size2 mux_ff_half_1_reset_0 (
		.in(ff_wrap_reset[2:3]),
		.sram(mux_tree_size2_18_sram),
		.sram_inv(mux_tree_size2_18_sram_inv),
		.out(mux_tree_size2_18_out));

	mux_tree_size2 mux_ff_half_1_enable_0 (
		.in(ff_wrap_enable[2:3]),
		.sram(mux_tree_size2_19_sram),
		.sram_inv(mux_tree_size2_19_sram_inv),
		.out(mux_tree_size2_19_out));

	mux_tree_size2_mem mem_ff_wrap_out_up_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_0_ccff_tail),
		.mem_out(mux_tree_size2_0_sram),
		.mem_outb(mux_tree_size2_0_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_up_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_1_ccff_tail),
		.mem_out(mux_tree_size2_1_sram),
		.mem_outb(mux_tree_size2_1_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_up_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_2_ccff_tail),
		.mem_out(mux_tree_size2_2_sram),
		.mem_outb(mux_tree_size2_2_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_up_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_3_ccff_tail),
		.mem_out(mux_tree_size2_3_sram),
		.mem_outb(mux_tree_size2_3_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_up_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_4_ccff_tail),
		.mem_out(mux_tree_size2_4_sram),
		.mem_outb(mux_tree_size2_4_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_up_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_5_ccff_tail),
		.mem_out(mux_tree_size2_5_sram),
		.mem_outb(mux_tree_size2_5_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_up_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_6_ccff_tail),
		.mem_out(mux_tree_size2_6_sram),
		.mem_outb(mux_tree_size2_6_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_up_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_7_ccff_tail),
		.mem_out(mux_tree_size2_7_sram),
		.mem_outb(mux_tree_size2_7_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_dn_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_8_ccff_tail),
		.mem_out(mux_tree_size2_8_sram),
		.mem_outb(mux_tree_size2_8_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_dn_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_9_ccff_tail),
		.mem_out(mux_tree_size2_9_sram),
		.mem_outb(mux_tree_size2_9_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_dn_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_10_ccff_tail),
		.mem_out(mux_tree_size2_10_sram),
		.mem_outb(mux_tree_size2_10_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_dn_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_11_ccff_tail),
		.mem_out(mux_tree_size2_11_sram),
		.mem_outb(mux_tree_size2_11_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_dn_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_12_ccff_tail),
		.mem_out(mux_tree_size2_12_sram),
		.mem_outb(mux_tree_size2_12_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_dn_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_13_ccff_tail),
		.mem_out(mux_tree_size2_13_sram),
		.mem_outb(mux_tree_size2_13_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_dn_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_14_ccff_tail),
		.mem_out(mux_tree_size2_14_sram),
		.mem_outb(mux_tree_size2_14_sram_inv));

	mux_tree_size2_mem mem_ff_wrap_out_dn_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_15_ccff_tail),
		.mem_out(mux_tree_size2_15_sram),
		.mem_outb(mux_tree_size2_15_sram_inv));

	mux_tree_size2_mem mem_ff_half_0_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_16_ccff_tail),
		.mem_out(mux_tree_size2_16_sram),
		.mem_outb(mux_tree_size2_16_sram_inv));

	mux_tree_size2_mem mem_ff_half_0_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_16_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_17_ccff_tail),
		.mem_out(mux_tree_size2_17_sram),
		.mem_outb(mux_tree_size2_17_sram_inv));

	mux_tree_size2_mem mem_ff_half_1_reset_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_17_ccff_tail),
		.ccff_tail(mux_tree_size2_mem_18_ccff_tail),
		.mem_out(mux_tree_size2_18_sram),
		.mem_outb(mux_tree_size2_18_sram_inv));

	mux_tree_size2_mem mem_ff_half_1_enable_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size2_mem_18_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size2_19_sram),
		.mem_outb(mux_tree_size2_19_sram_inv));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_sc_out[1]),
		.out(ff_wrap_sc_out[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_sc_out[1]),
		.out(ff_wrap_sc_out[1]));

	direct_interc direct_interc_2_ (
		.in(ff_wrap_o_up[0]),
		.out(direct_interc_2_out));

	direct_interc direct_interc_3_ (
		.in(ff_wrap_o_up[1]),
		.out(direct_interc_3_out));

	direct_interc direct_interc_4_ (
		.in(ff_wrap_o_up[2]),
		.out(direct_interc_4_out));

	direct_interc direct_interc_5_ (
		.in(ff_wrap_o_up[3]),
		.out(direct_interc_5_out));

	direct_interc direct_interc_6_ (
		.in(ff_wrap_o_up[4]),
		.out(direct_interc_6_out));

	direct_interc direct_interc_7_ (
		.in(ff_wrap_o_up[5]),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(ff_wrap_o_up[6]),
		.out(direct_interc_8_out));

	direct_interc direct_interc_9_ (
		.in(ff_wrap_o_up[7]),
		.out(direct_interc_9_out));

	direct_interc direct_interc_10_ (
		.in(ff_wrap_sc_in[0]),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_0_ff_half_sc_out[0]),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(ff_wrap_clock),
		.out(direct_interc_12_out));

	direct_interc direct_interc_13_ (
		.in(ff_wrap_o_dn[0]),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(ff_wrap_o_dn[1]),
		.out(direct_interc_14_out));

	direct_interc direct_interc_15_ (
		.in(ff_wrap_o_dn[2]),
		.out(direct_interc_15_out));

	direct_interc direct_interc_16_ (
		.in(ff_wrap_o_dn[3]),
		.out(direct_interc_16_out));

	direct_interc direct_interc_17_ (
		.in(ff_wrap_o_dn[4]),
		.out(direct_interc_17_out));

	direct_interc direct_interc_18_ (
		.in(ff_wrap_o_dn[5]),
		.out(direct_interc_18_out));

	direct_interc direct_interc_19_ (
		.in(ff_wrap_o_dn[6]),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(ff_wrap_o_dn[7]),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(ff_wrap_sc_in[1]),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_1_ff_half_sc_out[0]),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(ff_wrap_clock),
		.out(direct_interc_23_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: ff_wrap -----
