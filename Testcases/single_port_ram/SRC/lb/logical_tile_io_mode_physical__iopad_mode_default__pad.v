//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: pad
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_io_mode_physical__iopad_mode_default__pad -----
module logical_tile_io_mode_physical__iopad_mode_default__pad(CFG_DONE,
                                                              config_enable,
                                                              prog_clock,
                                                              gfpga_pad_QL_PREIO_A2F,
                                                              gfpga_pad_QL_PREIO_F2A,
                                                              gfpga_pad_QL_PREIO_F2A_DEF0,
                                                              gfpga_pad_QL_PREIO_F2A_DEF1,
                                                              gfpga_pad_QL_PREIO_F2A_CLK,
                                                              pad_outpad,
                                                              ccff_head,
                                                              pad_inpad,
                                                              ccff_tail,
                                                              pad_clk);
//----- GLOBAL PORTS -----
input [0:0] CFG_DONE;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- GPIN PORTS -----
input [0:0] gfpga_pad_QL_PREIO_A2F;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_QL_PREIO_F2A;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_QL_PREIO_F2A_DEF0;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_QL_PREIO_F2A_DEF1;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_QL_PREIO_F2A_CLK;
//----- INPUT PORTS -----
input [0:0] pad_outpad;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] pad_inpad;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- CLOCK PORTS -----
input [0:0] pad_clk;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:3] QL_PREIO_0_DEF;
wire [0:3] QL_PREIO_RS_CCFF_mem_undriven_mem_outb;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	QL_PREIO QL_PREIO_0_ (
		.CFG_DONE(CFG_DONE),
		.SOC_IN(gfpga_pad_QL_PREIO_A2F),
		.SOC_OUT(gfpga_pad_QL_PREIO_F2A),
		.F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0),
		.F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1),
		.F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK),
		.FPGA_OUT(pad_outpad),
		.CK(pad_clk),
		.DEF(QL_PREIO_0_DEF[0:3]),
		.FPGA_IN(pad_inpad));

	QL_PREIO_RS_CCFF_mem QL_PREIO_RS_CCFF_mem (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(QL_PREIO_0_DEF[0:3]),
		.mem_outb(QL_PREIO_RS_CCFF_mem_undriven_mem_outb[0:3]));

endmodule
// ----- END Verilog module for logical_tile_io_mode_physical__iopad_mode_default__pad -----

//----- Default net type -----
`default_nettype none



