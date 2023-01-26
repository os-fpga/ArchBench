//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: mux_wrap
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: mux_wrap -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap(config_enable,
                                                                                                                                                 prog_clock,
                                                                                                                                                 mux_wrap_II,
                                                                                                                                                 ccff_head,
                                                                                                                                                 mux_wrap_o4_up_1,
                                                                                                                                                 mux_wrap_o4_up_2,
                                                                                                                                                 mux_wrap_o4_dn_1,
                                                                                                                                                 mux_wrap_o4_dn_2,
                                                                                                                                                 mux_wrap_o5_up,
                                                                                                                                                 mux_wrap_o5_dn,
                                                                                                                                                 mux_wrap_o6,
                                                                                                                                                 mux_wrap_cascdn_o,
                                                                                                                                                 mux_wrap_cascup_o,
                                                                                                                                                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:5] mux_wrap_II;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_o4_up_1;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_o4_up_2;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_o4_dn_1;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_o4_dn_2;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_o5_up;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_o5_dn;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_o6;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_cascdn_o;
//----- OUTPUT PORTS -----
output [0:0] mux_wrap_cascup_o;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:3] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut4_out;
wire [0:1] logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut5_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6 logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut6_in({direct_interc_9_out, direct_interc_10_out, direct_interc_11_out, direct_interc_12_out, direct_interc_13_out, direct_interc_14_out}),
		.ccff_head(ccff_head),
		.frac_lut6_lut4_out(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut4_out[0:3]),
		.frac_lut6_lut5_out(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut5_out[0:1]),
		.frac_lut6_lut6_out(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut6_out),
		.ccff_tail(ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut4_out[0]),
		.out(mux_wrap_o4_up_1));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut4_out[1]),
		.out(mux_wrap_o4_up_2));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut4_out[2]),
		.out(mux_wrap_o4_dn_1));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut4_out[3]),
		.out(mux_wrap_o4_dn_2));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut5_out[0]),
		.out(mux_wrap_o5_up));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut5_out[1]),
		.out(mux_wrap_o5_dn));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut6_out),
		.out(mux_wrap_o6));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut6_out),
		.out(mux_wrap_cascdn_o));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6_0_frac_lut6_lut6_out),
		.out(mux_wrap_cascup_o));

	direct_interc direct_interc_9_ (
		.in(mux_wrap_II[0]),
		.out(direct_interc_9_out));

	direct_interc direct_interc_10_ (
		.in(mux_wrap_II[1]),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(mux_wrap_II[2]),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(mux_wrap_II[3]),
		.out(direct_interc_12_out));

	direct_interc direct_interc_13_ (
		.in(mux_wrap_II[4]),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(mux_wrap_II[5]),
		.out(direct_interc_14_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: mux_wrap -----
