//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Look-Up Tables
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for frac_lut6 -----
module frac_lut6(in,
                 sram,
                 sram_inv,
                 mode,
                 mode_inv,
                 lut4_out,
                 lut5_out,
                 lut6_out);
//----- INPUT PORTS -----
input [0:5] in;
//----- INPUT PORTS -----
input [0:63] sram;
//----- INPUT PORTS -----
input [0:63] sram_inv;
//----- INPUT PORTS -----
input [0:1] mode;
//----- INPUT PORTS -----
input [0:1] mode_inv;
//----- OUTPUT PORTS -----
output [0:3] lut4_out;
//----- OUTPUT PORTS -----
output [0:1] lut5_out;
//----- OUTPUT PORTS -----
output [0:0] lut6_out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	OR2D1BWP7D5T16P96CPD OR2D1BWP7D5T16P96CPD_0_ (
		.A1(mode[0]),
		.A2(in[4]),
		.Z(OR2D1BWP7D5T16P96CPD_0_Z));

	OR2D1BWP7D5T16P96CPD OR2D1BWP7D5T16P96CPD_1_ (
		.A1(mode[1]),
		.A2(in[5]),
		.Z(OR2D1BWP7D5T16P96CPD_1_Z));

	INVD2BWP7D5T16P96CPD INVD2BWP7D5T16P96CPD_0_ (
		.I(in[0]),
		.ZN(INVD2BWP7D5T16P96CPD_0_ZN));

	INVD2BWP7D5T16P96CPD INVD2BWP7D5T16P96CPD_1_ (
		.I(in[1]),
		.ZN(INVD2BWP7D5T16P96CPD_1_ZN));

	INVD2BWP7D5T16P96CPD INVD2BWP7D5T16P96CPD_2_ (
		.I(in[2]),
		.ZN(INVD2BWP7D5T16P96CPD_2_ZN));

	INVD2BWP7D5T16P96CPD INVD2BWP7D5T16P96CPD_3_ (
		.I(in[3]),
		.ZN(INVD2BWP7D5T16P96CPD_3_ZN));

	INVD2BWP7D5T16P96CPD INVD2BWP7D5T16P96CPD_4_ (
		.I(OR2D1BWP7D5T16P96CPD_0_Z),
		.ZN(INVD2BWP7D5T16P96CPD_4_ZN));

	INVD2BWP7D5T16P96CPD INVD2BWP7D5T16P96CPD_5_ (
		.I(OR2D1BWP7D5T16P96CPD_1_Z),
		.ZN(INVD2BWP7D5T16P96CPD_5_ZN));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_0_ (
		.I(in[0]),
		.Z(BUFFD2BWP7D5T16P96CPD_0_Z));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_1_ (
		.I(in[1]),
		.Z(BUFFD2BWP7D5T16P96CPD_1_Z));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_2_ (
		.I(in[2]),
		.Z(BUFFD2BWP7D5T16P96CPD_2_Z));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_3_ (
		.I(in[3]),
		.Z(BUFFD2BWP7D5T16P96CPD_3_Z));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_4_ (
		.I(OR2D1BWP7D5T16P96CPD_0_Z),
		.Z(BUFFD2BWP7D5T16P96CPD_4_Z));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_5_ (
		.I(OR2D1BWP7D5T16P96CPD_1_Z),
		.Z(BUFFD2BWP7D5T16P96CPD_5_Z));

	frac_lut6_mux frac_lut6_mux_0_ (
		.in(sram[0:63]),
		.sram({BUFFD2BWP7D5T16P96CPD_0_Z, BUFFD2BWP7D5T16P96CPD_1_Z, BUFFD2BWP7D5T16P96CPD_2_Z, BUFFD2BWP7D5T16P96CPD_3_Z, BUFFD2BWP7D5T16P96CPD_4_Z, BUFFD2BWP7D5T16P96CPD_5_Z}),
		.sram_inv({INVD2BWP7D5T16P96CPD_0_ZN, INVD2BWP7D5T16P96CPD_1_ZN, INVD2BWP7D5T16P96CPD_2_ZN, INVD2BWP7D5T16P96CPD_3_ZN, INVD2BWP7D5T16P96CPD_4_ZN, INVD2BWP7D5T16P96CPD_5_ZN}),
		.lut4_out(lut4_out[0:3]),
		.lut5_out(lut5_out[0:1]),
		.lut6_out(lut6_out));

endmodule
// ----- END Verilog module for frac_lut6 -----

//----- Default net type -----
`default_nettype none



