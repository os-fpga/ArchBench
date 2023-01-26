//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: frac_lut
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: frac_lut -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut(config_enable,
                                                                                                                          prog_clock,
                                                                                                                          frac_lut_II,
                                                                                                                          frac_lut_cascdn_i,
                                                                                                                          frac_lut_cascup_i,
                                                                                                                          ccff_head,
                                                                                                                          frac_lut_o4_up_1,
                                                                                                                          frac_lut_o4_up_2,
                                                                                                                          frac_lut_o4_dn_1,
                                                                                                                          frac_lut_o4_dn_2,
                                                                                                                          frac_lut_o5_up,
                                                                                                                          frac_lut_o5_dn,
                                                                                                                          frac_lut_o6,
                                                                                                                          frac_lut_cascdn_o,
                                                                                                                          frac_lut_cascup_o,
                                                                                                                          ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:5] frac_lut_II;
//----- INPUT PORTS -----
input [0:0] frac_lut_cascdn_i;
//----- INPUT PORTS -----
input [0:0] frac_lut_cascup_i;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_o4_up_1;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_o4_up_2;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_o4_dn_1;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_o4_dn_2;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_o5_up;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_o5_dn;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_o6;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_cascdn_o;
//----- OUTPUT PORTS -----
output [0:0] frac_lut_cascup_o;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] mux_tree_size3_0_sram;
wire [0:1] mux_tree_size3_0_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.mux_wrap_II({direct_interc_7_out, direct_interc_8_out, direct_interc_9_out, direct_interc_10_out, direct_interc_11_out, mux_tree_size3_0_out}),
		.ccff_head(ccff_head),
		.mux_wrap_o4_up_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o4_up_1),
		.mux_wrap_o4_up_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o4_up_2),
		.mux_wrap_o4_dn_1(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o4_dn_1),
		.mux_wrap_o4_dn_2(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o4_dn_2),
		.mux_wrap_o5_up(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_undriven_mux_wrap_o5_up),
		.mux_wrap_o5_dn(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_undriven_mux_wrap_o5_dn),
		.mux_wrap_o6(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o6),
		.mux_wrap_cascdn_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_cascdn_o),
		.mux_wrap_cascup_o(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_cascup_o),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o4_up_1),
		.out(frac_lut_o4_up_1));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o4_up_2),
		.out(frac_lut_o4_up_2));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o4_dn_1),
		.out(frac_lut_o4_dn_1));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o4_dn_2),
		.out(frac_lut_o4_dn_2));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_o6),
		.out(frac_lut_o6));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_cascdn_o),
		.out(frac_lut_cascdn_o));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_mux_wrap_cascup_o),
		.out(frac_lut_cascup_o));

	direct_interc direct_interc_7_ (
		.in(frac_lut_II[0]),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(frac_lut_II[1]),
		.out(direct_interc_8_out));

	direct_interc direct_interc_9_ (
		.in(frac_lut_II[2]),
		.out(direct_interc_9_out));

	direct_interc direct_interc_10_ (
		.in(frac_lut_II[3]),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(frac_lut_II[4]),
		.out(direct_interc_11_out));

	mux_tree_size3 mux_mux_wrap_0_II_5 (
		.in({frac_lut_II[5], frac_lut_cascdn_i, frac_lut_cascup_i}),
		.sram(mux_tree_size3_0_sram[0:1]),
		.sram_inv(mux_tree_size3_0_sram_inv[0:1]),
		.out(mux_tree_size3_0_out));

	mux_tree_size3_mem mem_mux_wrap_0_II_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_0_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size3_0_sram[0:1]),
		.mem_outb(mux_tree_size3_0_sram_inv[0:1]));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: frac_lut -----
