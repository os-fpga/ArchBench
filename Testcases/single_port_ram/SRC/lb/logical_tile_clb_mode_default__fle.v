//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: fle
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: fle -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle -----
module logical_tile_clb_mode_default__fle(config_enable,
                                          prog_clock,
                                          fle_in,
                                          fle_cin,
                                          fle_sc_in,
                                          fle_reset,
                                          fle_enable,
                                          fle_clk,
                                          ccff_head,
                                          fle_out,
                                          fle_cout,
                                          fle_sc_out,
                                          ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:5] fle_in;
//----- INPUT PORTS -----
input [0:0] fle_cin;
//----- INPUT PORTS -----
input [0:0] fle_sc_in;
//----- INPUT PORTS -----
input [0:0] fle_reset;
//----- INPUT PORTS -----
input [0:0] fle_enable;
//----- INPUT PORTS -----
input [0:0] fle_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:1] fle_out;
//----- OUTPUT PORTS -----
output [0:0] fle_cout;
//----- OUTPUT PORTS -----
output [0:0] fle_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_mode_physical__fabric logical_tile_clb_mode_default__fle_mode_physical__fabric_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fabric_in({direct_interc_4_out, direct_interc_5_out, direct_interc_6_out, direct_interc_7_out, direct_interc_8_out, direct_interc_9_out}),
		.fabric_cin(direct_interc_10_out),
		.fabric_sc_in(direct_interc_11_out),
		.fabric_reset(direct_interc_12_out),
		.fabric_enable(direct_interc_13_out),
		.fabric_clk(direct_interc_14_out),
		.ccff_head(ccff_head),
		.fabric_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_out[0:1]),
		.fabric_cout(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_cout),
		.fabric_sc_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_sc_out),
		.ccff_tail(ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_out[0]),
		.out(fle_out[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_out[1]),
		.out(fle_out[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_cout),
		.out(fle_cout));

	direct_interc direct_interc_3_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_0_fabric_sc_out),
		.out(fle_sc_out));

	direct_interc direct_interc_4_ (
		.in(fle_in[0]),
		.out(direct_interc_4_out));

	direct_interc direct_interc_5_ (
		.in(fle_in[1]),
		.out(direct_interc_5_out));

	direct_interc direct_interc_6_ (
		.in(fle_in[2]),
		.out(direct_interc_6_out));

	direct_interc direct_interc_7_ (
		.in(fle_in[3]),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(fle_in[4]),
		.out(direct_interc_8_out));

	direct_interc direct_interc_9_ (
		.in(fle_in[5]),
		.out(direct_interc_9_out));

	direct_interc direct_interc_10_ (
		.in(fle_cin),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(fle_sc_in),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(fle_reset),
		.out(direct_interc_12_out));

	direct_interc direct_interc_13_ (
		.in(fle_enable),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(fle_clk),
		.out(direct_interc_14_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: fle -----
