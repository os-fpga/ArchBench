//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: ff_half
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: ff_half -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half(scan_enable,
                                                                                              global_reset,
                                                                                              scan_mode,
                                                                                              config_enable,
                                                                                              prog_clock,
                                                                                              ff_half_in,
                                                                                              ff_half_reset,
                                                                                              ff_half_enable,
                                                                                              ff_half_sc_in,
                                                                                              ff_half_clock,
                                                                                              ccff_head,
                                                                                              ff_half_out,
                                                                                              ff_half_sc_out,
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
input [0:7] ff_half_in;
//----- INPUT PORTS -----
input [0:0] ff_half_reset;
//----- INPUT PORTS -----
input [0:0] ff_half_enable;
//----- INPUT PORTS -----
input [0:1] ff_half_sc_in;
//----- INPUT PORTS -----
input [0:0] ff_half_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:7] ff_half_out;
//----- OUTPUT PORTS -----
output [0:1] ff_half_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:3] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_flop_quad_Q;
wire [0:3] logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1_flop_quad_Q;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.flop_quad_DIN({direct_interc_10_out, direct_interc_11_out, direct_interc_12_out, direct_interc_13_out}),
		.flop_quad_RESET(direct_interc_14_out),
		.flop_quad_ENABLE(direct_interc_15_out),
		.flop_quad_SI(direct_interc_16_out),
		.flop_quad_CLOCK(direct_interc_17_out),
		.ccff_head(ccff_head),
		.flop_quad_Q(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_flop_quad_Q[0:3]),
		.flop_quad_SO(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_flop_quad_SO),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.flop_quad_DIN({direct_interc_18_out, direct_interc_19_out, direct_interc_20_out, direct_interc_21_out}),
		.flop_quad_RESET(direct_interc_22_out),
		.flop_quad_ENABLE(direct_interc_23_out),
		.flop_quad_SI(direct_interc_24_out),
		.flop_quad_CLOCK(direct_interc_25_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_ccff_tail),
		.flop_quad_Q(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1_flop_quad_Q[0:3]),
		.flop_quad_SO(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1_flop_quad_SO),
		.ccff_tail(ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_flop_quad_Q[0]),
		.out(ff_half_out[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_flop_quad_Q[1]),
		.out(ff_half_out[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_flop_quad_Q[2]),
		.out(ff_half_out[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_flop_quad_Q[3]),
		.out(ff_half_out[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1_flop_quad_Q[0]),
		.out(ff_half_out[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1_flop_quad_Q[1]),
		.out(ff_half_out[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1_flop_quad_Q[2]),
		.out(ff_half_out[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1_flop_quad_Q[3]),
		.out(ff_half_out[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_0_flop_quad_SO),
		.out(ff_half_sc_out[0]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_1_flop_quad_SO),
		.out(ff_half_sc_out[1]));

	direct_interc direct_interc_10_ (
		.in(ff_half_in[0]),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(ff_half_in[1]),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(ff_half_in[2]),
		.out(direct_interc_12_out));

	direct_interc direct_interc_13_ (
		.in(ff_half_in[3]),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(ff_half_reset),
		.out(direct_interc_14_out));

	direct_interc direct_interc_15_ (
		.in(ff_half_enable),
		.out(direct_interc_15_out));

	direct_interc direct_interc_16_ (
		.in(ff_half_sc_in[0]),
		.out(direct_interc_16_out));

	direct_interc direct_interc_17_ (
		.in(ff_half_clock),
		.out(direct_interc_17_out));

	direct_interc direct_interc_18_ (
		.in(ff_half_in[4]),
		.out(direct_interc_18_out));

	direct_interc direct_interc_19_ (
		.in(ff_half_in[5]),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(ff_half_in[6]),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(ff_half_in[7]),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(ff_half_reset),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(ff_half_enable),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(ff_half_sc_in[1]),
		.out(direct_interc_24_out));

	direct_interc direct_interc_25_ (
		.in(ff_half_clock),
		.out(direct_interc_25_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: ff_half -----
