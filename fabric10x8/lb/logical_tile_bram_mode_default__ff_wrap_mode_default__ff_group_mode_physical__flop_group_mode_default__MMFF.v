//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: MMFF
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF -----
module logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF(scan_enable,
                                                                                                                   global_reset,
                                                                                                                   scan_mode,
                                                                                                                   config_enable,
                                                                                                                   prog_clock,
                                                                                                                   MMFF_D,
                                                                                                                   MMFF_R,
                                                                                                                   MMFF_E,
                                                                                                                   MMFF_SI,
                                                                                                                   ccff_head,
                                                                                                                   MMFF_Q,
                                                                                                                   MMFF_SO,
                                                                                                                   ccff_tail,
                                                                                                                   MMFF_C);
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
input [0:0] MMFF_D;
//----- INPUT PORTS -----
input [0:0] MMFF_R;
//----- INPUT PORTS -----
input [0:0] MMFF_E;
//----- INPUT PORTS -----
input [0:0] MMFF_SI;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] MMFF_Q;
//----- OUTPUT PORTS -----
output [0:0] MMFF_SO;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- CLOCK PORTS -----
input [0:0] MMFF_C;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:4] MMFF_0_mode;
wire [0:4] MMFF_RS_CCFF_mem_undriven_mem_outb;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	MMFF MMFF_0_ (
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.din(MMFF_D),
		.scan_in(MMFF_SI),
		.reset(MMFF_R),
		.enable(MMFF_E),
		.clock(MMFF_C),
		.mode(MMFF_0_mode[0:4]),
		.scan_out(MMFF_SO),
		.out(MMFF_Q));

	MMFF_RS_CCFF_mem MMFF_RS_CCFF_mem (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(MMFF_0_mode[0:4]),
		.mem_outb(MMFF_RS_CCFF_mem_undriven_mem_outb[0:4]));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__ff_wrap_mode_default__ff_group_mode_physical__flop_group_mode_default__MMFF -----

//----- Default net type -----
`default_nettype none



