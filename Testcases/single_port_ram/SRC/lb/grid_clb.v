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
                top_width_0_height_0_subtile_0__pin_I0_0_,
                top_width_0_height_0_subtile_0__pin_I0_1_,
                top_width_0_height_0_subtile_0__pin_I0_2_,
                top_width_0_height_0_subtile_0__pin_I0_3_,
                top_width_0_height_0_subtile_0__pin_I0_4_,
                top_width_0_height_0_subtile_0__pin_I0_5_,
                top_width_0_height_0_subtile_0__pin_I0_6_,
                top_width_0_height_0_subtile_0__pin_I0_7_,
                top_width_0_height_0_subtile_0__pin_I0_8_,
                top_width_0_height_0_subtile_0__pin_I0_9_,
                top_width_0_height_0_subtile_0__pin_I1_0_,
                top_width_0_height_0_subtile_0__pin_I1_1_,
                top_width_0_height_0_subtile_0__pin_I1_2_,
                top_width_0_height_0_subtile_0__pin_I1_3_,
                top_width_0_height_0_subtile_0__pin_I1_4_,
                top_width_0_height_0_subtile_0__pin_I1_5_,
                top_width_0_height_0_subtile_0__pin_I1_6_,
                top_width_0_height_0_subtile_0__pin_I1_7_,
                top_width_0_height_0_subtile_0__pin_I1_8_,
                top_width_0_height_0_subtile_0__pin_I1_9_,
                top_width_0_height_0_subtile_0__pin_sc_in_0_,
                top_width_0_height_0_subtile_0__pin_cin_0_,
                top_width_0_height_0_subtile_0__pin_cin_trick_0_,
                right_width_0_height_0_subtile_0__pin_I2_0_,
                right_width_0_height_0_subtile_0__pin_I2_1_,
                right_width_0_height_0_subtile_0__pin_I2_2_,
                right_width_0_height_0_subtile_0__pin_I2_3_,
                right_width_0_height_0_subtile_0__pin_I2_4_,
                right_width_0_height_0_subtile_0__pin_I2_5_,
                right_width_0_height_0_subtile_0__pin_I2_6_,
                right_width_0_height_0_subtile_0__pin_I2_7_,
                right_width_0_height_0_subtile_0__pin_I2_8_,
                right_width_0_height_0_subtile_0__pin_I2_9_,
                right_width_0_height_0_subtile_0__pin_I3_0_,
                right_width_0_height_0_subtile_0__pin_I3_1_,
                right_width_0_height_0_subtile_0__pin_I3_2_,
                right_width_0_height_0_subtile_0__pin_I3_3_,
                right_width_0_height_0_subtile_0__pin_I3_4_,
                right_width_0_height_0_subtile_0__pin_I3_5_,
                right_width_0_height_0_subtile_0__pin_I3_6_,
                right_width_0_height_0_subtile_0__pin_I3_7_,
                right_width_0_height_0_subtile_0__pin_I3_8_,
                right_width_0_height_0_subtile_0__pin_I3_9_,
                right_width_0_height_0_subtile_0__pin_IS_0_,
                right_width_0_height_0_subtile_0__pin_IS_1_,
                right_width_0_height_0_subtile_0__pin_IS_2_,
                right_width_0_height_0_subtile_0__pin_IS_3_,
                right_width_0_height_0_subtile_0__pin_IS_4_,
                right_width_0_height_0_subtile_0__pin_IS_5_,
                left_width_0_height_0_subtile_0__pin_global_reset_0_,
                left_width_0_height_0_subtile_0__pin_scan_reset_0_,
                left_width_0_height_0_subtile_0__pin_clk_0_,
                left_width_0_height_0_subtile_0__pin_clk_1_,
                left_width_0_height_0_subtile_0__pin_clk_2_,
                left_width_0_height_0_subtile_0__pin_clk_3_,
                ccff_head,
                top_width_0_height_0_subtile_0__pin_O_0_,
                top_width_0_height_0_subtile_0__pin_O_1_,
                top_width_0_height_0_subtile_0__pin_O_2_,
                top_width_0_height_0_subtile_0__pin_O_3_,
                top_width_0_height_0_subtile_0__pin_O_4_,
                top_width_0_height_0_subtile_0__pin_O_5_,
                top_width_0_height_0_subtile_0__pin_O_6_,
                top_width_0_height_0_subtile_0__pin_O_7_,
                top_width_0_height_0_subtile_0__pin_O_8_,
                top_width_0_height_0_subtile_0__pin_O_9_,
                right_width_0_height_0_subtile_0__pin_O_10_,
                right_width_0_height_0_subtile_0__pin_O_11_,
                right_width_0_height_0_subtile_0__pin_O_12_,
                right_width_0_height_0_subtile_0__pin_O_13_,
                right_width_0_height_0_subtile_0__pin_O_14_,
                right_width_0_height_0_subtile_0__pin_O_15_,
                right_width_0_height_0_subtile_0__pin_O_16_,
                right_width_0_height_0_subtile_0__pin_O_17_,
                right_width_0_height_0_subtile_0__pin_O_18_,
                right_width_0_height_0_subtile_0__pin_O_19_,
                bottom_width_0_height_0_subtile_0__pin_sc_out_0_,
                bottom_width_0_height_0_subtile_0__pin_cout_0_,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_4_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_5_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_6_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_7_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_8_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I0_9_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_4_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_5_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_6_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_7_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_8_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_I1_9_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_cin_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_cin_trick_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_5_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_6_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_7_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_8_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I2_9_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_5_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_6_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_7_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_8_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_I3_9_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_IS_5_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] left_width_0_height_0_subtile_0__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_1_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_2_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_3_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_4_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_5_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_6_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_7_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_8_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_O_9_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_10_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_11_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_12_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_13_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_14_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_15_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_16_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_17_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_18_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_O_19_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_cout_0_;
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
		.clb_I0({top_width_0_height_0_subtile_0__pin_I0_0_, top_width_0_height_0_subtile_0__pin_I0_1_, top_width_0_height_0_subtile_0__pin_I0_2_, top_width_0_height_0_subtile_0__pin_I0_3_, top_width_0_height_0_subtile_0__pin_I0_4_, top_width_0_height_0_subtile_0__pin_I0_5_, top_width_0_height_0_subtile_0__pin_I0_6_, top_width_0_height_0_subtile_0__pin_I0_7_, top_width_0_height_0_subtile_0__pin_I0_8_, top_width_0_height_0_subtile_0__pin_I0_9_}),
		.clb_I1({top_width_0_height_0_subtile_0__pin_I1_0_, top_width_0_height_0_subtile_0__pin_I1_1_, top_width_0_height_0_subtile_0__pin_I1_2_, top_width_0_height_0_subtile_0__pin_I1_3_, top_width_0_height_0_subtile_0__pin_I1_4_, top_width_0_height_0_subtile_0__pin_I1_5_, top_width_0_height_0_subtile_0__pin_I1_6_, top_width_0_height_0_subtile_0__pin_I1_7_, top_width_0_height_0_subtile_0__pin_I1_8_, top_width_0_height_0_subtile_0__pin_I1_9_}),
		.clb_I2({right_width_0_height_0_subtile_0__pin_I2_0_, right_width_0_height_0_subtile_0__pin_I2_1_, right_width_0_height_0_subtile_0__pin_I2_2_, right_width_0_height_0_subtile_0__pin_I2_3_, right_width_0_height_0_subtile_0__pin_I2_4_, right_width_0_height_0_subtile_0__pin_I2_5_, right_width_0_height_0_subtile_0__pin_I2_6_, right_width_0_height_0_subtile_0__pin_I2_7_, right_width_0_height_0_subtile_0__pin_I2_8_, right_width_0_height_0_subtile_0__pin_I2_9_}),
		.clb_I3({right_width_0_height_0_subtile_0__pin_I3_0_, right_width_0_height_0_subtile_0__pin_I3_1_, right_width_0_height_0_subtile_0__pin_I3_2_, right_width_0_height_0_subtile_0__pin_I3_3_, right_width_0_height_0_subtile_0__pin_I3_4_, right_width_0_height_0_subtile_0__pin_I3_5_, right_width_0_height_0_subtile_0__pin_I3_6_, right_width_0_height_0_subtile_0__pin_I3_7_, right_width_0_height_0_subtile_0__pin_I3_8_, right_width_0_height_0_subtile_0__pin_I3_9_}),
		.clb_IS({right_width_0_height_0_subtile_0__pin_IS_0_, right_width_0_height_0_subtile_0__pin_IS_1_, right_width_0_height_0_subtile_0__pin_IS_2_, right_width_0_height_0_subtile_0__pin_IS_3_, right_width_0_height_0_subtile_0__pin_IS_4_, right_width_0_height_0_subtile_0__pin_IS_5_}),
		.clb_sc_in(top_width_0_height_0_subtile_0__pin_sc_in_0_),
		.clb_cin(top_width_0_height_0_subtile_0__pin_cin_0_),
		.clb_cin_trick(top_width_0_height_0_subtile_0__pin_cin_trick_0_),
		.clb_global_reset(left_width_0_height_0_subtile_0__pin_global_reset_0_),
		.clb_scan_reset(left_width_0_height_0_subtile_0__pin_scan_reset_0_),
		.clb_clk({left_width_0_height_0_subtile_0__pin_clk_0_, left_width_0_height_0_subtile_0__pin_clk_1_, left_width_0_height_0_subtile_0__pin_clk_2_, left_width_0_height_0_subtile_0__pin_clk_3_}),
		.ccff_head(ccff_head),
		.clb_O({top_width_0_height_0_subtile_0__pin_O_0_, top_width_0_height_0_subtile_0__pin_O_1_, top_width_0_height_0_subtile_0__pin_O_2_, top_width_0_height_0_subtile_0__pin_O_3_, top_width_0_height_0_subtile_0__pin_O_4_, top_width_0_height_0_subtile_0__pin_O_5_, top_width_0_height_0_subtile_0__pin_O_6_, top_width_0_height_0_subtile_0__pin_O_7_, top_width_0_height_0_subtile_0__pin_O_8_, top_width_0_height_0_subtile_0__pin_O_9_, right_width_0_height_0_subtile_0__pin_O_10_, right_width_0_height_0_subtile_0__pin_O_11_, right_width_0_height_0_subtile_0__pin_O_12_, right_width_0_height_0_subtile_0__pin_O_13_, right_width_0_height_0_subtile_0__pin_O_14_, right_width_0_height_0_subtile_0__pin_O_15_, right_width_0_height_0_subtile_0__pin_O_16_, right_width_0_height_0_subtile_0__pin_O_17_, right_width_0_height_0_subtile_0__pin_O_18_, right_width_0_height_0_subtile_0__pin_O_19_}),
		.clb_sc_out(bottom_width_0_height_0_subtile_0__pin_sc_out_0_),
		.clb_cout(bottom_width_0_height_0_subtile_0__pin_cout_0_),
		.ccff_tail(ccff_tail));

endmodule
// ----- END Verilog module for grid_clb -----

//----- Default net type -----
`default_nettype none



// ----- END Grid Verilog module: grid_clb -----

