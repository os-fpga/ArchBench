//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: flop_quad
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: flop_quad -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad(scan_enable,
                                                                                                                       global_reset,
                                                                                                                       scan_mode,
                                                                                                                       config_enable,
                                                                                                                       prog_clock,
                                                                                                                       flop_quad_DIN,
                                                                                                                       flop_quad_RESET,
                                                                                                                       flop_quad_ENABLE,
                                                                                                                       flop_quad_SI,
                                                                                                                       flop_quad_CLOCK,
                                                                                                                       ccff_head,
                                                                                                                       flop_quad_Q,
                                                                                                                       flop_quad_SO,
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
input [0:3] flop_quad_DIN;
//----- INPUT PORTS -----
input [0:0] flop_quad_RESET;
//----- INPUT PORTS -----
input [0:0] flop_quad_ENABLE;
//----- INPUT PORTS -----
input [0:0] flop_quad_SI;
//----- INPUT PORTS -----
input [0:0] flop_quad_CLOCK;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:3] flop_quad_Q;
//----- OUTPUT PORTS -----
output [0:0] flop_quad_SO;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_0 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_5_out),
		.MMFF_R(direct_interc_6_out),
		.MMFF_E(direct_interc_7_out),
		.MMFF_SI(direct_interc_8_out),
		.ccff_head(ccff_head),
		.MMFF_Q(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_0_MMFF_Q),
		.MMFF_SO(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_0_MMFF_SO),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_0_ccff_tail),
		.MMFF_C(direct_interc_9_out));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_1 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_10_out),
		.MMFF_R(direct_interc_11_out),
		.MMFF_E(direct_interc_12_out),
		.MMFF_SI(direct_interc_13_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_0_ccff_tail),
		.MMFF_Q(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_1_MMFF_Q),
		.MMFF_SO(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_1_MMFF_SO),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_1_ccff_tail),
		.MMFF_C(direct_interc_14_out));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_2 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_15_out),
		.MMFF_R(direct_interc_16_out),
		.MMFF_E(direct_interc_17_out),
		.MMFF_SI(direct_interc_18_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_1_ccff_tail),
		.MMFF_Q(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_2_MMFF_Q),
		.MMFF_SO(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_2_MMFF_SO),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_2_ccff_tail),
		.MMFF_C(direct_interc_19_out));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_3 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.MMFF_D(direct_interc_20_out),
		.MMFF_R(direct_interc_21_out),
		.MMFF_E(direct_interc_22_out),
		.MMFF_SI(direct_interc_23_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_2_ccff_tail),
		.MMFF_Q(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_3_MMFF_Q),
		.MMFF_SO(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_3_MMFF_SO),
		.ccff_tail(ccff_tail),
		.MMFF_C(direct_interc_24_out));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_0_MMFF_Q),
		.out(flop_quad_Q[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_1_MMFF_Q),
		.out(flop_quad_Q[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_2_MMFF_Q),
		.out(flop_quad_Q[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_3_MMFF_Q),
		.out(flop_quad_Q[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_3_MMFF_SO),
		.out(flop_quad_SO));

	direct_interc direct_interc_5_ (
		.in(flop_quad_DIN[0]),
		.out(direct_interc_5_out));

	direct_interc direct_interc_6_ (
		.in(flop_quad_RESET),
		.out(direct_interc_6_out));

	direct_interc direct_interc_7_ (
		.in(flop_quad_ENABLE),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(flop_quad_SI),
		.out(direct_interc_8_out));

	direct_interc direct_interc_9_ (
		.in(flop_quad_CLOCK),
		.out(direct_interc_9_out));

	direct_interc direct_interc_10_ (
		.in(flop_quad_DIN[1]),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(flop_quad_RESET),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(flop_quad_ENABLE),
		.out(direct_interc_12_out));

	direct_interc direct_interc_13_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_0_MMFF_SO),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(flop_quad_CLOCK),
		.out(direct_interc_14_out));

	direct_interc direct_interc_15_ (
		.in(flop_quad_DIN[2]),
		.out(direct_interc_15_out));

	direct_interc direct_interc_16_ (
		.in(flop_quad_RESET),
		.out(direct_interc_16_out));

	direct_interc direct_interc_17_ (
		.in(flop_quad_ENABLE),
		.out(direct_interc_17_out));

	direct_interc direct_interc_18_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_1_MMFF_SO),
		.out(direct_interc_18_out));

	direct_interc direct_interc_19_ (
		.in(flop_quad_CLOCK),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(flop_quad_DIN[3]),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(flop_quad_RESET),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(flop_quad_ENABLE),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad_mode_default__MMFF_2_MMFF_SO),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(flop_quad_CLOCK),
		.out(direct_interc_24_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__ff_wrap_mode_default__ff_half_mode_physical__flop_quad -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: flop_quad -----
