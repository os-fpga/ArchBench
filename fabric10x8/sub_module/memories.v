//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Memories used in FPGA
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_size24_mem -----
module mux_tree_tapbuf_size24_mem(config_enable,
                                  prog_clock,
                                  ccff_head,
                                  ccff_tail,
                                  mem_out,
                                  mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size24_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_size22_mem -----
module mux_tree_tapbuf_size22_mem(config_enable,
                                  prog_clock,
                                  ccff_head,
                                  ccff_tail,
                                  mem_out,
                                  mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_size22_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size7_mem -----
module mux_tree_tapbuf_L2SB_size7_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size7_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size13_mem -----
module mux_tree_tapbuf_L2SB_size13_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size13_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size6_mem -----
module mux_tree_tapbuf_L2SB_size6_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size6_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size12_mem -----
module mux_tree_tapbuf_L2SB_size12_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size12_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size5_mem -----
module mux_tree_tapbuf_L2SB_size5_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size5_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size11_mem -----
module mux_tree_tapbuf_L2SB_size11_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size11_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size5_mem -----
module mux_tree_tapbuf_L4SB_size5_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size5_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size17_mem -----
module mux_tree_tapbuf_L4SB_size17_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size17_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size6_mem -----
module mux_tree_tapbuf_L4SB_size6_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size6_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size18_mem -----
module mux_tree_tapbuf_L4SB_size18_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size18_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size13_mem -----
module mux_tree_tapbuf_L4SB_size13_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size13_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size12_mem -----
module mux_tree_tapbuf_L4SB_size12_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size12_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size11_mem -----
module mux_tree_tapbuf_L4SB_size11_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size11_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size10_mem -----
module mux_tree_tapbuf_L4SB_size10_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size10_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size9_mem -----
module mux_tree_tapbuf_L4SB_size9_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size9_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size8_mem -----
module mux_tree_tapbuf_L4SB_size8_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size8_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size7_mem -----
module mux_tree_tapbuf_L4SB_size7_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size7_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size14_mem -----
module mux_tree_tapbuf_L4SB_size14_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size14_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size4_mem -----
module mux_tree_tapbuf_L2SB_size4_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size4_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size3_mem -----
module mux_tree_tapbuf_L2SB_size3_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size3_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size9_mem -----
module mux_tree_tapbuf_L2SB_size9_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size9_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size8_mem -----
module mux_tree_tapbuf_L2SB_size8_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size8_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size4_mem -----
module mux_tree_tapbuf_L4SB_size4_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size4_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size3_mem -----
module mux_tree_tapbuf_L4SB_size3_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size3_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size2_mem -----
module mux_tree_tapbuf_L4SB_size2_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(ccff_tail),
		.MEMB(mem_outb),
		.MEM(mem_out));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size2_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size2_mem -----
module mux_tree_tapbuf_L2SB_size2_mem(config_enable,
                                      prog_clock,
                                      ccff_head,
                                      ccff_tail,
                                      mem_out,
                                      mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(ccff_tail),
		.MEMB(mem_outb),
		.MEM(mem_out));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size2_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L2SB_size10_mem -----
module mux_tree_tapbuf_L2SB_size10_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L2SB_size10_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size15_mem -----
module mux_tree_tapbuf_L4SB_size15_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size15_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_tapbuf_L4SB_size16_mem -----
module mux_tree_tapbuf_L4SB_size16_mem(config_enable,
                                       prog_clock,
                                       ccff_head,
                                       ccff_tail,
                                       mem_out,
                                       mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_tapbuf_L4SB_size16_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_clock_size16_mem -----
module mux_tree_clock_size16_mem(config_enable,
                                 prog_clock,
                                 ccff_head,
                                 ccff_tail,
                                 mem_out,
                                 mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:3] mem_out;
//----- OUTPUT PORTS -----
output [0:3] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

endmodule
// ----- END Verilog module for mux_tree_clock_size16_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size2_mem -----
module mux_tree_size2_mem(config_enable,
                          prog_clock,
                          ccff_head,
                          ccff_tail,
                          mem_out,
                          mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(ccff_tail),
		.MEMB(mem_outb),
		.MEM(mem_out));

endmodule
// ----- END Verilog module for mux_tree_size2_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size32_mem -----
module mux_tree_size32_mem(config_enable,
                           prog_clock,
                           ccff_head,
                           ccff_tail,
                           mem_out,
                           mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for mux_tree_size32_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size24_mem -----
module mux_tree_size24_mem(config_enable,
                           prog_clock,
                           ccff_head,
                           ccff_tail,
                           mem_out,
                           mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for mux_tree_size24_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size6_mem -----
module mux_tree_size6_mem(config_enable,
                          prog_clock,
                          ccff_head,
                          ccff_tail,
                          mem_out,
                          mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:2] mem_out;
//----- OUTPUT PORTS -----
output [0:2] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

endmodule
// ----- END Verilog module for mux_tree_size6_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size3_mem -----
module mux_tree_size3_mem(config_enable,
                          prog_clock,
                          ccff_head,
                          ccff_tail,
                          mem_out,
                          mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

endmodule
// ----- END Verilog module for mux_tree_size3_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size21_mem -----
module mux_tree_size21_mem(config_enable,
                           prog_clock,
                           ccff_head,
                           ccff_tail,
                           mem_out,
                           mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for mux_tree_size21_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size23_mem -----
module mux_tree_size23_mem(config_enable,
                           prog_clock,
                           ccff_head,
                           ccff_tail,
                           mem_out,
                           mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for mux_tree_size23_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for mux_tree_size4_mem -----
module mux_tree_size4_mem(config_enable,
                          prog_clock,
                          ccff_head,
                          ccff_tail,
                          mem_out,
                          mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:1] mem_out;
//----- OUTPUT PORTS -----
output [0:1] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

endmodule
// ----- END Verilog module for mux_tree_size4_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for RS_IOFF_RS_CCFF_mem -----
module RS_IOFF_RS_CCFF_mem(config_enable,
                           prog_clock,
                           ccff_head,
                           ccff_tail,
                           mem_out,
                           mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(ccff_tail),
		.MEMB(mem_outb),
		.MEM(mem_out));

endmodule
// ----- END Verilog module for RS_IOFF_RS_CCFF_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for frac_lut6_RS_CCFF_mem -----
module frac_lut6_RS_CCFF_mem(config_enable,
                             prog_clock,
                             ccff_head,
                             ccff_tail,
                             mem_out,
                             mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:65] mem_out;
//----- OUTPUT PORTS -----
output [0:65] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(RS_CCFF_4_Q),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

	RS_CCFF RS_CCFF_5_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_4_Q),
		.Q(RS_CCFF_5_Q),
		.MEMB(mem_outb[5]),
		.MEM(mem_out[5]));

	RS_CCFF RS_CCFF_6_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_5_Q),
		.Q(RS_CCFF_6_Q),
		.MEMB(mem_outb[6]),
		.MEM(mem_out[6]));

	RS_CCFF RS_CCFF_7_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_6_Q),
		.Q(RS_CCFF_7_Q),
		.MEMB(mem_outb[7]),
		.MEM(mem_out[7]));

	RS_CCFF RS_CCFF_8_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_7_Q),
		.Q(RS_CCFF_8_Q),
		.MEMB(mem_outb[8]),
		.MEM(mem_out[8]));

	RS_CCFF RS_CCFF_9_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_8_Q),
		.Q(RS_CCFF_9_Q),
		.MEMB(mem_outb[9]),
		.MEM(mem_out[9]));

	RS_CCFF RS_CCFF_10_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_9_Q),
		.Q(RS_CCFF_10_Q),
		.MEMB(mem_outb[10]),
		.MEM(mem_out[10]));

	RS_CCFF RS_CCFF_11_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_10_Q),
		.Q(RS_CCFF_11_Q),
		.MEMB(mem_outb[11]),
		.MEM(mem_out[11]));

	RS_CCFF RS_CCFF_12_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_11_Q),
		.Q(RS_CCFF_12_Q),
		.MEMB(mem_outb[12]),
		.MEM(mem_out[12]));

	RS_CCFF RS_CCFF_13_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_12_Q),
		.Q(RS_CCFF_13_Q),
		.MEMB(mem_outb[13]),
		.MEM(mem_out[13]));

	RS_CCFF RS_CCFF_14_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_13_Q),
		.Q(RS_CCFF_14_Q),
		.MEMB(mem_outb[14]),
		.MEM(mem_out[14]));

	RS_CCFF RS_CCFF_15_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_14_Q),
		.Q(RS_CCFF_15_Q),
		.MEMB(mem_outb[15]),
		.MEM(mem_out[15]));

	RS_CCFF RS_CCFF_16_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_15_Q),
		.Q(RS_CCFF_16_Q),
		.MEMB(mem_outb[16]),
		.MEM(mem_out[16]));

	RS_CCFF RS_CCFF_17_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_16_Q),
		.Q(RS_CCFF_17_Q),
		.MEMB(mem_outb[17]),
		.MEM(mem_out[17]));

	RS_CCFF RS_CCFF_18_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_17_Q),
		.Q(RS_CCFF_18_Q),
		.MEMB(mem_outb[18]),
		.MEM(mem_out[18]));

	RS_CCFF RS_CCFF_19_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_18_Q),
		.Q(RS_CCFF_19_Q),
		.MEMB(mem_outb[19]),
		.MEM(mem_out[19]));

	RS_CCFF RS_CCFF_20_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_19_Q),
		.Q(RS_CCFF_20_Q),
		.MEMB(mem_outb[20]),
		.MEM(mem_out[20]));

	RS_CCFF RS_CCFF_21_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_20_Q),
		.Q(RS_CCFF_21_Q),
		.MEMB(mem_outb[21]),
		.MEM(mem_out[21]));

	RS_CCFF RS_CCFF_22_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_21_Q),
		.Q(RS_CCFF_22_Q),
		.MEMB(mem_outb[22]),
		.MEM(mem_out[22]));

	RS_CCFF RS_CCFF_23_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_22_Q),
		.Q(RS_CCFF_23_Q),
		.MEMB(mem_outb[23]),
		.MEM(mem_out[23]));

	RS_CCFF RS_CCFF_24_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_23_Q),
		.Q(RS_CCFF_24_Q),
		.MEMB(mem_outb[24]),
		.MEM(mem_out[24]));

	RS_CCFF RS_CCFF_25_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_24_Q),
		.Q(RS_CCFF_25_Q),
		.MEMB(mem_outb[25]),
		.MEM(mem_out[25]));

	RS_CCFF RS_CCFF_26_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_25_Q),
		.Q(RS_CCFF_26_Q),
		.MEMB(mem_outb[26]),
		.MEM(mem_out[26]));

	RS_CCFF RS_CCFF_27_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_26_Q),
		.Q(RS_CCFF_27_Q),
		.MEMB(mem_outb[27]),
		.MEM(mem_out[27]));

	RS_CCFF RS_CCFF_28_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_27_Q),
		.Q(RS_CCFF_28_Q),
		.MEMB(mem_outb[28]),
		.MEM(mem_out[28]));

	RS_CCFF RS_CCFF_29_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_28_Q),
		.Q(RS_CCFF_29_Q),
		.MEMB(mem_outb[29]),
		.MEM(mem_out[29]));

	RS_CCFF RS_CCFF_30_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_29_Q),
		.Q(RS_CCFF_30_Q),
		.MEMB(mem_outb[30]),
		.MEM(mem_out[30]));

	RS_CCFF RS_CCFF_31_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_30_Q),
		.Q(RS_CCFF_31_Q),
		.MEMB(mem_outb[31]),
		.MEM(mem_out[31]));

	RS_CCFF RS_CCFF_32_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_31_Q),
		.Q(RS_CCFF_32_Q),
		.MEMB(mem_outb[32]),
		.MEM(mem_out[32]));

	RS_CCFF RS_CCFF_33_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_32_Q),
		.Q(RS_CCFF_33_Q),
		.MEMB(mem_outb[33]),
		.MEM(mem_out[33]));

	RS_CCFF RS_CCFF_34_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_33_Q),
		.Q(RS_CCFF_34_Q),
		.MEMB(mem_outb[34]),
		.MEM(mem_out[34]));

	RS_CCFF RS_CCFF_35_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_34_Q),
		.Q(RS_CCFF_35_Q),
		.MEMB(mem_outb[35]),
		.MEM(mem_out[35]));

	RS_CCFF RS_CCFF_36_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_35_Q),
		.Q(RS_CCFF_36_Q),
		.MEMB(mem_outb[36]),
		.MEM(mem_out[36]));

	RS_CCFF RS_CCFF_37_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_36_Q),
		.Q(RS_CCFF_37_Q),
		.MEMB(mem_outb[37]),
		.MEM(mem_out[37]));

	RS_CCFF RS_CCFF_38_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_37_Q),
		.Q(RS_CCFF_38_Q),
		.MEMB(mem_outb[38]),
		.MEM(mem_out[38]));

	RS_CCFF RS_CCFF_39_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_38_Q),
		.Q(RS_CCFF_39_Q),
		.MEMB(mem_outb[39]),
		.MEM(mem_out[39]));

	RS_CCFF RS_CCFF_40_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_39_Q),
		.Q(RS_CCFF_40_Q),
		.MEMB(mem_outb[40]),
		.MEM(mem_out[40]));

	RS_CCFF RS_CCFF_41_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_40_Q),
		.Q(RS_CCFF_41_Q),
		.MEMB(mem_outb[41]),
		.MEM(mem_out[41]));

	RS_CCFF RS_CCFF_42_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_41_Q),
		.Q(RS_CCFF_42_Q),
		.MEMB(mem_outb[42]),
		.MEM(mem_out[42]));

	RS_CCFF RS_CCFF_43_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_42_Q),
		.Q(RS_CCFF_43_Q),
		.MEMB(mem_outb[43]),
		.MEM(mem_out[43]));

	RS_CCFF RS_CCFF_44_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_43_Q),
		.Q(RS_CCFF_44_Q),
		.MEMB(mem_outb[44]),
		.MEM(mem_out[44]));

	RS_CCFF RS_CCFF_45_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_44_Q),
		.Q(RS_CCFF_45_Q),
		.MEMB(mem_outb[45]),
		.MEM(mem_out[45]));

	RS_CCFF RS_CCFF_46_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_45_Q),
		.Q(RS_CCFF_46_Q),
		.MEMB(mem_outb[46]),
		.MEM(mem_out[46]));

	RS_CCFF RS_CCFF_47_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_46_Q),
		.Q(RS_CCFF_47_Q),
		.MEMB(mem_outb[47]),
		.MEM(mem_out[47]));

	RS_CCFF RS_CCFF_48_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_47_Q),
		.Q(RS_CCFF_48_Q),
		.MEMB(mem_outb[48]),
		.MEM(mem_out[48]));

	RS_CCFF RS_CCFF_49_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_48_Q),
		.Q(RS_CCFF_49_Q),
		.MEMB(mem_outb[49]),
		.MEM(mem_out[49]));

	RS_CCFF RS_CCFF_50_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_49_Q),
		.Q(RS_CCFF_50_Q),
		.MEMB(mem_outb[50]),
		.MEM(mem_out[50]));

	RS_CCFF RS_CCFF_51_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_50_Q),
		.Q(RS_CCFF_51_Q),
		.MEMB(mem_outb[51]),
		.MEM(mem_out[51]));

	RS_CCFF RS_CCFF_52_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_51_Q),
		.Q(RS_CCFF_52_Q),
		.MEMB(mem_outb[52]),
		.MEM(mem_out[52]));

	RS_CCFF RS_CCFF_53_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_52_Q),
		.Q(RS_CCFF_53_Q),
		.MEMB(mem_outb[53]),
		.MEM(mem_out[53]));

	RS_CCFF RS_CCFF_54_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_53_Q),
		.Q(RS_CCFF_54_Q),
		.MEMB(mem_outb[54]),
		.MEM(mem_out[54]));

	RS_CCFF RS_CCFF_55_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_54_Q),
		.Q(RS_CCFF_55_Q),
		.MEMB(mem_outb[55]),
		.MEM(mem_out[55]));

	RS_CCFF RS_CCFF_56_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_55_Q),
		.Q(RS_CCFF_56_Q),
		.MEMB(mem_outb[56]),
		.MEM(mem_out[56]));

	RS_CCFF RS_CCFF_57_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_56_Q),
		.Q(RS_CCFF_57_Q),
		.MEMB(mem_outb[57]),
		.MEM(mem_out[57]));

	RS_CCFF RS_CCFF_58_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_57_Q),
		.Q(RS_CCFF_58_Q),
		.MEMB(mem_outb[58]),
		.MEM(mem_out[58]));

	RS_CCFF RS_CCFF_59_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_58_Q),
		.Q(RS_CCFF_59_Q),
		.MEMB(mem_outb[59]),
		.MEM(mem_out[59]));

	RS_CCFF RS_CCFF_60_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_59_Q),
		.Q(RS_CCFF_60_Q),
		.MEMB(mem_outb[60]),
		.MEM(mem_out[60]));

	RS_CCFF RS_CCFF_61_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_60_Q),
		.Q(RS_CCFF_61_Q),
		.MEMB(mem_outb[61]),
		.MEM(mem_out[61]));

	RS_CCFF RS_CCFF_62_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_61_Q),
		.Q(RS_CCFF_62_Q),
		.MEMB(mem_outb[62]),
		.MEM(mem_out[62]));

	RS_CCFF RS_CCFF_63_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_62_Q),
		.Q(RS_CCFF_63_Q),
		.MEMB(mem_outb[63]),
		.MEM(mem_out[63]));

	RS_CCFF RS_CCFF_64_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_63_Q),
		.Q(RS_CCFF_64_Q),
		.MEMB(mem_outb[64]),
		.MEM(mem_out[64]));

	RS_CCFF RS_CCFF_65_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_64_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[65]),
		.MEM(mem_out[65]));

endmodule
// ----- END Verilog module for frac_lut6_RS_CCFF_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for MMFF_RS_CCFF_mem -----
module MMFF_RS_CCFF_mem(config_enable,
                        prog_clock,
                        ccff_head,
                        ccff_tail,
                        mem_out,
                        mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:4] mem_out;
//----- OUTPUT PORTS -----
output [0:4] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

endmodule
// ----- END Verilog module for MMFF_RS_CCFF_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for FA_1BIT_RS_CCFF_mem -----
module FA_1BIT_RS_CCFF_mem(config_enable,
                           prog_clock,
                           ccff_head,
                           ccff_tail,
                           mem_out,
                           mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:0] mem_out;
//----- OUTPUT PORTS -----
output [0:0] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(ccff_tail),
		.MEMB(mem_outb),
		.MEM(mem_out));

endmodule
// ----- END Verilog module for FA_1BIT_RS_CCFF_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for RS_DSP_RS_CCFF_mem -----
module RS_DSP_RS_CCFF_mem(config_enable,
                          prog_clock,
                          ccff_head,
                          ccff_tail,
                          mem_out,
                          mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:83] mem_out;
//----- OUTPUT PORTS -----
output [0:83] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(RS_CCFF_4_Q),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

	RS_CCFF RS_CCFF_5_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_4_Q),
		.Q(RS_CCFF_5_Q),
		.MEMB(mem_outb[5]),
		.MEM(mem_out[5]));

	RS_CCFF RS_CCFF_6_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_5_Q),
		.Q(RS_CCFF_6_Q),
		.MEMB(mem_outb[6]),
		.MEM(mem_out[6]));

	RS_CCFF RS_CCFF_7_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_6_Q),
		.Q(RS_CCFF_7_Q),
		.MEMB(mem_outb[7]),
		.MEM(mem_out[7]));

	RS_CCFF RS_CCFF_8_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_7_Q),
		.Q(RS_CCFF_8_Q),
		.MEMB(mem_outb[8]),
		.MEM(mem_out[8]));

	RS_CCFF RS_CCFF_9_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_8_Q),
		.Q(RS_CCFF_9_Q),
		.MEMB(mem_outb[9]),
		.MEM(mem_out[9]));

	RS_CCFF RS_CCFF_10_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_9_Q),
		.Q(RS_CCFF_10_Q),
		.MEMB(mem_outb[10]),
		.MEM(mem_out[10]));

	RS_CCFF RS_CCFF_11_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_10_Q),
		.Q(RS_CCFF_11_Q),
		.MEMB(mem_outb[11]),
		.MEM(mem_out[11]));

	RS_CCFF RS_CCFF_12_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_11_Q),
		.Q(RS_CCFF_12_Q),
		.MEMB(mem_outb[12]),
		.MEM(mem_out[12]));

	RS_CCFF RS_CCFF_13_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_12_Q),
		.Q(RS_CCFF_13_Q),
		.MEMB(mem_outb[13]),
		.MEM(mem_out[13]));

	RS_CCFF RS_CCFF_14_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_13_Q),
		.Q(RS_CCFF_14_Q),
		.MEMB(mem_outb[14]),
		.MEM(mem_out[14]));

	RS_CCFF RS_CCFF_15_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_14_Q),
		.Q(RS_CCFF_15_Q),
		.MEMB(mem_outb[15]),
		.MEM(mem_out[15]));

	RS_CCFF RS_CCFF_16_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_15_Q),
		.Q(RS_CCFF_16_Q),
		.MEMB(mem_outb[16]),
		.MEM(mem_out[16]));

	RS_CCFF RS_CCFF_17_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_16_Q),
		.Q(RS_CCFF_17_Q),
		.MEMB(mem_outb[17]),
		.MEM(mem_out[17]));

	RS_CCFF RS_CCFF_18_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_17_Q),
		.Q(RS_CCFF_18_Q),
		.MEMB(mem_outb[18]),
		.MEM(mem_out[18]));

	RS_CCFF RS_CCFF_19_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_18_Q),
		.Q(RS_CCFF_19_Q),
		.MEMB(mem_outb[19]),
		.MEM(mem_out[19]));

	RS_CCFF RS_CCFF_20_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_19_Q),
		.Q(RS_CCFF_20_Q),
		.MEMB(mem_outb[20]),
		.MEM(mem_out[20]));

	RS_CCFF RS_CCFF_21_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_20_Q),
		.Q(RS_CCFF_21_Q),
		.MEMB(mem_outb[21]),
		.MEM(mem_out[21]));

	RS_CCFF RS_CCFF_22_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_21_Q),
		.Q(RS_CCFF_22_Q),
		.MEMB(mem_outb[22]),
		.MEM(mem_out[22]));

	RS_CCFF RS_CCFF_23_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_22_Q),
		.Q(RS_CCFF_23_Q),
		.MEMB(mem_outb[23]),
		.MEM(mem_out[23]));

	RS_CCFF RS_CCFF_24_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_23_Q),
		.Q(RS_CCFF_24_Q),
		.MEMB(mem_outb[24]),
		.MEM(mem_out[24]));

	RS_CCFF RS_CCFF_25_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_24_Q),
		.Q(RS_CCFF_25_Q),
		.MEMB(mem_outb[25]),
		.MEM(mem_out[25]));

	RS_CCFF RS_CCFF_26_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_25_Q),
		.Q(RS_CCFF_26_Q),
		.MEMB(mem_outb[26]),
		.MEM(mem_out[26]));

	RS_CCFF RS_CCFF_27_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_26_Q),
		.Q(RS_CCFF_27_Q),
		.MEMB(mem_outb[27]),
		.MEM(mem_out[27]));

	RS_CCFF RS_CCFF_28_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_27_Q),
		.Q(RS_CCFF_28_Q),
		.MEMB(mem_outb[28]),
		.MEM(mem_out[28]));

	RS_CCFF RS_CCFF_29_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_28_Q),
		.Q(RS_CCFF_29_Q),
		.MEMB(mem_outb[29]),
		.MEM(mem_out[29]));

	RS_CCFF RS_CCFF_30_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_29_Q),
		.Q(RS_CCFF_30_Q),
		.MEMB(mem_outb[30]),
		.MEM(mem_out[30]));

	RS_CCFF RS_CCFF_31_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_30_Q),
		.Q(RS_CCFF_31_Q),
		.MEMB(mem_outb[31]),
		.MEM(mem_out[31]));

	RS_CCFF RS_CCFF_32_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_31_Q),
		.Q(RS_CCFF_32_Q),
		.MEMB(mem_outb[32]),
		.MEM(mem_out[32]));

	RS_CCFF RS_CCFF_33_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_32_Q),
		.Q(RS_CCFF_33_Q),
		.MEMB(mem_outb[33]),
		.MEM(mem_out[33]));

	RS_CCFF RS_CCFF_34_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_33_Q),
		.Q(RS_CCFF_34_Q),
		.MEMB(mem_outb[34]),
		.MEM(mem_out[34]));

	RS_CCFF RS_CCFF_35_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_34_Q),
		.Q(RS_CCFF_35_Q),
		.MEMB(mem_outb[35]),
		.MEM(mem_out[35]));

	RS_CCFF RS_CCFF_36_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_35_Q),
		.Q(RS_CCFF_36_Q),
		.MEMB(mem_outb[36]),
		.MEM(mem_out[36]));

	RS_CCFF RS_CCFF_37_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_36_Q),
		.Q(RS_CCFF_37_Q),
		.MEMB(mem_outb[37]),
		.MEM(mem_out[37]));

	RS_CCFF RS_CCFF_38_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_37_Q),
		.Q(RS_CCFF_38_Q),
		.MEMB(mem_outb[38]),
		.MEM(mem_out[38]));

	RS_CCFF RS_CCFF_39_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_38_Q),
		.Q(RS_CCFF_39_Q),
		.MEMB(mem_outb[39]),
		.MEM(mem_out[39]));

	RS_CCFF RS_CCFF_40_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_39_Q),
		.Q(RS_CCFF_40_Q),
		.MEMB(mem_outb[40]),
		.MEM(mem_out[40]));

	RS_CCFF RS_CCFF_41_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_40_Q),
		.Q(RS_CCFF_41_Q),
		.MEMB(mem_outb[41]),
		.MEM(mem_out[41]));

	RS_CCFF RS_CCFF_42_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_41_Q),
		.Q(RS_CCFF_42_Q),
		.MEMB(mem_outb[42]),
		.MEM(mem_out[42]));

	RS_CCFF RS_CCFF_43_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_42_Q),
		.Q(RS_CCFF_43_Q),
		.MEMB(mem_outb[43]),
		.MEM(mem_out[43]));

	RS_CCFF RS_CCFF_44_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_43_Q),
		.Q(RS_CCFF_44_Q),
		.MEMB(mem_outb[44]),
		.MEM(mem_out[44]));

	RS_CCFF RS_CCFF_45_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_44_Q),
		.Q(RS_CCFF_45_Q),
		.MEMB(mem_outb[45]),
		.MEM(mem_out[45]));

	RS_CCFF RS_CCFF_46_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_45_Q),
		.Q(RS_CCFF_46_Q),
		.MEMB(mem_outb[46]),
		.MEM(mem_out[46]));

	RS_CCFF RS_CCFF_47_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_46_Q),
		.Q(RS_CCFF_47_Q),
		.MEMB(mem_outb[47]),
		.MEM(mem_out[47]));

	RS_CCFF RS_CCFF_48_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_47_Q),
		.Q(RS_CCFF_48_Q),
		.MEMB(mem_outb[48]),
		.MEM(mem_out[48]));

	RS_CCFF RS_CCFF_49_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_48_Q),
		.Q(RS_CCFF_49_Q),
		.MEMB(mem_outb[49]),
		.MEM(mem_out[49]));

	RS_CCFF RS_CCFF_50_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_49_Q),
		.Q(RS_CCFF_50_Q),
		.MEMB(mem_outb[50]),
		.MEM(mem_out[50]));

	RS_CCFF RS_CCFF_51_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_50_Q),
		.Q(RS_CCFF_51_Q),
		.MEMB(mem_outb[51]),
		.MEM(mem_out[51]));

	RS_CCFF RS_CCFF_52_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_51_Q),
		.Q(RS_CCFF_52_Q),
		.MEMB(mem_outb[52]),
		.MEM(mem_out[52]));

	RS_CCFF RS_CCFF_53_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_52_Q),
		.Q(RS_CCFF_53_Q),
		.MEMB(mem_outb[53]),
		.MEM(mem_out[53]));

	RS_CCFF RS_CCFF_54_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_53_Q),
		.Q(RS_CCFF_54_Q),
		.MEMB(mem_outb[54]),
		.MEM(mem_out[54]));

	RS_CCFF RS_CCFF_55_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_54_Q),
		.Q(RS_CCFF_55_Q),
		.MEMB(mem_outb[55]),
		.MEM(mem_out[55]));

	RS_CCFF RS_CCFF_56_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_55_Q),
		.Q(RS_CCFF_56_Q),
		.MEMB(mem_outb[56]),
		.MEM(mem_out[56]));

	RS_CCFF RS_CCFF_57_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_56_Q),
		.Q(RS_CCFF_57_Q),
		.MEMB(mem_outb[57]),
		.MEM(mem_out[57]));

	RS_CCFF RS_CCFF_58_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_57_Q),
		.Q(RS_CCFF_58_Q),
		.MEMB(mem_outb[58]),
		.MEM(mem_out[58]));

	RS_CCFF RS_CCFF_59_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_58_Q),
		.Q(RS_CCFF_59_Q),
		.MEMB(mem_outb[59]),
		.MEM(mem_out[59]));

	RS_CCFF RS_CCFF_60_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_59_Q),
		.Q(RS_CCFF_60_Q),
		.MEMB(mem_outb[60]),
		.MEM(mem_out[60]));

	RS_CCFF RS_CCFF_61_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_60_Q),
		.Q(RS_CCFF_61_Q),
		.MEMB(mem_outb[61]),
		.MEM(mem_out[61]));

	RS_CCFF RS_CCFF_62_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_61_Q),
		.Q(RS_CCFF_62_Q),
		.MEMB(mem_outb[62]),
		.MEM(mem_out[62]));

	RS_CCFF RS_CCFF_63_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_62_Q),
		.Q(RS_CCFF_63_Q),
		.MEMB(mem_outb[63]),
		.MEM(mem_out[63]));

	RS_CCFF RS_CCFF_64_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_63_Q),
		.Q(RS_CCFF_64_Q),
		.MEMB(mem_outb[64]),
		.MEM(mem_out[64]));

	RS_CCFF RS_CCFF_65_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_64_Q),
		.Q(RS_CCFF_65_Q),
		.MEMB(mem_outb[65]),
		.MEM(mem_out[65]));

	RS_CCFF RS_CCFF_66_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_65_Q),
		.Q(RS_CCFF_66_Q),
		.MEMB(mem_outb[66]),
		.MEM(mem_out[66]));

	RS_CCFF RS_CCFF_67_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_66_Q),
		.Q(RS_CCFF_67_Q),
		.MEMB(mem_outb[67]),
		.MEM(mem_out[67]));

	RS_CCFF RS_CCFF_68_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_67_Q),
		.Q(RS_CCFF_68_Q),
		.MEMB(mem_outb[68]),
		.MEM(mem_out[68]));

	RS_CCFF RS_CCFF_69_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_68_Q),
		.Q(RS_CCFF_69_Q),
		.MEMB(mem_outb[69]),
		.MEM(mem_out[69]));

	RS_CCFF RS_CCFF_70_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_69_Q),
		.Q(RS_CCFF_70_Q),
		.MEMB(mem_outb[70]),
		.MEM(mem_out[70]));

	RS_CCFF RS_CCFF_71_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_70_Q),
		.Q(RS_CCFF_71_Q),
		.MEMB(mem_outb[71]),
		.MEM(mem_out[71]));

	RS_CCFF RS_CCFF_72_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_71_Q),
		.Q(RS_CCFF_72_Q),
		.MEMB(mem_outb[72]),
		.MEM(mem_out[72]));

	RS_CCFF RS_CCFF_73_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_72_Q),
		.Q(RS_CCFF_73_Q),
		.MEMB(mem_outb[73]),
		.MEM(mem_out[73]));

	RS_CCFF RS_CCFF_74_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_73_Q),
		.Q(RS_CCFF_74_Q),
		.MEMB(mem_outb[74]),
		.MEM(mem_out[74]));

	RS_CCFF RS_CCFF_75_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_74_Q),
		.Q(RS_CCFF_75_Q),
		.MEMB(mem_outb[75]),
		.MEM(mem_out[75]));

	RS_CCFF RS_CCFF_76_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_75_Q),
		.Q(RS_CCFF_76_Q),
		.MEMB(mem_outb[76]),
		.MEM(mem_out[76]));

	RS_CCFF RS_CCFF_77_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_76_Q),
		.Q(RS_CCFF_77_Q),
		.MEMB(mem_outb[77]),
		.MEM(mem_out[77]));

	RS_CCFF RS_CCFF_78_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_77_Q),
		.Q(RS_CCFF_78_Q),
		.MEMB(mem_outb[78]),
		.MEM(mem_out[78]));

	RS_CCFF RS_CCFF_79_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_78_Q),
		.Q(RS_CCFF_79_Q),
		.MEMB(mem_outb[79]),
		.MEM(mem_out[79]));

	RS_CCFF RS_CCFF_80_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_79_Q),
		.Q(RS_CCFF_80_Q),
		.MEMB(mem_outb[80]),
		.MEM(mem_out[80]));

	RS_CCFF RS_CCFF_81_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_80_Q),
		.Q(RS_CCFF_81_Q),
		.MEMB(mem_outb[81]),
		.MEM(mem_out[81]));

	RS_CCFF RS_CCFF_82_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_81_Q),
		.Q(RS_CCFF_82_Q),
		.MEMB(mem_outb[82]),
		.MEM(mem_out[82]));

	RS_CCFF RS_CCFF_83_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_82_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[83]),
		.MEM(mem_out[83]));

endmodule
// ----- END Verilog module for RS_DSP_RS_CCFF_mem -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype wire

// ----- Verilog module for RS_BRAM_RS_CCFF_mem -----
module RS_BRAM_RS_CCFF_mem(config_enable,
                           prog_clock,
                           ccff_head,
                           ccff_tail,
                           mem_out,
                           mem_outb);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- OUTPUT PORTS -----
output [0:80] mem_out;
//----- OUTPUT PORTS -----
output [0:80] mem_outb;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_CCFF RS_CCFF_0_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(ccff_head),
		.Q(RS_CCFF_0_Q),
		.MEMB(mem_outb[0]),
		.MEM(mem_out[0]));

	RS_CCFF RS_CCFF_1_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_0_Q),
		.Q(RS_CCFF_1_Q),
		.MEMB(mem_outb[1]),
		.MEM(mem_out[1]));

	RS_CCFF RS_CCFF_2_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_1_Q),
		.Q(RS_CCFF_2_Q),
		.MEMB(mem_outb[2]),
		.MEM(mem_out[2]));

	RS_CCFF RS_CCFF_3_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_2_Q),
		.Q(RS_CCFF_3_Q),
		.MEMB(mem_outb[3]),
		.MEM(mem_out[3]));

	RS_CCFF RS_CCFF_4_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_3_Q),
		.Q(RS_CCFF_4_Q),
		.MEMB(mem_outb[4]),
		.MEM(mem_out[4]));

	RS_CCFF RS_CCFF_5_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_4_Q),
		.Q(RS_CCFF_5_Q),
		.MEMB(mem_outb[5]),
		.MEM(mem_out[5]));

	RS_CCFF RS_CCFF_6_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_5_Q),
		.Q(RS_CCFF_6_Q),
		.MEMB(mem_outb[6]),
		.MEM(mem_out[6]));

	RS_CCFF RS_CCFF_7_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_6_Q),
		.Q(RS_CCFF_7_Q),
		.MEMB(mem_outb[7]),
		.MEM(mem_out[7]));

	RS_CCFF RS_CCFF_8_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_7_Q),
		.Q(RS_CCFF_8_Q),
		.MEMB(mem_outb[8]),
		.MEM(mem_out[8]));

	RS_CCFF RS_CCFF_9_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_8_Q),
		.Q(RS_CCFF_9_Q),
		.MEMB(mem_outb[9]),
		.MEM(mem_out[9]));

	RS_CCFF RS_CCFF_10_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_9_Q),
		.Q(RS_CCFF_10_Q),
		.MEMB(mem_outb[10]),
		.MEM(mem_out[10]));

	RS_CCFF RS_CCFF_11_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_10_Q),
		.Q(RS_CCFF_11_Q),
		.MEMB(mem_outb[11]),
		.MEM(mem_out[11]));

	RS_CCFF RS_CCFF_12_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_11_Q),
		.Q(RS_CCFF_12_Q),
		.MEMB(mem_outb[12]),
		.MEM(mem_out[12]));

	RS_CCFF RS_CCFF_13_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_12_Q),
		.Q(RS_CCFF_13_Q),
		.MEMB(mem_outb[13]),
		.MEM(mem_out[13]));

	RS_CCFF RS_CCFF_14_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_13_Q),
		.Q(RS_CCFF_14_Q),
		.MEMB(mem_outb[14]),
		.MEM(mem_out[14]));

	RS_CCFF RS_CCFF_15_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_14_Q),
		.Q(RS_CCFF_15_Q),
		.MEMB(mem_outb[15]),
		.MEM(mem_out[15]));

	RS_CCFF RS_CCFF_16_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_15_Q),
		.Q(RS_CCFF_16_Q),
		.MEMB(mem_outb[16]),
		.MEM(mem_out[16]));

	RS_CCFF RS_CCFF_17_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_16_Q),
		.Q(RS_CCFF_17_Q),
		.MEMB(mem_outb[17]),
		.MEM(mem_out[17]));

	RS_CCFF RS_CCFF_18_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_17_Q),
		.Q(RS_CCFF_18_Q),
		.MEMB(mem_outb[18]),
		.MEM(mem_out[18]));

	RS_CCFF RS_CCFF_19_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_18_Q),
		.Q(RS_CCFF_19_Q),
		.MEMB(mem_outb[19]),
		.MEM(mem_out[19]));

	RS_CCFF RS_CCFF_20_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_19_Q),
		.Q(RS_CCFF_20_Q),
		.MEMB(mem_outb[20]),
		.MEM(mem_out[20]));

	RS_CCFF RS_CCFF_21_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_20_Q),
		.Q(RS_CCFF_21_Q),
		.MEMB(mem_outb[21]),
		.MEM(mem_out[21]));

	RS_CCFF RS_CCFF_22_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_21_Q),
		.Q(RS_CCFF_22_Q),
		.MEMB(mem_outb[22]),
		.MEM(mem_out[22]));

	RS_CCFF RS_CCFF_23_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_22_Q),
		.Q(RS_CCFF_23_Q),
		.MEMB(mem_outb[23]),
		.MEM(mem_out[23]));

	RS_CCFF RS_CCFF_24_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_23_Q),
		.Q(RS_CCFF_24_Q),
		.MEMB(mem_outb[24]),
		.MEM(mem_out[24]));

	RS_CCFF RS_CCFF_25_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_24_Q),
		.Q(RS_CCFF_25_Q),
		.MEMB(mem_outb[25]),
		.MEM(mem_out[25]));

	RS_CCFF RS_CCFF_26_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_25_Q),
		.Q(RS_CCFF_26_Q),
		.MEMB(mem_outb[26]),
		.MEM(mem_out[26]));

	RS_CCFF RS_CCFF_27_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_26_Q),
		.Q(RS_CCFF_27_Q),
		.MEMB(mem_outb[27]),
		.MEM(mem_out[27]));

	RS_CCFF RS_CCFF_28_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_27_Q),
		.Q(RS_CCFF_28_Q),
		.MEMB(mem_outb[28]),
		.MEM(mem_out[28]));

	RS_CCFF RS_CCFF_29_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_28_Q),
		.Q(RS_CCFF_29_Q),
		.MEMB(mem_outb[29]),
		.MEM(mem_out[29]));

	RS_CCFF RS_CCFF_30_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_29_Q),
		.Q(RS_CCFF_30_Q),
		.MEMB(mem_outb[30]),
		.MEM(mem_out[30]));

	RS_CCFF RS_CCFF_31_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_30_Q),
		.Q(RS_CCFF_31_Q),
		.MEMB(mem_outb[31]),
		.MEM(mem_out[31]));

	RS_CCFF RS_CCFF_32_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_31_Q),
		.Q(RS_CCFF_32_Q),
		.MEMB(mem_outb[32]),
		.MEM(mem_out[32]));

	RS_CCFF RS_CCFF_33_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_32_Q),
		.Q(RS_CCFF_33_Q),
		.MEMB(mem_outb[33]),
		.MEM(mem_out[33]));

	RS_CCFF RS_CCFF_34_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_33_Q),
		.Q(RS_CCFF_34_Q),
		.MEMB(mem_outb[34]),
		.MEM(mem_out[34]));

	RS_CCFF RS_CCFF_35_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_34_Q),
		.Q(RS_CCFF_35_Q),
		.MEMB(mem_outb[35]),
		.MEM(mem_out[35]));

	RS_CCFF RS_CCFF_36_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_35_Q),
		.Q(RS_CCFF_36_Q),
		.MEMB(mem_outb[36]),
		.MEM(mem_out[36]));

	RS_CCFF RS_CCFF_37_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_36_Q),
		.Q(RS_CCFF_37_Q),
		.MEMB(mem_outb[37]),
		.MEM(mem_out[37]));

	RS_CCFF RS_CCFF_38_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_37_Q),
		.Q(RS_CCFF_38_Q),
		.MEMB(mem_outb[38]),
		.MEM(mem_out[38]));

	RS_CCFF RS_CCFF_39_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_38_Q),
		.Q(RS_CCFF_39_Q),
		.MEMB(mem_outb[39]),
		.MEM(mem_out[39]));

	RS_CCFF RS_CCFF_40_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_39_Q),
		.Q(RS_CCFF_40_Q),
		.MEMB(mem_outb[40]),
		.MEM(mem_out[40]));

	RS_CCFF RS_CCFF_41_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_40_Q),
		.Q(RS_CCFF_41_Q),
		.MEMB(mem_outb[41]),
		.MEM(mem_out[41]));

	RS_CCFF RS_CCFF_42_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_41_Q),
		.Q(RS_CCFF_42_Q),
		.MEMB(mem_outb[42]),
		.MEM(mem_out[42]));

	RS_CCFF RS_CCFF_43_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_42_Q),
		.Q(RS_CCFF_43_Q),
		.MEMB(mem_outb[43]),
		.MEM(mem_out[43]));

	RS_CCFF RS_CCFF_44_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_43_Q),
		.Q(RS_CCFF_44_Q),
		.MEMB(mem_outb[44]),
		.MEM(mem_out[44]));

	RS_CCFF RS_CCFF_45_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_44_Q),
		.Q(RS_CCFF_45_Q),
		.MEMB(mem_outb[45]),
		.MEM(mem_out[45]));

	RS_CCFF RS_CCFF_46_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_45_Q),
		.Q(RS_CCFF_46_Q),
		.MEMB(mem_outb[46]),
		.MEM(mem_out[46]));

	RS_CCFF RS_CCFF_47_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_46_Q),
		.Q(RS_CCFF_47_Q),
		.MEMB(mem_outb[47]),
		.MEM(mem_out[47]));

	RS_CCFF RS_CCFF_48_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_47_Q),
		.Q(RS_CCFF_48_Q),
		.MEMB(mem_outb[48]),
		.MEM(mem_out[48]));

	RS_CCFF RS_CCFF_49_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_48_Q),
		.Q(RS_CCFF_49_Q),
		.MEMB(mem_outb[49]),
		.MEM(mem_out[49]));

	RS_CCFF RS_CCFF_50_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_49_Q),
		.Q(RS_CCFF_50_Q),
		.MEMB(mem_outb[50]),
		.MEM(mem_out[50]));

	RS_CCFF RS_CCFF_51_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_50_Q),
		.Q(RS_CCFF_51_Q),
		.MEMB(mem_outb[51]),
		.MEM(mem_out[51]));

	RS_CCFF RS_CCFF_52_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_51_Q),
		.Q(RS_CCFF_52_Q),
		.MEMB(mem_outb[52]),
		.MEM(mem_out[52]));

	RS_CCFF RS_CCFF_53_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_52_Q),
		.Q(RS_CCFF_53_Q),
		.MEMB(mem_outb[53]),
		.MEM(mem_out[53]));

	RS_CCFF RS_CCFF_54_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_53_Q),
		.Q(RS_CCFF_54_Q),
		.MEMB(mem_outb[54]),
		.MEM(mem_out[54]));

	RS_CCFF RS_CCFF_55_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_54_Q),
		.Q(RS_CCFF_55_Q),
		.MEMB(mem_outb[55]),
		.MEM(mem_out[55]));

	RS_CCFF RS_CCFF_56_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_55_Q),
		.Q(RS_CCFF_56_Q),
		.MEMB(mem_outb[56]),
		.MEM(mem_out[56]));

	RS_CCFF RS_CCFF_57_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_56_Q),
		.Q(RS_CCFF_57_Q),
		.MEMB(mem_outb[57]),
		.MEM(mem_out[57]));

	RS_CCFF RS_CCFF_58_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_57_Q),
		.Q(RS_CCFF_58_Q),
		.MEMB(mem_outb[58]),
		.MEM(mem_out[58]));

	RS_CCFF RS_CCFF_59_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_58_Q),
		.Q(RS_CCFF_59_Q),
		.MEMB(mem_outb[59]),
		.MEM(mem_out[59]));

	RS_CCFF RS_CCFF_60_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_59_Q),
		.Q(RS_CCFF_60_Q),
		.MEMB(mem_outb[60]),
		.MEM(mem_out[60]));

	RS_CCFF RS_CCFF_61_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_60_Q),
		.Q(RS_CCFF_61_Q),
		.MEMB(mem_outb[61]),
		.MEM(mem_out[61]));

	RS_CCFF RS_CCFF_62_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_61_Q),
		.Q(RS_CCFF_62_Q),
		.MEMB(mem_outb[62]),
		.MEM(mem_out[62]));

	RS_CCFF RS_CCFF_63_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_62_Q),
		.Q(RS_CCFF_63_Q),
		.MEMB(mem_outb[63]),
		.MEM(mem_out[63]));

	RS_CCFF RS_CCFF_64_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_63_Q),
		.Q(RS_CCFF_64_Q),
		.MEMB(mem_outb[64]),
		.MEM(mem_out[64]));

	RS_CCFF RS_CCFF_65_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_64_Q),
		.Q(RS_CCFF_65_Q),
		.MEMB(mem_outb[65]),
		.MEM(mem_out[65]));

	RS_CCFF RS_CCFF_66_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_65_Q),
		.Q(RS_CCFF_66_Q),
		.MEMB(mem_outb[66]),
		.MEM(mem_out[66]));

	RS_CCFF RS_CCFF_67_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_66_Q),
		.Q(RS_CCFF_67_Q),
		.MEMB(mem_outb[67]),
		.MEM(mem_out[67]));

	RS_CCFF RS_CCFF_68_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_67_Q),
		.Q(RS_CCFF_68_Q),
		.MEMB(mem_outb[68]),
		.MEM(mem_out[68]));

	RS_CCFF RS_CCFF_69_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_68_Q),
		.Q(RS_CCFF_69_Q),
		.MEMB(mem_outb[69]),
		.MEM(mem_out[69]));

	RS_CCFF RS_CCFF_70_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_69_Q),
		.Q(RS_CCFF_70_Q),
		.MEMB(mem_outb[70]),
		.MEM(mem_out[70]));

	RS_CCFF RS_CCFF_71_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_70_Q),
		.Q(RS_CCFF_71_Q),
		.MEMB(mem_outb[71]),
		.MEM(mem_out[71]));

	RS_CCFF RS_CCFF_72_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_71_Q),
		.Q(RS_CCFF_72_Q),
		.MEMB(mem_outb[72]),
		.MEM(mem_out[72]));

	RS_CCFF RS_CCFF_73_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_72_Q),
		.Q(RS_CCFF_73_Q),
		.MEMB(mem_outb[73]),
		.MEM(mem_out[73]));

	RS_CCFF RS_CCFF_74_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_73_Q),
		.Q(RS_CCFF_74_Q),
		.MEMB(mem_outb[74]),
		.MEM(mem_out[74]));

	RS_CCFF RS_CCFF_75_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_74_Q),
		.Q(RS_CCFF_75_Q),
		.MEMB(mem_outb[75]),
		.MEM(mem_out[75]));

	RS_CCFF RS_CCFF_76_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_75_Q),
		.Q(RS_CCFF_76_Q),
		.MEMB(mem_outb[76]),
		.MEM(mem_out[76]));

	RS_CCFF RS_CCFF_77_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_76_Q),
		.Q(RS_CCFF_77_Q),
		.MEMB(mem_outb[77]),
		.MEM(mem_out[77]));

	RS_CCFF RS_CCFF_78_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_77_Q),
		.Q(RS_CCFF_78_Q),
		.MEMB(mem_outb[78]),
		.MEM(mem_out[78]));

	RS_CCFF RS_CCFF_79_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_78_Q),
		.Q(RS_CCFF_79_Q),
		.MEMB(mem_outb[79]),
		.MEM(mem_out[79]));

	RS_CCFF RS_CCFF_80_ (
		.CFG_EN(config_enable),
		.CK(prog_clock),
		.D(RS_CCFF_79_Q),
		.Q(ccff_tail),
		.MEMB(mem_outb[80]),
		.MEM(mem_out[80]));

endmodule
// ----- END Verilog module for RS_BRAM_RS_CCFF_mem -----

//----- Default net type -----
`default_nettype none




