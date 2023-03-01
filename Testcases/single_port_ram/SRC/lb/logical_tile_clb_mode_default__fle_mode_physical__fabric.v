//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: fabric
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: fabric -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric -----
module logical_tile_clb_mode_default__fle_mode_physical__fabric(config_enable,
                                                                prog_clock,
                                                                fabric_in,
                                                                fabric_cin,
                                                                fabric_sc_in,
                                                                fabric_reset,
                                                                fabric_enable,
                                                                fabric_clk,
                                                                ccff_head,
                                                                fabric_out,
                                                                fabric_cout,
                                                                fabric_sc_out,
                                                                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:5] fabric_in;
//----- INPUT PORTS -----
input [0:0] fabric_cin;
//----- INPUT PORTS -----
input [0:0] fabric_sc_in;
//----- INPUT PORTS -----
input [0:0] fabric_reset;
//----- INPUT PORTS -----
input [0:0] fabric_enable;
//----- INPUT PORTS -----
input [0:0] fabric_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:1] fabric_out;
//----- OUTPUT PORTS -----
output [0:0] fabric_cout;
//----- OUTPUT PORTS -----
output [0:0] fabric_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.frac_logic_in({direct_interc_2_out, direct_interc_3_out, direct_interc_4_out, direct_interc_5_out, direct_interc_6_out, direct_interc_7_out}),
		.frac_logic_cin(direct_interc_8_out),
		.ccff_head(ccff_head),
		.frac_logic_cout(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_cout),
		.frac_logic_out(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0:1]),
		.ccff_tail(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail));

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_0 (
		.ff_phy_D(direct_interc_9_out),
		.ff_phy_SI(direct_interc_10_out),
		.ff_phy_R(direct_interc_11_out),
		.ff_phy_E(direct_interc_12_out),
		.ff_phy_SO(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_0_ff_phy_SO),
		.ff_phy_Q(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_0_ff_phy_Q),
		.ff_phy_C(direct_interc_13_out));

	logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_1 (
		.ff_phy_D(direct_interc_14_out),
		.ff_phy_SI(direct_interc_15_out),
		.ff_phy_R(direct_interc_16_out),
		.ff_phy_E(direct_interc_17_out),
		.ff_phy_SO(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_1_ff_phy_SO),
		.ff_phy_Q(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_1_ff_phy_Q),
		.ff_phy_C(direct_interc_18_out));

	mux_1level_fabric_size2 mux_fabric_out_0 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0], logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_0_ff_phy_Q}),
		.sram(mux_1level_fabric_size2_0_sram),
		.sram_inv(mux_1level_fabric_size2_0_sram_inv),
		.out(fabric_out[0]));

	mux_1level_fabric_size2 mux_fabric_out_1 (
		.in({logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[1], logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_1_ff_phy_Q}),
		.sram(mux_1level_fabric_size2_1_sram),
		.sram_inv(mux_1level_fabric_size2_1_sram_inv),
		.out(fabric_out[1]));

	mux_1level_fabric_size2_mem mem_fabric_out_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_ccff_tail),
		.ccff_tail(mux_1level_fabric_size2_mem_0_ccff_tail),
		.mem_out(mux_1level_fabric_size2_0_sram),
		.mem_outb(mux_1level_fabric_size2_0_sram_inv));

	mux_1level_fabric_size2_mem mem_fabric_out_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_1level_fabric_size2_mem_0_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_1level_fabric_size2_1_sram),
		.mem_outb(mux_1level_fabric_size2_1_sram_inv));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_cout),
		.out(fabric_cout));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_1_ff_phy_SO),
		.out(fabric_sc_out));

	direct_interc direct_interc_2_ (
		.in(fabric_in[0]),
		.out(direct_interc_2_out));

	direct_interc direct_interc_3_ (
		.in(fabric_in[1]),
		.out(direct_interc_3_out));

	direct_interc direct_interc_4_ (
		.in(fabric_in[2]),
		.out(direct_interc_4_out));

	direct_interc direct_interc_5_ (
		.in(fabric_in[3]),
		.out(direct_interc_5_out));

	direct_interc direct_interc_6_ (
		.in(fabric_in[4]),
		.out(direct_interc_6_out));

	direct_interc direct_interc_7_ (
		.in(fabric_in[5]),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(fabric_cin),
		.out(direct_interc_8_out));

	direct_interc direct_interc_9_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[0]),
		.out(direct_interc_9_out));

	direct_interc direct_interc_10_ (
		.in(fabric_sc_in),
		.out(direct_interc_10_out));

	direct_interc direct_interc_11_ (
		.in(fabric_reset),
		.out(direct_interc_11_out));

	direct_interc direct_interc_12_ (
		.in(fabric_enable),
		.out(direct_interc_12_out));

	direct_interc direct_interc_13_ (
		.in(fabric_clk),
		.out(direct_interc_13_out));

	direct_interc direct_interc_14_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_0_frac_logic_out[1]),
		.out(direct_interc_14_out));

	direct_interc direct_interc_15_ (
		.in(logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy_0_ff_phy_SO),
		.out(direct_interc_15_out));

	direct_interc direct_interc_16_ (
		.in(fabric_reset),
		.out(direct_interc_16_out));

	direct_interc direct_interc_17_ (
		.in(fabric_enable),
		.out(direct_interc_17_out));

	direct_interc direct_interc_18_ (
		.in(fabric_clk),
		.out(direct_interc_18_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: fabric -----
