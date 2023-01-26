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

// ----- Verilog module for logical_tile_io_corner_mode_physical__iopad_mode_default__ff -----
module logical_tile_io_corner_mode_physical__iopad_mode_default__ff(global_reset,
                                                                    scan_mode,
                                                                    scan_enable,
                                                                    config_enable,
                                                                    prog_clock,
                                                                    ff_D,
                                                                    ff_SI,
                                                                    ccff_head,
                                                                    ff_Q,
                                                                    ccff_tail,
                                                                    ff_clk);
//----- GLOBAL PORTS -----
input [0:0] global_reset;
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] ff_D;
//----- INPUT PORTS -----
input [0:0] ff_SI;
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

	RS_IOFF RS_IOFF_0_ (
		.G_RESET(global_reset),
		.SCAN_MODE(scan_mode),
		.SCAN_ENABLE(scan_enable),
		.D(ff_D),
		.SI(ff_SI),
		.CK(ff_clk),
		.MODE_SEL(RS_IOFF_0_mode),
		.Q(ff_Q));

	RS_IOFF_RS_CCFF_mem RS_IOFF_RS_CCFF_mem (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(RS_IOFF_0_mode),
		.mem_outb(RS_IOFF_RS_CCFF_mem_undriven_mem_outb));

endmodule
// ----- END Verilog module for logical_tile_io_corner_mode_physical__iopad_mode_default__ff -----

//----- Default net type -----
`default_nettype none



