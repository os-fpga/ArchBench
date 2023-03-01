//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: ff
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_io_mode_physical__iopad_mode_default__ff -----
module logical_tile_io_mode_physical__iopad_mode_default__ff(test_en,
                                                             scan_mode,
                                                             scan_clk,
                                                             config_enable,
                                                             prog_clock,
                                                             ff_D,
                                                             ff_SI,
                                                             ff_reset,
                                                             ccff_head,
                                                             ff_Q,
                                                             ccff_tail,
                                                             ff_clk);
//----- GLOBAL PORTS -----
input [0:0] test_en;
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] scan_clk;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ff_D;
//----- INPUT PORTS -----
input [0:0] ff_SI;
//----- INPUT PORTS -----
input [0:0] ff_reset;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] ff_Q;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- CLOCK PORTS -----
input [0:0] ff_clk;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	QL_IOFF QL_IOFF_0_ (
		.SE(test_en),
		.SCAN_MODE(scan_mode),
		.SCAN_CLK(scan_clk),
		.D(ff_D),
		.SI(ff_SI),
		.R(ff_reset),
		.CK(ff_clk),
		.MODE_SEL(QL_IOFF_0_mode),
		.Q(ff_Q));

	QL_IOFF_RS_CCFF_mem QL_IOFF_RS_CCFF_mem (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(QL_IOFF_0_mode),
		.mem_outb(QL_IOFF_RS_CCFF_mem_undriven_mem_outb));

endmodule
// ----- END Verilog module for logical_tile_io_mode_physical__iopad_mode_default__ff -----

//----- Default net type -----
`default_nettype none



