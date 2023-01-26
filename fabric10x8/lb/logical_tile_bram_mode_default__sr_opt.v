//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: sr_opt
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: sr_opt -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__sr_opt -----
module logical_tile_bram_mode_default__sr_opt(config_enable,
                                              prog_clock,
                                              sr_opt_I,
                                              ccff_head,
                                              sr_opt_O,
                                              ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] sr_opt_I;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] sr_opt_O;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_bram_mode_default__sr_opt_mode_default__sr_inv logical_tile_bram_mode_default__sr_opt_mode_default__sr_inv_0 (
		.sr_inv_a(direct_interc_0_out),
		.sr_inv_z(logical_tile_bram_mode_default__sr_opt_mode_default__sr_inv_0_sr_inv_z));

	mux_tree_size2 mux_sr_opt_O_0 (
		.in({sr_opt_I, logical_tile_bram_mode_default__sr_opt_mode_default__sr_inv_0_sr_inv_z}),
		.sram(mux_tree_size2_0_sram),
		.sram_inv(mux_tree_size2_0_sram_inv),
		.out(sr_opt_O));

	mux_tree_size2_mem mem_sr_opt_O_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size2_0_sram),
		.mem_outb(mux_tree_size2_0_sram_inv));

	direct_interc direct_interc_0_ (
		.in(sr_opt_I),
		.out(direct_interc_0_out));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__sr_opt -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: sr_opt -----
