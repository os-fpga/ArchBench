//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Multiplexers
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_size24 -----
module mux_tree_tapbuf_size24(in,
                              sram,
                              sram_inv,
                              out);
//----- INPUT PORTS -----
input [0:23] in;
//----- INPUT PORTS -----
input [0:4] sram;
//----- INPUT PORTS -----
input [0:4] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_22_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_6_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_7_ (
		.I1(in[14]),
		.I0(in[15]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(in[16]),
		.I0(in[17]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(in[18]),
		.I0(in[19]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(in[20]),
		.I0(in[21]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(in[22]),
		.I0(in[23]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_16_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_10_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_17_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_12_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_13_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_18_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_14_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_15_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_19_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_16_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_17_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_20_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_18_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_19_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_21_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_20_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_21_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_22_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size24 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_size22 -----
module mux_tree_tapbuf_size22(in,
                              sram,
                              sram_inv,
                              out);
//----- INPUT PORTS -----
input [0:21] in;
//----- INPUT PORTS -----
input [0:4] sram;
//----- INPUT PORTS -----
input [0:4] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_20_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(in[14]),
		.I0(in[15]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(in[16]),
		.I0(in[17]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(in[18]),
		.I0(in[19]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(in[20]),
		.I0(in[21]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_10_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_16_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_12_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_13_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_17_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_14_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_15_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_18_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_16_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_17_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_19_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_18_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_19_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_20_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size22 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size7 -----
module mux_tree_tapbuf_L2SB_size7(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:6] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_5_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(in[6]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_3_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_4_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size7 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size13 -----
module mux_tree_tapbuf_L2SB_size13(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:12] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_11_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(in[10]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[11]),
		.I0(in[12]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_5_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_6_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_7_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_8_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_9_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_10_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size13 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size6 -----
module mux_tree_tapbuf_L2SB_size6(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:5] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_4_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size6 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size12 -----
module mux_tree_tapbuf_L2SB_size12(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:11] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_10_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size12 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size5 -----
module mux_tree_tapbuf_L2SB_size5(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:4] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_3_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(in[2]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[3]),
		.I0(in[4]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_1_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_2_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size5 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size11 -----
module mux_tree_tapbuf_L2SB_size11(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:10] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_9_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(in[6]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[7]),
		.I0(in[8]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[9]),
		.I0(in[10]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_3_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_4_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_5_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_6_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_7_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_8_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size11 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size5 -----
module mux_tree_tapbuf_L4SB_size5(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:4] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_3_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(in[2]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[3]),
		.I0(in[4]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_1_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_2_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size5 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size17 -----
module mux_tree_tapbuf_L4SB_size17(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:16] in;
//----- INPUT PORTS -----
input [0:4] sram;
//----- INPUT PORTS -----
input [0:4] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_15_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(in[2]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[3]),
		.I0(in[4]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[5]),
		.I0(in[6]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[7]),
		.I0(in[8]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(in[9]),
		.I0(in[10]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(in[11]),
		.I0(in[12]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(in[13]),
		.I0(in[14]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(in[15]),
		.I0(in[16]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_1_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_2_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_3_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_4_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_5_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_6_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_7_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_8_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_9_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_10_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_11_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_12_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_13_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_14_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size17 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size6 -----
module mux_tree_tapbuf_L4SB_size6(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:5] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_4_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size6 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size18 -----
module mux_tree_tapbuf_L4SB_size18(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:17] in;
//----- INPUT PORTS -----
input [0:4] sram;
//----- INPUT PORTS -----
input [0:4] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_16_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(in[14]),
		.I0(in[15]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(in[16]),
		.I0(in[17]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_10_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_12_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_13_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_14_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_15_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_16_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size18 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size13 -----
module mux_tree_tapbuf_L4SB_size13(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:12] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_11_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(in[10]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[11]),
		.I0(in[12]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_5_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_6_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_7_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_8_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_9_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_10_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size13 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size12 -----
module mux_tree_tapbuf_L4SB_size12(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:11] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_10_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size12 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size11 -----
module mux_tree_tapbuf_L4SB_size11(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:10] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_9_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(in[6]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[7]),
		.I0(in[8]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[9]),
		.I0(in[10]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_3_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_4_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_5_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_6_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_7_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_8_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size11 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size10 -----
module mux_tree_tapbuf_L4SB_size10(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:9] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_8_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size10 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size9 -----
module mux_tree_tapbuf_L4SB_size9(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:8] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_7_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(in[2]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[3]),
		.I0(in[4]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[5]),
		.I0(in[6]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[7]),
		.I0(in[8]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_1_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_2_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_3_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_4_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_5_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_6_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size9 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size8 -----
module mux_tree_tapbuf_L4SB_size8(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:7] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_6_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size8 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size7 -----
module mux_tree_tapbuf_L4SB_size7(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:6] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_5_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(in[6]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_3_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_4_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size7 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size14 -----
module mux_tree_tapbuf_L4SB_size14(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:13] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_12_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_10_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size14 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size4 -----
module mux_tree_tapbuf_L2SB_size4(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:3] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_2_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size4 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size3 -----
module mux_tree_tapbuf_L2SB_size3(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:2] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_1_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(in[2]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size3 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size9 -----
module mux_tree_tapbuf_L2SB_size9(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:8] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_7_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(in[2]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[3]),
		.I0(in[4]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[5]),
		.I0(in[6]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[7]),
		.I0(in[8]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_1_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_2_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_3_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_4_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_5_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_6_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size9 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size8 -----
module mux_tree_tapbuf_L2SB_size8(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:7] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_6_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size8 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size4 -----
module mux_tree_tapbuf_L4SB_size4(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:3] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_2_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size4 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size3 -----
module mux_tree_tapbuf_L4SB_size3(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:2] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_1_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(in[2]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size3 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size2 -----
module mux_tree_tapbuf_L4SB_size2(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:0] sram;
//----- INPUT PORTS -----
input [0:0] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_0_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size2 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size2 -----
module mux_tree_tapbuf_L2SB_size2(in,
                                  sram,
                                  sram_inv,
                                  out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:0] sram;
//----- INPUT PORTS -----
input [0:0] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_0_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size2 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size10 -----
module mux_tree_tapbuf_L2SB_size10(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:9] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_8_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size10 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size15 -----
module mux_tree_tapbuf_L4SB_size15(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:14] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_13_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_6_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(in[14]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_7_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_8_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_9_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_10_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_11_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_12_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size15 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size16 -----
module mux_tree_tapbuf_L4SB_size16(in,
                                   sram,
                                   sram_inv,
                                   out);
//----- INPUT PORTS -----
input [0:15] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD12BWP7D5T16P96CPD BUFFD12BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_14_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_6_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_7_ (
		.I1(in[14]),
		.I0(in[15]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_10_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_12_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_13_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size16 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_clock_size16 -----
module mux_tree_clock_size16(in,
                             sram,
                             sram_inv,
                             out);
//----- INPUT PORTS -----
input [0:15] in;
//----- INPUT PORTS -----
input [0:3] sram;
//----- INPUT PORTS -----
input [0:3] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	CKMUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I0(in[0]),
		.I1(in[1]),
		.S(sram[0]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_0_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I0(in[2]),
		.I1(in[3]),
		.S(sram[0]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_1_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I0(in[4]),
		.I1(in[5]),
		.S(sram[0]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_2_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I0(in[6]),
		.I1(in[7]),
		.S(sram[0]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_3_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I0(in[8]),
		.I1(in[9]),
		.S(sram[0]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_4_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I0(in[10]),
		.I1(in[11]),
		.S(sram[0]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_5_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l1_in_6_ (
		.I0(in[12]),
		.I1(in[13]),
		.S(sram[0]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_6_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l1_in_7_ (
		.I0(in[14]),
		.I1(in[15]),
		.S(sram[0]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_7_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I0(CKMUX2D1BWP7D5T16P96CPD_0_Z),
		.I1(CKMUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_8_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I0(CKMUX2D1BWP7D5T16P96CPD_2_Z),
		.I1(CKMUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_9_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I0(CKMUX2D1BWP7D5T16P96CPD_4_Z),
		.I1(CKMUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_10_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I0(CKMUX2D1BWP7D5T16P96CPD_6_Z),
		.I1(CKMUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[1]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_11_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I0(CKMUX2D1BWP7D5T16P96CPD_8_Z),
		.I1(CKMUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[2]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_12_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I0(CKMUX2D1BWP7D5T16P96CPD_10_Z),
		.I1(CKMUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[2]),
		.Z(CKMUX2D1BWP7D5T16P96CPD_13_Z));

	CKMUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I0(CKMUX2D1BWP7D5T16P96CPD_12_Z),
		.I1(CKMUX2D1BWP7D5T16P96CPD_13_Z),
		.S(sram[3]),
		.Z(out));

endmodule
// ----- END Verilog module for mux_tree_clock_size16 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size2 -----
module mux_tree_size2(in,
                      sram,
                      sram_inv,
                      out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:0] sram;
//----- INPUT PORTS -----
input [0:0] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD4BWP7D5T16P96CPD BUFFD4BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_0_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

endmodule
// ----- END Verilog module for mux_tree_size2 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size32 -----
module mux_tree_size32(in,
                       sram,
                       sram_inv,
                       out);
//----- INPUT PORTS -----
input [0:31] in;
//----- INPUT PORTS -----
input [0:4] sram;
//----- INPUT PORTS -----
input [0:4] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD4BWP7D5T16P96CPD BUFFD4BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_30_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_6_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_7_ (
		.I1(in[14]),
		.I0(in[15]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_8_ (
		.I1(in[16]),
		.I0(in[17]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_9_ (
		.I1(in[18]),
		.I0(in[19]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_10_ (
		.I1(in[20]),
		.I0(in[21]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_11_ (
		.I1(in[22]),
		.I0(in[23]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_12_ (
		.I1(in[24]),
		.I0(in[25]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_13_ (
		.I1(in[26]),
		.I0(in[27]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_14_ (
		.I1(in[28]),
		.I0(in[29]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_15_ (
		.I1(in[30]),
		.I0(in[31]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_16_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_17_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_18_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_19_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_20_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(MUX2D1BWP7D5T16P96CPD_10_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_21_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(MUX2D1BWP7D5T16P96CPD_12_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_13_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_22_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(MUX2D1BWP7D5T16P96CPD_14_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_15_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_23_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_16_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_17_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_24_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_18_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_19_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_25_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_20_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_21_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_26_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_22_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_23_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_27_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_24_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_25_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_28_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_26_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_27_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_29_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_28_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_29_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_30_Z));

endmodule
// ----- END Verilog module for mux_tree_size32 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size24 -----
module mux_tree_size24(in,
                       sram,
                       sram_inv,
                       out);
//----- INPUT PORTS -----
input [0:23] in;
//----- INPUT PORTS -----
input [0:4] sram;
//----- INPUT PORTS -----
input [0:4] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD4BWP7D5T16P96CPD BUFFD4BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_22_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_6_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_7_ (
		.I1(in[14]),
		.I0(in[15]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(in[16]),
		.I0(in[17]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(in[18]),
		.I0(in[19]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(in[20]),
		.I0(in[21]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(in[22]),
		.I0(in[23]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_16_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_10_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_17_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_12_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_13_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_18_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_14_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_15_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_19_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_16_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_17_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_20_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_18_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_19_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_21_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_20_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_21_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_22_Z));

endmodule
// ----- END Verilog module for mux_tree_size24 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size6 -----
module mux_tree_size6(in,
                      sram,
                      sram_inv,
                      out);
//----- INPUT PORTS -----
input [0:5] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD4BWP7D5T16P96CPD BUFFD4BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_4_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

endmodule
// ----- END Verilog module for mux_tree_size6 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size3 -----
module mux_tree_size3(in,
                      sram,
                      sram_inv,
                      out);
//----- INPUT PORTS -----
input [0:2] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD4BWP7D5T16P96CPD BUFFD4BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_1_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(in[2]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

endmodule
// ----- END Verilog module for mux_tree_size3 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size21 -----
module mux_tree_size21(in,
                       sram,
                       sram_inv,
                       out);
//----- INPUT PORTS -----
input [0:20] in;
//----- INPUT PORTS -----
input [0:4] sram;
//----- INPUT PORTS -----
input [0:4] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD4BWP7D5T16P96CPD BUFFD4BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_19_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(in[10]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(in[11]),
		.I0(in[12]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(in[13]),
		.I0(in[14]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(in[15]),
		.I0(in[16]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(in[17]),
		.I0(in[18]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(in[19]),
		.I0(in[20]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_5_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_6_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_7_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_8_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_9_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_10_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_11_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_12_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_16_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_13_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_14_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_17_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_15_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_16_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_18_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_17_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_18_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_19_Z));

endmodule
// ----- END Verilog module for mux_tree_size21 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size23 -----
module mux_tree_size23(in,
                       sram,
                       sram_inv,
                       out);
//----- INPUT PORTS -----
input [0:22] in;
//----- INPUT PORTS -----
input [0:4] sram;
//----- INPUT PORTS -----
input [0:4] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD4BWP7D5T16P96CPD BUFFD4BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_21_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_6_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(in[14]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(in[15]),
		.I0(in[16]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(in[17]),
		.I0(in[18]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(in[19]),
		.I0(in[20]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(in[21]),
		.I0(in[22]),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_7_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_8_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_9_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_10_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_16_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_11_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_12_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_17_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_13_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_14_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_18_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_15_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_16_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_19_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_17_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_18_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_20_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_19_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_20_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_21_Z));

endmodule
// ----- END Verilog module for mux_tree_size23 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size4 -----
module mux_tree_size4(in,
                      sram,
                      sram_inv,
                      out);
//----- INPUT PORTS -----
input [0:3] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	BUFFD4BWP7D5T16P96CPD BUFFD4BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_2_Z),
		.Z(out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

endmodule
// ----- END Verilog module for mux_tree_size4 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for frac_lut6_mux -----
module frac_lut6_mux(in,
                     sram,
                     sram_inv,
                     lut4_out,
                     lut5_out,
                     lut6_out);
//----- INPUT PORTS -----
input [0:63] in;
//----- INPUT PORTS -----
input [0:5] sram;
//----- INPUT PORTS -----
input [0:5] sram_inv;
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

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_0_ (
		.I(MUX2D1BWP7D5T16P96CPD_56_Z),
		.Z(lut4_out[0]));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_1_ (
		.I(MUX2D1BWP7D5T16P96CPD_57_Z),
		.Z(lut4_out[1]));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_2_ (
		.I(MUX2D1BWP7D5T16P96CPD_58_Z),
		.Z(lut4_out[2]));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_3_ (
		.I(MUX2D1BWP7D5T16P96CPD_59_Z),
		.Z(lut4_out[3]));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_4_ (
		.I(MUX2D1BWP7D5T16P96CPD_60_Z),
		.Z(lut5_out[0]));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_5_ (
		.I(MUX2D1BWP7D5T16P96CPD_61_Z),
		.Z(lut5_out[1]));

	BUFFD2BWP7D5T16P96CPD BUFFD2BWP7D5T16P96CPD_6_ (
		.I(MUX2D1BWP7D5T16P96CPD_62_Z),
		.Z(lut6_out));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_0_ (
		.I1(in[0]),
		.I0(in[1]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_0_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_1_ (
		.I1(in[2]),
		.I0(in[3]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_1_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_2_ (
		.I1(in[4]),
		.I0(in[5]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_2_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_3_ (
		.I1(in[6]),
		.I0(in[7]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_3_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_4_ (
		.I1(in[8]),
		.I0(in[9]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_4_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_5_ (
		.I1(in[10]),
		.I0(in[11]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_5_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_6_ (
		.I1(in[12]),
		.I0(in[13]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_6_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_7_ (
		.I1(in[14]),
		.I0(in[15]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_7_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_8_ (
		.I1(in[16]),
		.I0(in[17]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_8_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_9_ (
		.I1(in[18]),
		.I0(in[19]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_9_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_10_ (
		.I1(in[20]),
		.I0(in[21]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_10_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_11_ (
		.I1(in[22]),
		.I0(in[23]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_11_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_12_ (
		.I1(in[24]),
		.I0(in[25]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_12_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_13_ (
		.I1(in[26]),
		.I0(in[27]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_13_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_14_ (
		.I1(in[28]),
		.I0(in[29]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_14_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_15_ (
		.I1(in[30]),
		.I0(in[31]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_15_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_16_ (
		.I1(in[32]),
		.I0(in[33]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_16_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_17_ (
		.I1(in[34]),
		.I0(in[35]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_17_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_18_ (
		.I1(in[36]),
		.I0(in[37]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_18_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_19_ (
		.I1(in[38]),
		.I0(in[39]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_19_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_20_ (
		.I1(in[40]),
		.I0(in[41]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_20_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_21_ (
		.I1(in[42]),
		.I0(in[43]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_21_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_22_ (
		.I1(in[44]),
		.I0(in[45]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_22_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_23_ (
		.I1(in[46]),
		.I0(in[47]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_23_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_24_ (
		.I1(in[48]),
		.I0(in[49]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_24_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_25_ (
		.I1(in[50]),
		.I0(in[51]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_25_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_26_ (
		.I1(in[52]),
		.I0(in[53]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_26_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_27_ (
		.I1(in[54]),
		.I0(in[55]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_27_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_28_ (
		.I1(in[56]),
		.I0(in[57]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_28_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_29_ (
		.I1(in[58]),
		.I0(in[59]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_29_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_30_ (
		.I1(in[60]),
		.I0(in[61]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_30_Z));

	MUX2D1BWP7D5T16P96CPD mux_l1_in_31_ (
		.I1(in[62]),
		.I0(in[63]),
		.S(sram[0]),
		.Z(MUX2D1BWP7D5T16P96CPD_31_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_0_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_1_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_32_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_2_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_3_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_33_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_4_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_5_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_34_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_6_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_7_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_35_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_4_ (
		.I1(MUX2D1BWP7D5T16P96CPD_8_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_9_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_36_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_5_ (
		.I1(MUX2D1BWP7D5T16P96CPD_10_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_11_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_37_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_6_ (
		.I1(MUX2D1BWP7D5T16P96CPD_12_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_13_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_38_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_7_ (
		.I1(MUX2D1BWP7D5T16P96CPD_14_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_15_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_39_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_8_ (
		.I1(MUX2D1BWP7D5T16P96CPD_16_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_17_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_40_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_9_ (
		.I1(MUX2D1BWP7D5T16P96CPD_18_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_19_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_41_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_10_ (
		.I1(MUX2D1BWP7D5T16P96CPD_20_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_21_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_42_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_11_ (
		.I1(MUX2D1BWP7D5T16P96CPD_22_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_23_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_43_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_12_ (
		.I1(MUX2D1BWP7D5T16P96CPD_24_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_25_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_44_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_13_ (
		.I1(MUX2D1BWP7D5T16P96CPD_26_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_27_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_45_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_14_ (
		.I1(MUX2D1BWP7D5T16P96CPD_28_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_29_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_46_Z));

	MUX2D1BWP7D5T16P96CPD mux_l2_in_15_ (
		.I1(MUX2D1BWP7D5T16P96CPD_30_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_31_Z),
		.S(sram[1]),
		.Z(MUX2D1BWP7D5T16P96CPD_47_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_32_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_33_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_48_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_34_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_35_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_49_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_36_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_37_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_50_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_38_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_39_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_51_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_4_ (
		.I1(MUX2D1BWP7D5T16P96CPD_40_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_41_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_52_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_5_ (
		.I1(MUX2D1BWP7D5T16P96CPD_42_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_43_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_53_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_6_ (
		.I1(MUX2D1BWP7D5T16P96CPD_44_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_45_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_54_Z));

	MUX2D1BWP7D5T16P96CPD mux_l3_in_7_ (
		.I1(MUX2D1BWP7D5T16P96CPD_46_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_47_Z),
		.S(sram[2]),
		.Z(MUX2D1BWP7D5T16P96CPD_55_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_48_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_49_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_56_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_50_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_51_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_57_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_2_ (
		.I1(MUX2D1BWP7D5T16P96CPD_52_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_53_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_58_Z));

	MUX2D1BWP7D5T16P96CPD mux_l4_in_3_ (
		.I1(MUX2D1BWP7D5T16P96CPD_54_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_55_Z),
		.S(sram[3]),
		.Z(MUX2D1BWP7D5T16P96CPD_59_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_56_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_57_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_60_Z));

	MUX2D1BWP7D5T16P96CPD mux_l5_in_1_ (
		.I1(MUX2D1BWP7D5T16P96CPD_58_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_59_Z),
		.S(sram[4]),
		.Z(MUX2D1BWP7D5T16P96CPD_61_Z));

	MUX2D1BWP7D5T16P96CPD mux_l6_in_0_ (
		.I1(MUX2D1BWP7D5T16P96CPD_60_Z),
		.I0(MUX2D1BWP7D5T16P96CPD_61_Z),
		.S(sram[5]),
		.Z(MUX2D1BWP7D5T16P96CPD_62_Z));

endmodule
// ----- END Verilog module for frac_lut6_mux -----

//----- Default net type -----
`default_nettype none




