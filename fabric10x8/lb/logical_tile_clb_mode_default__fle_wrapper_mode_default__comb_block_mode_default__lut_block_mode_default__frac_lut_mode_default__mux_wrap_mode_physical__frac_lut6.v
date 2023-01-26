//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: frac_lut6
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6 -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6(config_enable,
                                                                                                                                                                          prog_clock,
                                                                                                                                                                          frac_lut6_in,
                                                                                                                                                                          ccff_head,
                                                                                                                                                                          frac_lut6_lut4_out,
                                                                                                                                                                          frac_lut6_lut5_out,
                                                                                                                                                                          frac_lut6_lut6_out,
                                                                                                                                                                          ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:5] frac_lut6_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:3] frac_lut6_lut4_out;
//----- OUTPUT PORTS -----
output [0:1] frac_lut6_lut5_out;
//----- OUTPUT PORTS -----
output [0:0] frac_lut6_lut6_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] frac_lut6_0_mode;
wire [0:1] frac_lut6_0_mode_inv;
wire [0:63] frac_lut6_0_sram;
wire [0:63] frac_lut6_0_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	frac_lut6 frac_lut6_0_ (
		.in(frac_lut6_in[0:5]),
		.sram(frac_lut6_0_sram[0:63]),
		.sram_inv(frac_lut6_0_sram_inv[0:63]),
		.mode(frac_lut6_0_mode[0:1]),
		.mode_inv(frac_lut6_0_mode_inv[0:1]),
		.lut4_out(frac_lut6_lut4_out[0:3]),
		.lut5_out(frac_lut6_lut5_out[0:1]),
		.lut6_out(frac_lut6_lut6_out));

	frac_lut6_RS_CCFF_mem frac_lut6_RS_CCFF_mem (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out({frac_lut6_0_sram[0:63], frac_lut6_0_mode[0:1]}),
		.mem_outb({frac_lut6_0_sram_inv[0:63], frac_lut6_0_mode_inv[0:1]}));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__lut_block_mode_default__frac_lut_mode_default__mux_wrap_mode_physical__frac_lut6 -----

//----- Default net type -----
`default_nettype none



