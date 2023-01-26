//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: clk_opt
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: clk_opt -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__clk_opt -----
module logical_tile_bram_mode_default__clk_opt(scan_mode,
                                               config_enable,
                                               prog_clock,
                                               clk_opt_I,
                                               ccff_head,
                                               clk_opt_O,
                                               ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] clk_opt_I;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] clk_opt_O;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_bram_mode_default__clk_opt_mode_default__clk_inv logical_tile_bram_mode_default__clk_opt_mode_default__clk_inv_0 (
		.scan_mode(scan_mode),
		.clk_inv_z(logical_tile_bram_mode_default__clk_opt_mode_default__clk_inv_0_clk_inv_z),
		.clk_inv_a(direct_interc_0_out));

	mux_tree_size2 mux_clk_opt_O_0 (
		.in({clk_opt_I, logical_tile_bram_mode_default__clk_opt_mode_default__clk_inv_0_clk_inv_z}),
		.sram(mux_tree_size2_0_sram),
		.sram_inv(mux_tree_size2_0_sram_inv),
		.out(clk_opt_O));

	mux_tree_size2_mem mem_clk_opt_O_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size2_0_sram),
		.mem_outb(mux_tree_size2_0_sram_inv));

	direct_interc direct_interc_0_ (
		.in(clk_opt_I),
		.out(direct_interc_0_out));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__clk_opt -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: clk_opt -----
