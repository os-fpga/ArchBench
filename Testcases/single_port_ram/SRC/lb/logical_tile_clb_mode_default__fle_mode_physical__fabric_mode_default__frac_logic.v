//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: frac_logic
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: frac_logic -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic -----
module logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic(config_enable,
                                                                                         prog_clock,
                                                                                         frac_logic_in,
                                                                                         frac_logic_cin,
                                                                                         ccff_head,
                                                                                         frac_logic_cout,
                                                                                         frac_logic_out,
                                                                                         ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:5] frac_logic_in;
//----- INPUT PORTS -----
input [0:0] frac_logic_cin;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] frac_logic_cout;
//----- OUTPUT PORTS -----
output [0:1] frac_logic_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:3] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut4_out;
wire [0:1] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut5_out;
wire [0:1] mux_tree_size3_0_sram;
wire [0:1] mux_tree_size3_0_sram_inv;
wire [0:1] mux_tree_size4_0_sram;
wire [0:1] mux_tree_size4_0_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6 logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_lut6_in({direct_interc_1_out, direct_interc_2_out, direct_interc_3_out, direct_interc_4_out, direct_interc_5_out, direct_interc_6_out}),
		.ccff_head(ccff_head),
		.frac_lut6_lut4_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut4_out[0:3]),
		.frac_lut6_lut5_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut5_out[0:1]),
		.frac_lut6_lut6_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut6_out),
		.ccff_tail(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_ccff_tail));

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_0 (
		.adder_carry_p(direct_interc_7_out),
		.adder_carry_g(direct_interc_8_out),
		.adder_carry_cin(direct_interc_9_out),
		.adder_carry_sumout(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_0_adder_carry_sumout),
		.adder_carry_cout(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_0_adder_carry_cout));

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_1 (
		.adder_carry_p(direct_interc_10_out),
		.adder_carry_g(direct_interc_11_out),
		.adder_carry_cin(direct_interc_12_out),
		.adder_carry_sumout(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_1_adder_carry_sumout),
		.adder_carry_cout(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_1_adder_carry_cout));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_1_adder_carry_cout),
		.out(frac_logic_cout));

	direct_interc direct_interc_1_ (
		.in(frac_logic_in[0]),
		.out(direct_interc_1_out));

	direct_interc direct_interc_2_ (
		.in(frac_logic_in[1]),
		.out(direct_interc_2_out));

	direct_interc direct_interc_3_ (
		.in(frac_logic_in[2]),
		.out(direct_interc_3_out));

	direct_interc direct_interc_4_ (
		.in(frac_logic_in[3]),
		.out(direct_interc_4_out));

	direct_interc direct_interc_5_ (
		.in(frac_logic_in[4]),
		.out(direct_interc_5_out));

	direct_interc direct_interc_6_ (
		.in(frac_logic_in[5]),
		.out(direct_interc_6_out));

	direct_interc direct_interc_7_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut4_out[0]),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut4_out[1]),
		.out(direct_interc_8_out));

	direct_interc direct_interc_9_ (
		.in(frac_logic_cin),
		.out(direct_interc_9_out));

	direct_interc direct_interc_10_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut4_out[2]),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut4_out[3]),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_0_adder_carry_cout),
		.out(direct_interc_12_out));

	mux_tree_size3 mux_frac_logic_out_0 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_0_adder_carry_sumout, logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_0_adder_carry_cout, logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut5_out[0]}),
		.sram(mux_tree_size3_0_sram[0:1]),
		.sram_inv(mux_tree_size3_0_sram_inv[0:1]),
		.out(frac_logic_out[0]));

	mux_tree_size3_mem mem_frac_logic_out_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_ccff_tail),
		.ccff_tail(mux_tree_size3_mem_0_ccff_tail),
		.mem_out(mux_tree_size3_0_sram[0:1]),
		.mem_outb(mux_tree_size3_0_sram_inv[0:1]));

	mux_tree_size4 mux_frac_logic_out_1 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_1_adder_carry_sumout, logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry_1_adder_carry_cout, logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut5_out[1], logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__frac_lut6_0_frac_lut6_lut6_out}),
		.sram(mux_tree_size4_0_sram[0:1]),
		.sram_inv(mux_tree_size4_0_sram_inv[0:1]),
		.out(frac_logic_out[1]));

	mux_tree_size4_mem mem_frac_logic_out_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_tree_size3_mem_0_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_size4_0_sram[0:1]),
		.mem_outb(mux_tree_size4_0_sram_inv[0:1]));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: frac_logic -----
