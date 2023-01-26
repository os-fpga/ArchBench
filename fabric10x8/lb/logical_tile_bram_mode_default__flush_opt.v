//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: flush_opt
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: flush_opt -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__flush_opt -----
module logical_tile_bram_mode_default__flush_opt(config_enable,
                                                 prog_clock,
                                                 flush_opt_I,
                                                 ccff_head,
                                                 flush_opt_O,
                                                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:1] flush_opt_I;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:1] flush_opt_O;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] mux_tree_size4_0_sram;
wire [0:1] mux_tree_size4_0_sram_inv;
wire [0:1] mux_tree_size4_1_sram;
wire [0:1] mux_tree_size4_1_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_bram_mode_default__flush_opt_mode_default__logic0 logical_tile_bram_mode_default__flush_opt_mode_default__logic0_0 (
		.logic0_logic0(logical_tile_bram_mode_default__flush_opt_mode_default__logic0_0_logic0_logic0));

	logical_tile_bram_mode_default__flush_opt_mode_default__logic1 logical_tile_bram_mode_default__flush_opt_mode_default__logic1_0 (
		.logic1_logic1(logical_tile_bram_mode_default__flush_opt_mode_default__logic1_0_logic1_logic1));

	mux_tree_size4 mux_flush_opt_O_0 (
		.in({flush_opt_I[0:1], logical_tile_bram_mode_default__flush_opt_mode_default__logic0_0_logic0_logic0, logical_tile_bram_mode_default__flush_opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size4_0_sram[0:1]),
		.sram_inv(mux_tree_size4_0_sram_inv[0:1]),
		.out(flush_opt_O[0]));

	mux_tree_size4 mux_flush_opt_O_1 (
		.in({flush_opt_I[0:1], logical_tile_bram_mode_default__flush_opt_mode_default__logic0_0_logic0_logic0, logical_tile_bram_mode_default__flush_opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size4_1_sram[0:1]),
		.sram_inv(mux_tree_size4_1_sram_inv[0:1]),
		.out(flush_opt_O[1]));

	mux_tree_size4_mem mem_flush_opt_O_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(mux_tree_size4_mem_0_ccff_tail),
		.mem_out(mux_tree_size4_0_sram[0:1]),
		.mem_outb(mux_tree_size4_0_sram_inv[0:1]));

	mux_tree_size4_mem mem_flush_opt_O_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size4_mem_0_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size4_1_sram[0:1]),
		.mem_outb(mux_tree_size4_1_sram_inv[0:1]));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__flush_opt -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: flush_opt -----
