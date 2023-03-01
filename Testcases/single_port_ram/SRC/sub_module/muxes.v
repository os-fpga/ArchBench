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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_22_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_4_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_5_ (
		.D1(in[10]),
		.D0(in[11]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_6_ (
		.D1(in[12]),
		.D0(in[13]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_7_ (
		.D1(in[14]),
		.D0(in[15]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_9_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_10_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_11_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_4_ (
		.D1(in[16]),
		.D0(in[17]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_12_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_5_ (
		.D1(in[18]),
		.D0(in[19]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_13_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_6_ (
		.D1(in[20]),
		.D0(in[21]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_14_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_7_ (
		.D1(in[22]),
		.D0(in[23]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_15_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_8_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_9_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_16_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_10_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_11_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_17_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_12_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_13_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_18_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_14_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_15_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_19_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_16_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_17_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_20_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_18_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_19_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_21_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l5_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_20_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_21_Z),
		.S(sram[4]),
		.Z(dti_16f_7p5t_90c_mux21x1_22_Z));

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_20_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_4_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_5_ (
		.D1(in[10]),
		.D0(in[11]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(in[12]),
		.D0(in[13]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_9_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_4_ (
		.D1(in[14]),
		.D0(in[15]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_10_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_5_ (
		.D1(in[16]),
		.D0(in[17]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_11_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_6_ (
		.D1(in[18]),
		.D0(in[19]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_12_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_7_ (
		.D1(in[20]),
		.D0(in[21]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_13_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_14_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_8_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_9_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_15_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_10_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_11_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_16_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_12_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_13_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_17_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_14_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_15_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_18_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_16_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_17_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_19_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l5_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_18_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_19_Z),
		.S(sram[4]),
		.Z(dti_16f_7p5t_90c_mux21x1_20_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size22 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L1SB_size5 -----
module mux_tree_tapbuf_L1SB_size5(in,
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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_3_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(in[2]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[3]),
		.D0(in[4]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_1_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_2_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L1SB_size5 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L1SB_size4 -----
module mux_tree_tapbuf_L1SB_size4(in,
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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_2_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L1SB_size4 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L1SB_size3 -----
module mux_tree_tapbuf_L1SB_size3(in,
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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_1_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(in[2]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L1SB_size3 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_1_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(in[2]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size3 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_2_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size4 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L1SB_size2 -----
module mux_tree_tapbuf_L1SB_size2(in,
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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_0_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L1SB_size2 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L1SB_size8 -----
module mux_tree_tapbuf_L1SB_size8(in,
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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_6_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L1SB_size8 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_3_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(in[2]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[3]),
		.D0(in[4]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_1_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_2_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size5 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_7_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(in[2]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[3]),
		.D0(in[4]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(in[5]),
		.D0(in[6]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(in[7]),
		.D0(in[8]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_1_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_2_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_3_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_4_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_5_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_6_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size9 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_9_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(in[6]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(in[7]),
		.D0(in[8]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(in[9]),
		.D0(in[10]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_3_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_4_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_5_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_6_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_7_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_8_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_9_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size11 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_0_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size2 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_8_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size10 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L1SB_size10 -----
module mux_tree_tapbuf_L1SB_size10(in,
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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_8_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L1SB_size10 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L1SB_size9 -----
module mux_tree_tapbuf_L1SB_size9(in,
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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_7_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(in[2]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[3]),
		.D0(in[4]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(in[5]),
		.D0(in[6]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(in[7]),
		.D0(in[8]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_1_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_2_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_3_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_4_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_5_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_6_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L1SB_size9 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L1SB_size6 -----
module mux_tree_tapbuf_L1SB_size6(in,
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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_4_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L1SB_size6 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_6_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_5_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(in[6]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_3_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_4_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size7 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_4_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size6 -----

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

	dti_16f_7p5t_90c_bufx12 dti_16f_7p5t_90c_bufx12_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_10_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(in[10]),
		.D0(in[11]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_9_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_8_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_9_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_10_Z));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size12 -----

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

	dti_16f_7p5t_90c_bufx4 dti_16f_7p5t_90c_bufx4_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_2_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

endmodule
// ----- END Verilog module for mux_tree_size4 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_1level_io_size2 -----
module mux_1level_io_size2(in,
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

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram),
		.Z(out));

endmodule
// ----- END Verilog module for mux_1level_io_size2 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size28 -----
module mux_tree_size28(in,
                       sram,
                       sram_inv,
                       out);
//----- INPUT PORTS -----
input [0:27] in;
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

	dti_16f_7p5t_90c_bufx4 dti_16f_7p5t_90c_bufx4_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_26_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_4_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_5_ (
		.D1(in[10]),
		.D0(in[11]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_6_ (
		.D1(in[12]),
		.D0(in[13]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_7_ (
		.D1(in[14]),
		.D0(in[15]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_8_ (
		.D1(in[16]),
		.D0(in[17]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_9_ (
		.D1(in[18]),
		.D0(in[19]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_9_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_10_ (
		.D1(in[20]),
		.D0(in[21]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_10_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_11_ (
		.D1(in[22]),
		.D0(in[23]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_11_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_12_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_13_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_14_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_15_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_4_ (
		.D1(dti_16f_7p5t_90c_mux21x1_8_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_9_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_16_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_5_ (
		.D1(dti_16f_7p5t_90c_mux21x1_10_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_11_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_17_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_6_ (
		.D1(in[24]),
		.D0(in[25]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_18_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_7_ (
		.D1(in[26]),
		.D0(in[27]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_19_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_12_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_13_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_20_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_14_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_15_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_21_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_16_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_17_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_22_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_18_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_19_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_23_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_20_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_21_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_24_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_22_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_23_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_25_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l5_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_24_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_25_Z),
		.S(sram[4]),
		.Z(dti_16f_7p5t_90c_mux21x1_26_Z));

endmodule
// ----- END Verilog module for mux_tree_size28 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size30 -----
module mux_tree_size30(in,
                       sram,
                       sram_inv,
                       out);
//----- INPUT PORTS -----
input [0:29] in;
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

	dti_16f_7p5t_90c_bufx4 dti_16f_7p5t_90c_bufx4_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_28_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_4_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_5_ (
		.D1(in[10]),
		.D0(in[11]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_6_ (
		.D1(in[12]),
		.D0(in[13]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_7_ (
		.D1(in[14]),
		.D0(in[15]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_8_ (
		.D1(in[16]),
		.D0(in[17]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_9_ (
		.D1(in[18]),
		.D0(in[19]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_9_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_10_ (
		.D1(in[20]),
		.D0(in[21]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_10_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_11_ (
		.D1(in[22]),
		.D0(in[23]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_11_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_12_ (
		.D1(in[24]),
		.D0(in[25]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_12_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_13_ (
		.D1(in[26]),
		.D0(in[27]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_13_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_14_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_15_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_16_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_17_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_4_ (
		.D1(dti_16f_7p5t_90c_mux21x1_8_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_9_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_18_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_5_ (
		.D1(dti_16f_7p5t_90c_mux21x1_10_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_11_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_19_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_6_ (
		.D1(dti_16f_7p5t_90c_mux21x1_12_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_13_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_20_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_7_ (
		.D1(in[28]),
		.D0(in[29]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_21_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_14_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_15_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_22_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_16_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_17_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_23_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_18_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_19_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_24_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_20_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_21_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_25_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_22_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_23_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_26_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_24_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_25_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_27_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l5_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_26_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_27_Z),
		.S(sram[4]),
		.Z(dti_16f_7p5t_90c_mux21x1_28_Z));

endmodule
// ----- END Verilog module for mux_tree_size30 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size20 -----
module mux_tree_size20(in,
                       sram,
                       sram_inv,
                       out);
//----- INPUT PORTS -----
input [0:19] in;
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

	dti_16f_7p5t_90c_bufx4 dti_16f_7p5t_90c_bufx4_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_18_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(in[10]),
		.D0(in[11]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_4_ (
		.D1(in[12]),
		.D0(in[13]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_5_ (
		.D1(in[14]),
		.D0(in[15]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_9_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_6_ (
		.D1(in[16]),
		.D0(in[17]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_10_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_7_ (
		.D1(in[18]),
		.D0(in[19]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_11_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_12_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_13_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_8_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_9_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_14_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_10_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_11_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_15_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_12_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_13_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_16_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_14_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_15_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_17_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l5_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_16_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_17_Z),
		.S(sram[4]),
		.Z(dti_16f_7p5t_90c_mux21x1_18_Z));

endmodule
// ----- END Verilog module for mux_tree_size20 -----

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

	dti_16f_7p5t_90c_bufx4 dti_16f_7p5t_90c_bufx4_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_0_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

endmodule
// ----- END Verilog module for mux_tree_size2 -----

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

	dti_16f_7p5t_90c_bufx4 dti_16f_7p5t_90c_bufx4_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_4_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

endmodule
// ----- END Verilog module for mux_tree_size6 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_1level_fabric_size2 -----
module mux_1level_fabric_size2(in,
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

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram),
		.Z(out));

endmodule
// ----- END Verilog module for mux_1level_fabric_size2 -----

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

	dti_16f_7p5t_90c_bufx4 dti_16f_7p5t_90c_bufx4_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_1_Z),
		.Z(out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(in[2]),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

endmodule
// ----- END Verilog module for mux_tree_size3 -----

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

	dti_16f_7p5t_90c_bufx2 dti_16f_7p5t_90c_bufx2_0_ (
		.A(dti_16f_7p5t_90c_mux21x1_56_Z),
		.Z(lut4_out[0]));

	dti_16f_7p5t_90c_bufx2 dti_16f_7p5t_90c_bufx2_1_ (
		.A(dti_16f_7p5t_90c_mux21x1_57_Z),
		.Z(lut4_out[1]));

	dti_16f_7p5t_90c_bufx2 dti_16f_7p5t_90c_bufx2_2_ (
		.A(dti_16f_7p5t_90c_mux21x1_58_Z),
		.Z(lut4_out[2]));

	dti_16f_7p5t_90c_bufx2 dti_16f_7p5t_90c_bufx2_3_ (
		.A(dti_16f_7p5t_90c_mux21x1_59_Z),
		.Z(lut4_out[3]));

	dti_16f_7p5t_90c_bufx2 dti_16f_7p5t_90c_bufx2_4_ (
		.A(dti_16f_7p5t_90c_mux21x1_60_Z),
		.Z(lut5_out[0]));

	dti_16f_7p5t_90c_bufx2 dti_16f_7p5t_90c_bufx2_5_ (
		.A(dti_16f_7p5t_90c_mux21x1_61_Z),
		.Z(lut5_out[1]));

	dti_16f_7p5t_90c_bufx2 dti_16f_7p5t_90c_bufx2_6_ (
		.A(dti_16f_7p5t_90c_mux21x1_62_Z),
		.Z(lut6_out));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_0_ (
		.D1(in[0]),
		.D0(in[1]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_0_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_1_ (
		.D1(in[2]),
		.D0(in[3]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_1_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_2_ (
		.D1(in[4]),
		.D0(in[5]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_2_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_3_ (
		.D1(in[6]),
		.D0(in[7]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_3_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_4_ (
		.D1(in[8]),
		.D0(in[9]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_4_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_5_ (
		.D1(in[10]),
		.D0(in[11]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_5_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_6_ (
		.D1(in[12]),
		.D0(in[13]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_6_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_7_ (
		.D1(in[14]),
		.D0(in[15]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_7_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_8_ (
		.D1(in[16]),
		.D0(in[17]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_8_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_9_ (
		.D1(in[18]),
		.D0(in[19]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_9_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_10_ (
		.D1(in[20]),
		.D0(in[21]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_10_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_11_ (
		.D1(in[22]),
		.D0(in[23]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_11_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_12_ (
		.D1(in[24]),
		.D0(in[25]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_12_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_13_ (
		.D1(in[26]),
		.D0(in[27]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_13_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_14_ (
		.D1(in[28]),
		.D0(in[29]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_14_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_15_ (
		.D1(in[30]),
		.D0(in[31]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_15_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_16_ (
		.D1(in[32]),
		.D0(in[33]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_16_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_17_ (
		.D1(in[34]),
		.D0(in[35]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_17_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_18_ (
		.D1(in[36]),
		.D0(in[37]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_18_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_19_ (
		.D1(in[38]),
		.D0(in[39]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_19_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_20_ (
		.D1(in[40]),
		.D0(in[41]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_20_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_21_ (
		.D1(in[42]),
		.D0(in[43]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_21_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_22_ (
		.D1(in[44]),
		.D0(in[45]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_22_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_23_ (
		.D1(in[46]),
		.D0(in[47]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_23_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_24_ (
		.D1(in[48]),
		.D0(in[49]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_24_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_25_ (
		.D1(in[50]),
		.D0(in[51]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_25_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_26_ (
		.D1(in[52]),
		.D0(in[53]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_26_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_27_ (
		.D1(in[54]),
		.D0(in[55]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_27_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_28_ (
		.D1(in[56]),
		.D0(in[57]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_28_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_29_ (
		.D1(in[58]),
		.D0(in[59]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_29_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_30_ (
		.D1(in[60]),
		.D0(in[61]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_30_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l1_in_31_ (
		.D1(in[62]),
		.D0(in[63]),
		.S(sram[0]),
		.Z(dti_16f_7p5t_90c_mux21x1_31_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_0_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_1_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_32_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_2_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_3_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_33_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_4_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_5_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_34_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_6_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_7_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_35_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_4_ (
		.D1(dti_16f_7p5t_90c_mux21x1_8_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_9_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_36_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_5_ (
		.D1(dti_16f_7p5t_90c_mux21x1_10_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_11_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_37_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_6_ (
		.D1(dti_16f_7p5t_90c_mux21x1_12_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_13_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_38_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_7_ (
		.D1(dti_16f_7p5t_90c_mux21x1_14_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_15_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_39_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_8_ (
		.D1(dti_16f_7p5t_90c_mux21x1_16_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_17_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_40_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_9_ (
		.D1(dti_16f_7p5t_90c_mux21x1_18_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_19_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_41_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_10_ (
		.D1(dti_16f_7p5t_90c_mux21x1_20_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_21_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_42_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_11_ (
		.D1(dti_16f_7p5t_90c_mux21x1_22_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_23_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_43_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_12_ (
		.D1(dti_16f_7p5t_90c_mux21x1_24_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_25_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_44_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_13_ (
		.D1(dti_16f_7p5t_90c_mux21x1_26_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_27_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_45_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_14_ (
		.D1(dti_16f_7p5t_90c_mux21x1_28_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_29_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_46_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l2_in_15_ (
		.D1(dti_16f_7p5t_90c_mux21x1_30_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_31_Z),
		.S(sram[1]),
		.Z(dti_16f_7p5t_90c_mux21x1_47_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_32_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_33_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_48_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_34_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_35_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_49_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_36_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_37_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_50_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_38_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_39_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_51_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_4_ (
		.D1(dti_16f_7p5t_90c_mux21x1_40_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_41_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_52_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_5_ (
		.D1(dti_16f_7p5t_90c_mux21x1_42_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_43_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_53_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_6_ (
		.D1(dti_16f_7p5t_90c_mux21x1_44_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_45_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_54_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l3_in_7_ (
		.D1(dti_16f_7p5t_90c_mux21x1_46_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_47_Z),
		.S(sram[2]),
		.Z(dti_16f_7p5t_90c_mux21x1_55_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_48_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_49_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_56_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_50_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_51_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_57_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_2_ (
		.D1(dti_16f_7p5t_90c_mux21x1_52_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_53_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_58_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l4_in_3_ (
		.D1(dti_16f_7p5t_90c_mux21x1_54_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_55_Z),
		.S(sram[3]),
		.Z(dti_16f_7p5t_90c_mux21x1_59_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l5_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_56_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_57_Z),
		.S(sram[4]),
		.Z(dti_16f_7p5t_90c_mux21x1_60_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l5_in_1_ (
		.D1(dti_16f_7p5t_90c_mux21x1_58_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_59_Z),
		.S(sram[4]),
		.Z(dti_16f_7p5t_90c_mux21x1_61_Z));

	dti_16f_7p5t_90c_mux21x1 mux_l6_in_0_ (
		.D1(dti_16f_7p5t_90c_mux21x1_60_Z),
		.D0(dti_16f_7p5t_90c_mux21x1_61_Z),
		.S(sram[5]),
		.Z(dti_16f_7p5t_90c_mux21x1_62_Z));

endmodule
// ----- END Verilog module for frac_lut6_mux -----

//----- Default net type -----
`default_nettype none




