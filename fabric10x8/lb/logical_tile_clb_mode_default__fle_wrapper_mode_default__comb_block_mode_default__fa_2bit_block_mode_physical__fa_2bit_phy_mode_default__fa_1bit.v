//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: fa_1bit
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit(config_enable,
                                                                                                                                                        prog_clock,
                                                                                                                                                        fa_1bit_p,
                                                                                                                                                        fa_1bit_g,
                                                                                                                                                        fa_1bit_cin,
                                                                                                                                                        ccff_head,
                                                                                                                                                        fa_1bit_sum,
                                                                                                                                                        fa_1bit_cout,
                                                                                                                                                        ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] fa_1bit_p;
//----- INPUT PORTS -----
input [0:0] fa_1bit_g;
//----- INPUT PORTS -----
input [0:0] fa_1bit_cin;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] fa_1bit_sum;
//----- OUTPUT PORTS -----
output [0:0] fa_1bit_cout;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	FA_1BIT FA_1BIT_0_ (
		.P(fa_1bit_p),
		.G(fa_1bit_g),
		.CI(fa_1bit_cin),
		.mode(FA_1BIT_0_mode),
		.SUM(fa_1bit_sum),
		.CO(fa_1bit_cout));

	FA_1BIT_RS_CCFF_mem FA_1BIT_RS_CCFF_mem (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(FA_1BIT_0_mode),
		.mem_outb(FA_1BIT_RS_CCFF_mem_undriven_mem_outb));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit -----

//----- Default net type -----
`default_nettype none



