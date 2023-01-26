//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: opt
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: opt -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_dsp_mode_default__opt -----
module logical_tile_dsp_mode_default__opt(config_enable,
                                          prog_clock,
                                          opt_I,
                                          ccff_head,
                                          opt_O,
                                          ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:20] opt_I;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:20] opt_O;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:4] mux_tree_size23_0_sram;
wire [0:4] mux_tree_size23_0_sram_inv;
wire [0:4] mux_tree_size23_10_sram;
wire [0:4] mux_tree_size23_10_sram_inv;
wire [0:4] mux_tree_size23_11_sram;
wire [0:4] mux_tree_size23_11_sram_inv;
wire [0:4] mux_tree_size23_12_sram;
wire [0:4] mux_tree_size23_12_sram_inv;
wire [0:4] mux_tree_size23_13_sram;
wire [0:4] mux_tree_size23_13_sram_inv;
wire [0:4] mux_tree_size23_14_sram;
wire [0:4] mux_tree_size23_14_sram_inv;
wire [0:4] mux_tree_size23_15_sram;
wire [0:4] mux_tree_size23_15_sram_inv;
wire [0:4] mux_tree_size23_16_sram;
wire [0:4] mux_tree_size23_16_sram_inv;
wire [0:4] mux_tree_size23_17_sram;
wire [0:4] mux_tree_size23_17_sram_inv;
wire [0:4] mux_tree_size23_18_sram;
wire [0:4] mux_tree_size23_18_sram_inv;
wire [0:4] mux_tree_size23_19_sram;
wire [0:4] mux_tree_size23_19_sram_inv;
wire [0:4] mux_tree_size23_1_sram;
wire [0:4] mux_tree_size23_1_sram_inv;
wire [0:4] mux_tree_size23_20_sram;
wire [0:4] mux_tree_size23_20_sram_inv;
wire [0:4] mux_tree_size23_2_sram;
wire [0:4] mux_tree_size23_2_sram_inv;
wire [0:4] mux_tree_size23_3_sram;
wire [0:4] mux_tree_size23_3_sram_inv;
wire [0:4] mux_tree_size23_4_sram;
wire [0:4] mux_tree_size23_4_sram_inv;
wire [0:4] mux_tree_size23_5_sram;
wire [0:4] mux_tree_size23_5_sram_inv;
wire [0:4] mux_tree_size23_6_sram;
wire [0:4] mux_tree_size23_6_sram_inv;
wire [0:4] mux_tree_size23_7_sram;
wire [0:4] mux_tree_size23_7_sram_inv;
wire [0:4] mux_tree_size23_8_sram;
wire [0:4] mux_tree_size23_8_sram_inv;
wire [0:4] mux_tree_size23_9_sram;
wire [0:4] mux_tree_size23_9_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_dsp_mode_default__opt_mode_default__logic0 logical_tile_dsp_mode_default__opt_mode_default__logic0_0 (
		.logic0_logic0(logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0));

	logical_tile_dsp_mode_default__opt_mode_default__logic1 logical_tile_dsp_mode_default__opt_mode_default__logic1_0 (
		.logic1_logic1(logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1));

	mux_tree_size23 mux_opt_O_0 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_0_sram[0:4]),
		.sram_inv(mux_tree_size23_0_sram_inv[0:4]),
		.out(opt_O[0]));

	mux_tree_size23 mux_opt_O_1 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_1_sram[0:4]),
		.sram_inv(mux_tree_size23_1_sram_inv[0:4]),
		.out(opt_O[1]));

	mux_tree_size23 mux_opt_O_2 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_2_sram[0:4]),
		.sram_inv(mux_tree_size23_2_sram_inv[0:4]),
		.out(opt_O[2]));

	mux_tree_size23 mux_opt_O_3 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_3_sram[0:4]),
		.sram_inv(mux_tree_size23_3_sram_inv[0:4]),
		.out(opt_O[3]));

	mux_tree_size23 mux_opt_O_4 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_4_sram[0:4]),
		.sram_inv(mux_tree_size23_4_sram_inv[0:4]),
		.out(opt_O[4]));

	mux_tree_size23 mux_opt_O_5 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_5_sram[0:4]),
		.sram_inv(mux_tree_size23_5_sram_inv[0:4]),
		.out(opt_O[5]));

	mux_tree_size23 mux_opt_O_6 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_6_sram[0:4]),
		.sram_inv(mux_tree_size23_6_sram_inv[0:4]),
		.out(opt_O[6]));

	mux_tree_size23 mux_opt_O_7 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_7_sram[0:4]),
		.sram_inv(mux_tree_size23_7_sram_inv[0:4]),
		.out(opt_O[7]));

	mux_tree_size23 mux_opt_O_8 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_8_sram[0:4]),
		.sram_inv(mux_tree_size23_8_sram_inv[0:4]),
		.out(opt_O[8]));

	mux_tree_size23 mux_opt_O_9 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_9_sram[0:4]),
		.sram_inv(mux_tree_size23_9_sram_inv[0:4]),
		.out(opt_O[9]));

	mux_tree_size23 mux_opt_O_10 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_10_sram[0:4]),
		.sram_inv(mux_tree_size23_10_sram_inv[0:4]),
		.out(opt_O[10]));

	mux_tree_size23 mux_opt_O_11 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_11_sram[0:4]),
		.sram_inv(mux_tree_size23_11_sram_inv[0:4]),
		.out(opt_O[11]));

	mux_tree_size23 mux_opt_O_12 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_12_sram[0:4]),
		.sram_inv(mux_tree_size23_12_sram_inv[0:4]),
		.out(opt_O[12]));

	mux_tree_size23 mux_opt_O_13 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_13_sram[0:4]),
		.sram_inv(mux_tree_size23_13_sram_inv[0:4]),
		.out(opt_O[13]));

	mux_tree_size23 mux_opt_O_14 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_14_sram[0:4]),
		.sram_inv(mux_tree_size23_14_sram_inv[0:4]),
		.out(opt_O[14]));

	mux_tree_size23 mux_opt_O_15 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_15_sram[0:4]),
		.sram_inv(mux_tree_size23_15_sram_inv[0:4]),
		.out(opt_O[15]));

	mux_tree_size23 mux_opt_O_16 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_16_sram[0:4]),
		.sram_inv(mux_tree_size23_16_sram_inv[0:4]),
		.out(opt_O[16]));

	mux_tree_size23 mux_opt_O_17 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_17_sram[0:4]),
		.sram_inv(mux_tree_size23_17_sram_inv[0:4]),
		.out(opt_O[17]));

	mux_tree_size23 mux_opt_O_18 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_18_sram[0:4]),
		.sram_inv(mux_tree_size23_18_sram_inv[0:4]),
		.out(opt_O[18]));

	mux_tree_size23 mux_opt_O_19 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_19_sram[0:4]),
		.sram_inv(mux_tree_size23_19_sram_inv[0:4]),
		.out(opt_O[19]));

	mux_tree_size23 mux_opt_O_20 (
		.in({opt_I[0:20], logical_tile_dsp_mode_default__opt_mode_default__logic0_0_logic0_logic0, logical_tile_dsp_mode_default__opt_mode_default__logic1_0_logic1_logic1}),
		.sram(mux_tree_size23_20_sram[0:4]),
		.sram_inv(mux_tree_size23_20_sram_inv[0:4]),
		.out(opt_O[20]));

	mux_tree_size23_mem mem_opt_O_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(mux_tree_size23_mem_0_ccff_tail),
		.mem_out(mux_tree_size23_0_sram[0:4]),
		.mem_outb(mux_tree_size23_0_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_0_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_1_ccff_tail),
		.mem_out(mux_tree_size23_1_sram[0:4]),
		.mem_outb(mux_tree_size23_1_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_2 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_1_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_2_ccff_tail),
		.mem_out(mux_tree_size23_2_sram[0:4]),
		.mem_outb(mux_tree_size23_2_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_3 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_2_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_3_ccff_tail),
		.mem_out(mux_tree_size23_3_sram[0:4]),
		.mem_outb(mux_tree_size23_3_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_4 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_3_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_4_ccff_tail),
		.mem_out(mux_tree_size23_4_sram[0:4]),
		.mem_outb(mux_tree_size23_4_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_5 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_4_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_5_ccff_tail),
		.mem_out(mux_tree_size23_5_sram[0:4]),
		.mem_outb(mux_tree_size23_5_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_6 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_5_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_6_ccff_tail),
		.mem_out(mux_tree_size23_6_sram[0:4]),
		.mem_outb(mux_tree_size23_6_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_7 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_6_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_7_ccff_tail),
		.mem_out(mux_tree_size23_7_sram[0:4]),
		.mem_outb(mux_tree_size23_7_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_8 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_7_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_8_ccff_tail),
		.mem_out(mux_tree_size23_8_sram[0:4]),
		.mem_outb(mux_tree_size23_8_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_9 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_8_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_9_ccff_tail),
		.mem_out(mux_tree_size23_9_sram[0:4]),
		.mem_outb(mux_tree_size23_9_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_10 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_9_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_10_ccff_tail),
		.mem_out(mux_tree_size23_10_sram[0:4]),
		.mem_outb(mux_tree_size23_10_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_11 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_10_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_11_ccff_tail),
		.mem_out(mux_tree_size23_11_sram[0:4]),
		.mem_outb(mux_tree_size23_11_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_12 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_11_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_12_ccff_tail),
		.mem_out(mux_tree_size23_12_sram[0:4]),
		.mem_outb(mux_tree_size23_12_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_13 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_12_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_13_ccff_tail),
		.mem_out(mux_tree_size23_13_sram[0:4]),
		.mem_outb(mux_tree_size23_13_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_14 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_13_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_14_ccff_tail),
		.mem_out(mux_tree_size23_14_sram[0:4]),
		.mem_outb(mux_tree_size23_14_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_15 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_14_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_15_ccff_tail),
		.mem_out(mux_tree_size23_15_sram[0:4]),
		.mem_outb(mux_tree_size23_15_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_16 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_15_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_16_ccff_tail),
		.mem_out(mux_tree_size23_16_sram[0:4]),
		.mem_outb(mux_tree_size23_16_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_17 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_16_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_17_ccff_tail),
		.mem_out(mux_tree_size23_17_sram[0:4]),
		.mem_outb(mux_tree_size23_17_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_18 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_17_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_18_ccff_tail),
		.mem_out(mux_tree_size23_18_sram[0:4]),
		.mem_outb(mux_tree_size23_18_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_19 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_18_ccff_tail),
		.ccff_tail(mux_tree_size23_mem_19_ccff_tail),
		.mem_out(mux_tree_size23_19_sram[0:4]),
		.mem_outb(mux_tree_size23_19_sram_inv[0:4]));

	mux_tree_size23_mem mem_opt_O_20 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size23_mem_19_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size23_20_sram[0:4]),
		.mem_outb(mux_tree_size23_20_sram_inv[0:4]));

endmodule
// ----- END Verilog module for logical_tile_dsp_mode_default__opt -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: opt -----
