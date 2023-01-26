//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for physical tile: clb]
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Grid Verilog module: grid_clb -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for grid_clb -----
module grid_clb(config_enable,
                prog_clock,
                scan_enable,
                global_reset,
                scan_mode,
                top_width_0_height_0_subtile_0__pin_I10_0_,
                top_width_0_height_0_subtile_0__pin_I10_1_,
                top_width_0_height_0_subtile_0__pin_I10_2_,
                top_width_0_height_0_subtile_0__pin_I10_3_,
                top_width_0_height_0_subtile_0__pin_I10_4_,
                top_width_0_height_0_subtile_0__pin_I10_5_,
                top_width_0_height_0_subtile_0__pin_I10_6_,
                top_width_0_height_0_subtile_0__pin_I10_7_,
                top_width_0_height_0_subtile_0__pin_I10_8_,
                top_width_0_height_0_subtile_0__pin_I10_9_,
                top_width_0_height_0_subtile_0__pin_I10_10_,
                top_width_0_height_0_subtile_0__pin_I10_11_,
                top_width_0_height_0_subtile_0__pin_I00_0_,
                top_width_0_height_0_subtile_0__pin_I00_1_,
                top_width_0_height_0_subtile_0__pin_I00_2_,
                top_width_0_height_0_subtile_0__pin_I00_3_,
                top_width_0_height_0_subtile_0__pin_I00_4_,
                top_width_0_height_0_subtile_0__pin_I00_5_,
                top_width_0_height_0_subtile_0__pin_I00_6_,
                top_width_0_height_0_subtile_0__pin_I00_7_,
                top_width_0_height_0_subtile_0__pin_I00_8_,
                top_width_0_height_0_subtile_0__pin_I00_9_,
                top_width_0_height_0_subtile_0__pin_I00_10_,
                top_width_0_height_0_subtile_0__pin_I00_11_,
                top_width_0_height_0_subtile_0__pin_IS0_0_,
                top_width_0_height_0_subtile_0__pin_IS0_1_,
                top_width_0_height_0_subtile_0__pin_IS0_2_,
                top_width_0_height_0_subtile_0__pin_cin_0_,
                top_width_0_height_0_subtile_0__pin_cascdn_i_0_,
                right_width_0_height_0_subtile_0__pin_I30_0_,
                right_width_0_height_0_subtile_0__pin_I30_1_,
                right_width_0_height_0_subtile_0__pin_I30_2_,
                right_width_0_height_0_subtile_0__pin_I30_3_,
                right_width_0_height_0_subtile_0__pin_I30_4_,
                right_width_0_height_0_subtile_0__pin_I30_5_,
                right_width_0_height_0_subtile_0__pin_I30_6_,
                right_width_0_height_0_subtile_0__pin_I30_7_,
                right_width_0_height_0_subtile_0__pin_I30_8_,
                right_width_0_height_0_subtile_0__pin_I30_9_,
                right_width_0_height_0_subtile_0__pin_I30_10_,
                right_width_0_height_0_subtile_0__pin_I30_11_,
                right_width_0_height_0_subtile_0__pin_I20_0_,
                right_width_0_height_0_subtile_0__pin_I20_1_,
                right_width_0_height_0_subtile_0__pin_I20_2_,
                right_width_0_height_0_subtile_0__pin_I20_3_,
                right_width_0_height_0_subtile_0__pin_I20_4_,
                right_width_0_height_0_subtile_0__pin_I20_5_,
                right_width_0_height_0_subtile_0__pin_I20_6_,
                right_width_0_height_0_subtile_0__pin_I20_7_,
                right_width_0_height_0_subtile_0__pin_I20_8_,
                right_width_0_height_0_subtile_0__pin_I20_9_,
                right_width_0_height_0_subtile_0__pin_I20_10_,
                right_width_0_height_0_subtile_0__pin_I20_11_,
                right_width_0_height_0_subtile_0__pin_IS0_3_,
                right_width_0_height_0_subtile_0__pin_IS0_4_,
                right_width_0_height_0_subtile_0__pin_IS0_5_,
                bottom_width_0_height_0_subtile_0__pin_cascup_i_0_,
                left_width_0_height_0_subtile_0__pin_sc_in_0_,
                left_width_0_height_0_subtile_0__pin_sc_in_1_,
                left_width_0_height_0_subtile_0__pin_clk_0_,
                left_width_0_height_0_subtile_0__pin_clk_1_,
                left_width_0_height_0_subtile_0__pin_clk_2_,
                left_width_0_height_0_subtile_0__pin_clk_3_,
                left_width_0_height_0_subtile_0__pin_clk_4_,
                left_width_0_height_0_subtile_0__pin_clk_5_,
                left_width_0_height_0_subtile_0__pin_clk_6_,
                left_width_0_height_0_subtile_0__pin_clk_7_,
                left_width_0_height_0_subtile_0__pin_clk_8_,
                left_width_0_height_0_subtile_0__pin_clk_9_,
                left_width_0_height_0_subtile_0__pin_clk_10_,
                left_width_0_height_0_subtile_0__pin_clk_11_,
                left_width_0_height_0_subtile_0__pin_clk_12_,
                left_width_0_height_0_subtile_0__pin_clk_13_,
                left_width_0_height_0_subtile_0__pin_clk_14_,
                left_width_0_height_0_subtile_0__pin_clk_15_,
                ccff_head,
                top_width_0_height_0_subtile_0__pin_O0_0_,
                top_width_0_height_0_subtile_0__pin_O0_1_,
                top_width_0_height_0_subtile_0__pin_O0_2_,
                top_width_0_height_0_subtile_0__pin_O0_3_,
                top_width_0_height_0_subtile_0__pin_O0_4_,
                top_width_0_height_0_subtile_0__pin_O0_5_,
                top_width_0_height_0_subtile_0__pin_O0_6_,
                top_width_0_height_0_subtile_0__pin_O0_7_,
                top_width_0_height_0_subtile_0__pin_O0_8_,
                top_width_0_height_0_subtile_0__pin_O0_9_,
                top_width_0_height_0_subtile_0__pin_O0_10_,
                top_width_0_height_0_subtile_0__pin_O0_11_,
                top_width_0_height_0_subtile_0__pin_cascup_o_0_,
                right_width_0_height_0_subtile_0__pin_O0_12_,
                right_width_0_height_0_subtile_0__pin_O0_13_,
                right_width_0_height_0_subtile_0__pin_O0_14_,
                right_width_0_height_0_subtile_0__pin_O0_15_,
                right_width_0_height_0_subtile_0__pin_O0_16_,
                right_width_0_height_0_subtile_0__pin_O0_17_,
                right_width_0_height_0_subtile_0__pin_O0_18_,
                right_width_0_height_0_subtile_0__pin_O0_19_,
                right_width_0_height_0_subtile_0__pin_O0_20_,
                right_width_0_height_0_subtile_0__pin_O0_21_,
                right_width_0_height_0_subtile_0__pin_O0_22_,
                right_width_0_height_0_subtile_0__pin_O0_23_,
                right_width_0_height_0_subtile_0__pin_sc_out_0_,
                right_width_0_height_0_subtile_0__pin_sc_out_1_,
                bottom_width_0_height_0_subtile_0__pin_cout_0_,
                bottom_width_0_height_0_subtile_0__pin_cascdn_o_0_,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] global_reset;
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_4_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_5_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_6_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_7_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_8_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_9_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_10_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I10_11_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_4_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_5_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_6_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_7_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_8_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_9_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_10_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I00_11_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_IS0_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_IS0_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_IS0_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_cin_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_cascdn_i_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_5_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_6_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_7_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_8_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_9_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_10_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I30_11_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_5_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_6_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_7_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_8_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_9_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_10_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I20_11_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS0_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS0_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS0_5_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_cascup_i_0_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_sc_in_1_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_4_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_5_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_6_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_7_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_8_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_9_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_10_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_11_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_12_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_13_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_14_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_15_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_1_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_2_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_3_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_4_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_5_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_6_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_7_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_8_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_9_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_10_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O0_11_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_cascup_o_0_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_12_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_13_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_14_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_15_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_16_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_17_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_18_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_19_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_20_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_21_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_22_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O0_23_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_sc_out_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_cout_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_cascdn_o_0_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_clb_ logical_tile_clb_mode_clb__0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.clb_I30({right_width_0_height_0_subtile_0__pin_I30_0_, right_width_0_height_0_subtile_0__pin_I30_1_, right_width_0_height_0_subtile_0__pin_I30_2_, right_width_0_height_0_subtile_0__pin_I30_3_, right_width_0_height_0_subtile_0__pin_I30_4_, right_width_0_height_0_subtile_0__pin_I30_5_, right_width_0_height_0_subtile_0__pin_I30_6_, right_width_0_height_0_subtile_0__pin_I30_7_, right_width_0_height_0_subtile_0__pin_I30_8_, right_width_0_height_0_subtile_0__pin_I30_9_, right_width_0_height_0_subtile_0__pin_I30_10_, right_width_0_height_0_subtile_0__pin_I30_11_}),
		.clb_I20({right_width_0_height_0_subtile_0__pin_I20_0_, right_width_0_height_0_subtile_0__pin_I20_1_, right_width_0_height_0_subtile_0__pin_I20_2_, right_width_0_height_0_subtile_0__pin_I20_3_, right_width_0_height_0_subtile_0__pin_I20_4_, right_width_0_height_0_subtile_0__pin_I20_5_, right_width_0_height_0_subtile_0__pin_I20_6_, right_width_0_height_0_subtile_0__pin_I20_7_, right_width_0_height_0_subtile_0__pin_I20_8_, right_width_0_height_0_subtile_0__pin_I20_9_, right_width_0_height_0_subtile_0__pin_I20_10_, right_width_0_height_0_subtile_0__pin_I20_11_}),
		.clb_I10({top_width_0_height_0_subtile_0__pin_I10_0_, top_width_0_height_0_subtile_0__pin_I10_1_, top_width_0_height_0_subtile_0__pin_I10_2_, top_width_0_height_0_subtile_0__pin_I10_3_, top_width_0_height_0_subtile_0__pin_I10_4_, top_width_0_height_0_subtile_0__pin_I10_5_, top_width_0_height_0_subtile_0__pin_I10_6_, top_width_0_height_0_subtile_0__pin_I10_7_, top_width_0_height_0_subtile_0__pin_I10_8_, top_width_0_height_0_subtile_0__pin_I10_9_, top_width_0_height_0_subtile_0__pin_I10_10_, top_width_0_height_0_subtile_0__pin_I10_11_}),
		.clb_I00({top_width_0_height_0_subtile_0__pin_I00_0_, top_width_0_height_0_subtile_0__pin_I00_1_, top_width_0_height_0_subtile_0__pin_I00_2_, top_width_0_height_0_subtile_0__pin_I00_3_, top_width_0_height_0_subtile_0__pin_I00_4_, top_width_0_height_0_subtile_0__pin_I00_5_, top_width_0_height_0_subtile_0__pin_I00_6_, top_width_0_height_0_subtile_0__pin_I00_7_, top_width_0_height_0_subtile_0__pin_I00_8_, top_width_0_height_0_subtile_0__pin_I00_9_, top_width_0_height_0_subtile_0__pin_I00_10_, top_width_0_height_0_subtile_0__pin_I00_11_}),
		.clb_IS0({top_width_0_height_0_subtile_0__pin_IS0_0_, top_width_0_height_0_subtile_0__pin_IS0_1_, top_width_0_height_0_subtile_0__pin_IS0_2_, right_width_0_height_0_subtile_0__pin_IS0_3_, right_width_0_height_0_subtile_0__pin_IS0_4_, right_width_0_height_0_subtile_0__pin_IS0_5_}),
		.clb_cin(top_width_0_height_0_subtile_0__pin_cin_0_),
		.clb_cascdn_i(top_width_0_height_0_subtile_0__pin_cascdn_i_0_),
		.clb_cascup_i(bottom_width_0_height_0_subtile_0__pin_cascup_i_0_),
		.clb_sc_in({left_width_0_height_0_subtile_0__pin_sc_in_0_, left_width_0_height_0_subtile_0__pin_sc_in_1_}),
		.clb_clk({left_width_0_height_0_subtile_0__pin_clk_0_, left_width_0_height_0_subtile_0__pin_clk_1_, left_width_0_height_0_subtile_0__pin_clk_2_, left_width_0_height_0_subtile_0__pin_clk_3_, left_width_0_height_0_subtile_0__pin_clk_4_, left_width_0_height_0_subtile_0__pin_clk_5_, left_width_0_height_0_subtile_0__pin_clk_6_, left_width_0_height_0_subtile_0__pin_clk_7_, left_width_0_height_0_subtile_0__pin_clk_8_, left_width_0_height_0_subtile_0__pin_clk_9_, left_width_0_height_0_subtile_0__pin_clk_10_, left_width_0_height_0_subtile_0__pin_clk_11_, left_width_0_height_0_subtile_0__pin_clk_12_, left_width_0_height_0_subtile_0__pin_clk_13_, left_width_0_height_0_subtile_0__pin_clk_14_, left_width_0_height_0_subtile_0__pin_clk_15_}),
		.ccff_head(ccff_head),
		.clb_O0({top_width_0_height_0_subtile_0__pin_O0_0_, top_width_0_height_0_subtile_0__pin_O0_1_, top_width_0_height_0_subtile_0__pin_O0_2_, top_width_0_height_0_subtile_0__pin_O0_3_, top_width_0_height_0_subtile_0__pin_O0_4_, top_width_0_height_0_subtile_0__pin_O0_5_, top_width_0_height_0_subtile_0__pin_O0_6_, top_width_0_height_0_subtile_0__pin_O0_7_, top_width_0_height_0_subtile_0__pin_O0_8_, top_width_0_height_0_subtile_0__pin_O0_9_, top_width_0_height_0_subtile_0__pin_O0_10_, top_width_0_height_0_subtile_0__pin_O0_11_, right_width_0_height_0_subtile_0__pin_O0_12_, right_width_0_height_0_subtile_0__pin_O0_13_, right_width_0_height_0_subtile_0__pin_O0_14_, right_width_0_height_0_subtile_0__pin_O0_15_, right_width_0_height_0_subtile_0__pin_O0_16_, right_width_0_height_0_subtile_0__pin_O0_17_, right_width_0_height_0_subtile_0__pin_O0_18_, right_width_0_height_0_subtile_0__pin_O0_19_, right_width_0_height_0_subtile_0__pin_O0_20_, right_width_0_height_0_subtile_0__pin_O0_21_, right_width_0_height_0_subtile_0__pin_O0_22_, right_width_0_height_0_subtile_0__pin_O0_23_}),
		.clb_cout(bottom_width_0_height_0_subtile_0__pin_cout_0_),
		.clb_cascdn_o(bottom_width_0_height_0_subtile_0__pin_cascdn_o_0_),
		.clb_cascup_o(top_width_0_height_0_subtile_0__pin_cascup_o_0_),
		.clb_sc_out({right_width_0_height_0_subtile_0__pin_sc_out_0_, right_width_0_height_0_subtile_0__pin_sc_out_1_}),
		.ccff_tail(ccff_tail));

endmodule
// ----- END Verilog module for grid_clb -----

//----- Default net type -----
`default_nettype none



// ----- END Grid Verilog module: grid_clb -----

