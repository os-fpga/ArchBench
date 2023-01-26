//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: ff_group
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: ff_group -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group -----
module logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group(scan_enable,
                                                                      global_reset,
                                                                      scan_mode,
                                                                      config_enable,
                                                                      prog_clock,
                                                                      ff_group_in,
                                                                      ff_group_SI,
                                                                      ff_group_clock,
                                                                      ff_group_reset,
                                                                      ff_group_enable,
                                                                      ccff_head,
                                                                      ff_group_out,
                                                                      ff_group_SO,
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
input [0:17] ff_group_in;
//----- INPUT PORTS -----
input [0:0] ff_group_SI;
//----- INPUT PORTS -----
input [0:0] ff_group_clock;
//----- INPUT PORTS -----
input [0:0] ff_group_reset;
//----- INPUT PORTS -----
input [0:0] ff_group_enable;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:17] ff_group_out;
//----- OUTPUT PORTS -----
output [0:0] ff_group_SO;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:17] logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0 (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.flop_group_DIN({direct_interc_19_out, direct_interc_20_out, direct_interc_21_out, direct_interc_22_out, direct_interc_23_out, direct_interc_24_out, direct_interc_25_out, direct_interc_26_out, direct_interc_27_out, direct_interc_28_out, direct_interc_29_out, direct_interc_30_out, direct_interc_31_out, direct_interc_32_out, direct_interc_33_out, direct_interc_34_out, direct_interc_35_out, direct_interc_36_out}),
		.flop_group_RESET(direct_interc_37_out),
		.flop_group_ENABLE(direct_interc_38_out),
		.flop_group_SI(direct_interc_39_out),
		.flop_group_CLOCK(direct_interc_40_out),
		.ccff_head(ccff_head),
		.flop_group_Q(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[0:17]),
		.flop_group_SO(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_SO),
		.ccff_tail(ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[0]),
		.out(ff_group_out[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[1]),
		.out(ff_group_out[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[2]),
		.out(ff_group_out[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[3]),
		.out(ff_group_out[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[4]),
		.out(ff_group_out[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[5]),
		.out(ff_group_out[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[6]),
		.out(ff_group_out[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[7]),
		.out(ff_group_out[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[8]),
		.out(ff_group_out[8]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[9]),
		.out(ff_group_out[9]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[10]),
		.out(ff_group_out[10]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[11]),
		.out(ff_group_out[11]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[12]),
		.out(ff_group_out[12]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[13]),
		.out(ff_group_out[13]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[14]),
		.out(ff_group_out[14]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[15]),
		.out(ff_group_out[15]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[16]),
		.out(ff_group_out[16]));

	direct_interc direct_interc_17_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_Q[17]),
		.out(ff_group_out[17]));

	direct_interc direct_interc_18_ (
		.in(logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_0_flop_group_SO),
		.out(ff_group_SO));

	direct_interc direct_interc_19_ (
		.in(ff_group_in[0]),
		.out(direct_interc_19_out));

	direct_interc direct_interc_20_ (
		.in(ff_group_in[1]),
		.out(direct_interc_20_out));

	direct_interc direct_interc_21_ (
		.in(ff_group_in[2]),
		.out(direct_interc_21_out));

	direct_interc direct_interc_22_ (
		.in(ff_group_in[3]),
		.out(direct_interc_22_out));

	direct_interc direct_interc_23_ (
		.in(ff_group_in[4]),
		.out(direct_interc_23_out));

	direct_interc direct_interc_24_ (
		.in(ff_group_in[5]),
		.out(direct_interc_24_out));

	direct_interc direct_interc_25_ (
		.in(ff_group_in[6]),
		.out(direct_interc_25_out));

	direct_interc direct_interc_26_ (
		.in(ff_group_in[7]),
		.out(direct_interc_26_out));

	direct_interc direct_interc_27_ (
		.in(ff_group_in[8]),
		.out(direct_interc_27_out));

	direct_interc direct_interc_28_ (
		.in(ff_group_in[9]),
		.out(direct_interc_28_out));

	direct_interc direct_interc_29_ (
		.in(ff_group_in[10]),
		.out(direct_interc_29_out));

	direct_interc direct_interc_30_ (
		.in(ff_group_in[11]),
		.out(direct_interc_30_out));

	direct_interc direct_interc_31_ (
		.in(ff_group_in[12]),
		.out(direct_interc_31_out));

	direct_interc direct_interc_32_ (
		.in(ff_group_in[13]),
		.out(direct_interc_32_out));

	direct_interc direct_interc_33_ (
		.in(ff_group_in[14]),
		.out(direct_interc_33_out));

	direct_interc direct_interc_34_ (
		.in(ff_group_in[15]),
		.out(direct_interc_34_out));

	direct_interc direct_interc_35_ (
		.in(ff_group_in[16]),
		.out(direct_interc_35_out));

	direct_interc direct_interc_36_ (
		.in(ff_group_in[17]),
		.out(direct_interc_36_out));

	direct_interc direct_interc_37_ (
		.in(ff_group_reset),
		.out(direct_interc_37_out));

	direct_interc direct_interc_38_ (
		.in(ff_group_enable),
		.out(direct_interc_38_out));

	direct_interc direct_interc_39_ (
		.in(ff_group_SI),
		.out(direct_interc_39_out));

	direct_interc direct_interc_40_ (
		.in(ff_group_clock),
		.out(direct_interc_40_out));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: ff_group -----
