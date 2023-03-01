//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for physical tile: dsp]
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Grid Verilog module: grid_dsp -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for grid_dsp -----
module grid_dsp(test_en,
                scan_mode,
                scan_clk,
                config_enable,
                prog_clock,
                top_width_0_height_0_subtile_0__pin_sc_in_0_,
                top_width_0_height_0_subtile_0__pin_sc_in_1_,
                top_width_0_height_0_subtile_0__pin_sc_in_2_,
                top_width_0_height_0_subtile_0__pin_global_reset_0_,
                top_width_0_height_0_subtile_0__pin_scan_reset_0_,
                top_width_0_height_0_subtile_0__pin_clk_0_,
                top_width_0_height_0_subtile_0__pin_clk_1_,
                top_width_0_height_0_subtile_0__pin_clk_2_,
                top_width_0_height_0_subtile_0__pin_clk_3_,
                right_width_0_height_0_subtile_0__pin_a_i_2_,
                right_width_0_height_0_subtile_0__pin_a_i_3_,
                right_width_0_height_0_subtile_0__pin_a_i_4_,
                right_width_0_height_0_subtile_0__pin_a_i_5_,
                right_width_0_height_0_subtile_0__pin_a_i_6_,
                right_width_0_height_0_subtile_0__pin_a_i_7_,
                right_width_0_height_0_subtile_0__pin_acc_fir_i_1_,
                right_width_0_height_0_subtile_0__pin_acc_fir_i_2_,
                right_width_0_height_0_subtile_0__pin_b_i_0_,
                right_width_0_height_0_subtile_0__pin_b_i_1_,
                right_width_0_height_0_subtile_0__pin_b_i_2_,
                right_width_0_height_0_subtile_0__pin_b_i_3_,
                right_width_0_height_0_subtile_0__pin_b_i_4_,
                right_width_0_height_0_subtile_0__pin_b_i_5_,
                right_width_0_height_0_subtile_0__pin_unsigned_a_0_,
                right_width_0_height_0_subtile_0__pin_round_0_,
                right_width_0_height_1_subtile_0__pin_a_i_8_,
                right_width_0_height_1_subtile_0__pin_a_i_9_,
                right_width_0_height_1_subtile_0__pin_a_i_10_,
                right_width_0_height_1_subtile_0__pin_a_i_11_,
                right_width_0_height_1_subtile_0__pin_a_i_12_,
                right_width_0_height_1_subtile_0__pin_a_i_13_,
                right_width_0_height_1_subtile_0__pin_acc_fir_i_3_,
                right_width_0_height_1_subtile_0__pin_acc_fir_i_4_,
                right_width_0_height_1_subtile_0__pin_b_i_6_,
                right_width_0_height_1_subtile_0__pin_b_i_7_,
                right_width_0_height_1_subtile_0__pin_b_i_8_,
                right_width_0_height_1_subtile_0__pin_b_i_9_,
                right_width_0_height_1_subtile_0__pin_b_i_10_,
                right_width_0_height_1_subtile_0__pin_b_i_11_,
                right_width_0_height_1_subtile_0__pin_unsigned_b_0_,
                right_width_0_height_1_subtile_0__pin_subtract_0_,
                right_width_0_height_2_subtile_0__pin_a_i_14_,
                right_width_0_height_2_subtile_0__pin_a_i_15_,
                right_width_0_height_2_subtile_0__pin_a_i_16_,
                right_width_0_height_2_subtile_0__pin_a_i_17_,
                right_width_0_height_2_subtile_0__pin_a_i_18_,
                right_width_0_height_2_subtile_0__pin_a_i_19_,
                right_width_0_height_2_subtile_0__pin_acc_fir_i_5_,
                right_width_0_height_2_subtile_0__pin_b_i_12_,
                right_width_0_height_2_subtile_0__pin_b_i_13_,
                right_width_0_height_2_subtile_0__pin_b_i_14_,
                right_width_0_height_2_subtile_0__pin_b_i_15_,
                right_width_0_height_2_subtile_0__pin_b_i_16_,
                right_width_0_height_2_subtile_0__pin_b_i_17_,
                right_width_0_height_2_subtile_0__pin_load_acc_0_,
                right_width_0_height_2_subtile_0__pin_saturate_enable_0_,
                bottom_width_0_height_0_subtile_0__pin_a_i_0_,
                bottom_width_0_height_0_subtile_0__pin_a_i_1_,
                bottom_width_0_height_0_subtile_0__pin_acc_fir_i_0_,
                bottom_width_0_height_0_subtile_0__pin_lreset_0_,
                bottom_width_0_height_0_subtile_0__pin_feedback_0_,
                bottom_width_0_height_0_subtile_0__pin_feedback_1_,
                bottom_width_0_height_0_subtile_0__pin_feedback_2_,
                bottom_width_0_height_0_subtile_0__pin_shift_right_0_,
                bottom_width_0_height_0_subtile_0__pin_shift_right_1_,
                bottom_width_0_height_0_subtile_0__pin_shift_right_2_,
                bottom_width_0_height_0_subtile_0__pin_shift_right_3_,
                bottom_width_0_height_0_subtile_0__pin_shift_right_4_,
                bottom_width_0_height_0_subtile_0__pin_shift_right_5_,
                ccff_head,
                right_width_0_height_0_subtile_0__pin_z_o_7_,
                right_width_0_height_0_subtile_0__pin_z_o_8_,
                right_width_0_height_0_subtile_0__pin_z_o_9_,
                right_width_0_height_0_subtile_0__pin_z_o_10_,
                right_width_0_height_0_subtile_0__pin_z_o_11_,
                right_width_0_height_0_subtile_0__pin_z_o_12_,
                right_width_0_height_0_subtile_0__pin_z_o_13_,
                right_width_0_height_0_subtile_0__pin_z_o_14_,
                right_width_0_height_0_subtile_0__pin_z_o_15_,
                right_width_0_height_0_subtile_0__pin_dly_b_o_0_,
                right_width_0_height_0_subtile_0__pin_dly_b_o_1_,
                right_width_0_height_0_subtile_0__pin_dly_b_o_2_,
                right_width_0_height_0_subtile_0__pin_dly_b_o_3_,
                right_width_0_height_0_subtile_0__pin_dly_b_o_4_,
                right_width_0_height_0_subtile_0__pin_dly_b_o_5_,
                right_width_0_height_1_subtile_0__pin_z_o_16_,
                right_width_0_height_1_subtile_0__pin_z_o_17_,
                right_width_0_height_1_subtile_0__pin_z_o_18_,
                right_width_0_height_1_subtile_0__pin_z_o_19_,
                right_width_0_height_1_subtile_0__pin_z_o_20_,
                right_width_0_height_1_subtile_0__pin_z_o_21_,
                right_width_0_height_1_subtile_0__pin_z_o_22_,
                right_width_0_height_1_subtile_0__pin_z_o_23_,
                right_width_0_height_1_subtile_0__pin_z_o_24_,
                right_width_0_height_1_subtile_0__pin_z_o_25_,
                right_width_0_height_1_subtile_0__pin_z_o_26_,
                right_width_0_height_1_subtile_0__pin_dly_b_o_6_,
                right_width_0_height_1_subtile_0__pin_dly_b_o_7_,
                right_width_0_height_1_subtile_0__pin_dly_b_o_8_,
                right_width_0_height_1_subtile_0__pin_dly_b_o_9_,
                right_width_0_height_1_subtile_0__pin_dly_b_o_10_,
                right_width_0_height_1_subtile_0__pin_dly_b_o_11_,
                right_width_0_height_2_subtile_0__pin_z_o_27_,
                right_width_0_height_2_subtile_0__pin_z_o_28_,
                right_width_0_height_2_subtile_0__pin_z_o_29_,
                right_width_0_height_2_subtile_0__pin_z_o_30_,
                right_width_0_height_2_subtile_0__pin_z_o_31_,
                right_width_0_height_2_subtile_0__pin_z_o_32_,
                right_width_0_height_2_subtile_0__pin_z_o_33_,
                right_width_0_height_2_subtile_0__pin_z_o_34_,
                right_width_0_height_2_subtile_0__pin_z_o_35_,
                right_width_0_height_2_subtile_0__pin_z_o_36_,
                right_width_0_height_2_subtile_0__pin_z_o_37_,
                right_width_0_height_2_subtile_0__pin_dly_b_o_12_,
                right_width_0_height_2_subtile_0__pin_dly_b_o_13_,
                right_width_0_height_2_subtile_0__pin_dly_b_o_14_,
                right_width_0_height_2_subtile_0__pin_dly_b_o_15_,
                right_width_0_height_2_subtile_0__pin_dly_b_o_16_,
                right_width_0_height_2_subtile_0__pin_dly_b_o_17_,
                bottom_width_0_height_0_subtile_0__pin_z_o_0_,
                bottom_width_0_height_0_subtile_0__pin_z_o_1_,
                bottom_width_0_height_0_subtile_0__pin_z_o_2_,
                bottom_width_0_height_0_subtile_0__pin_z_o_3_,
                bottom_width_0_height_0_subtile_0__pin_z_o_4_,
                bottom_width_0_height_0_subtile_0__pin_z_o_5_,
                bottom_width_0_height_0_subtile_0__pin_z_o_6_,
                bottom_width_0_height_0_subtile_0__pin_sc_out_0_,
                bottom_width_0_height_0_subtile_0__pin_sc_out_1_,
                bottom_width_0_height_0_subtile_0__pin_sc_out_2_,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] test_en;
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] scan_clk;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_sc_in_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_sc_in_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_a_i_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_a_i_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_a_i_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_a_i_5_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_a_i_6_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_a_i_7_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_acc_fir_i_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_acc_fir_i_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_b_i_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_b_i_1_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_b_i_2_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_b_i_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_b_i_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_b_i_5_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_unsigned_a_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_0_subtile_0__pin_round_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_a_i_8_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_a_i_9_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_a_i_10_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_a_i_11_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_a_i_12_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_a_i_13_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_acc_fir_i_3_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_acc_fir_i_4_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_b_i_6_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_b_i_7_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_b_i_8_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_b_i_9_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_b_i_10_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_b_i_11_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_unsigned_b_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_1_subtile_0__pin_subtract_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_a_i_14_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_a_i_15_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_a_i_16_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_a_i_17_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_a_i_18_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_a_i_19_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_acc_fir_i_5_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_b_i_12_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_b_i_13_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_b_i_14_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_b_i_15_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_b_i_16_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_b_i_17_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_load_acc_0_;
//----- INPUT PORTS -----
input [0:0] right_width_0_height_2_subtile_0__pin_saturate_enable_0_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_a_i_0_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_a_i_1_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_acc_fir_i_0_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_lreset_0_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_feedback_0_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_feedback_1_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_feedback_2_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_shift_right_0_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_shift_right_1_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_shift_right_2_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_shift_right_3_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_shift_right_4_;
//----- INPUT PORTS -----
input [0:0] bottom_width_0_height_0_subtile_0__pin_shift_right_5_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_7_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_8_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_9_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_10_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_11_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_12_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_13_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_14_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_z_o_15_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_dly_b_o_0_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_dly_b_o_1_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_dly_b_o_2_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_dly_b_o_3_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_dly_b_o_4_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_0_subtile_0__pin_dly_b_o_5_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_16_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_17_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_18_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_19_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_20_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_21_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_22_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_23_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_24_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_25_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_z_o_26_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_dly_b_o_6_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_dly_b_o_7_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_dly_b_o_8_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_dly_b_o_9_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_dly_b_o_10_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_1_subtile_0__pin_dly_b_o_11_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_27_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_28_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_29_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_30_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_31_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_32_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_33_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_34_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_35_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_36_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_z_o_37_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_dly_b_o_12_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_dly_b_o_13_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_dly_b_o_14_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_dly_b_o_15_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_dly_b_o_16_;
//----- OUTPUT PORTS -----
output [0:0] right_width_0_height_2_subtile_0__pin_dly_b_o_17_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_z_o_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_z_o_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_z_o_2_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_z_o_3_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_z_o_4_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_z_o_5_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_z_o_6_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_sc_out_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_width_0_height_0_subtile_0__pin_sc_out_2_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_dsp_mode_dsp_ logical_tile_dsp_mode_dsp__0 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.dsp_a_i({bottom_width_0_height_0_subtile_0__pin_a_i_0_, bottom_width_0_height_0_subtile_0__pin_a_i_1_, right_width_0_height_0_subtile_0__pin_a_i_2_, right_width_0_height_0_subtile_0__pin_a_i_3_, right_width_0_height_0_subtile_0__pin_a_i_4_, right_width_0_height_0_subtile_0__pin_a_i_5_, right_width_0_height_0_subtile_0__pin_a_i_6_, right_width_0_height_0_subtile_0__pin_a_i_7_, right_width_0_height_1_subtile_0__pin_a_i_8_, right_width_0_height_1_subtile_0__pin_a_i_9_, right_width_0_height_1_subtile_0__pin_a_i_10_, right_width_0_height_1_subtile_0__pin_a_i_11_, right_width_0_height_1_subtile_0__pin_a_i_12_, right_width_0_height_1_subtile_0__pin_a_i_13_, right_width_0_height_2_subtile_0__pin_a_i_14_, right_width_0_height_2_subtile_0__pin_a_i_15_, right_width_0_height_2_subtile_0__pin_a_i_16_, right_width_0_height_2_subtile_0__pin_a_i_17_, right_width_0_height_2_subtile_0__pin_a_i_18_, right_width_0_height_2_subtile_0__pin_a_i_19_}),
		.dsp_acc_fir_i({bottom_width_0_height_0_subtile_0__pin_acc_fir_i_0_, right_width_0_height_0_subtile_0__pin_acc_fir_i_1_, right_width_0_height_0_subtile_0__pin_acc_fir_i_2_, right_width_0_height_1_subtile_0__pin_acc_fir_i_3_, right_width_0_height_1_subtile_0__pin_acc_fir_i_4_, right_width_0_height_2_subtile_0__pin_acc_fir_i_5_}),
		.dsp_b_i({right_width_0_height_0_subtile_0__pin_b_i_0_, right_width_0_height_0_subtile_0__pin_b_i_1_, right_width_0_height_0_subtile_0__pin_b_i_2_, right_width_0_height_0_subtile_0__pin_b_i_3_, right_width_0_height_0_subtile_0__pin_b_i_4_, right_width_0_height_0_subtile_0__pin_b_i_5_, right_width_0_height_1_subtile_0__pin_b_i_6_, right_width_0_height_1_subtile_0__pin_b_i_7_, right_width_0_height_1_subtile_0__pin_b_i_8_, right_width_0_height_1_subtile_0__pin_b_i_9_, right_width_0_height_1_subtile_0__pin_b_i_10_, right_width_0_height_1_subtile_0__pin_b_i_11_, right_width_0_height_2_subtile_0__pin_b_i_12_, right_width_0_height_2_subtile_0__pin_b_i_13_, right_width_0_height_2_subtile_0__pin_b_i_14_, right_width_0_height_2_subtile_0__pin_b_i_15_, right_width_0_height_2_subtile_0__pin_b_i_16_, right_width_0_height_2_subtile_0__pin_b_i_17_}),
		.dsp_sc_in({top_width_0_height_0_subtile_0__pin_sc_in_0_, top_width_0_height_0_subtile_0__pin_sc_in_1_, top_width_0_height_0_subtile_0__pin_sc_in_2_}),
		.dsp_load_acc(right_width_0_height_2_subtile_0__pin_load_acc_0_),
		.dsp_global_reset(top_width_0_height_0_subtile_0__pin_global_reset_0_),
		.dsp_scan_reset(top_width_0_height_0_subtile_0__pin_scan_reset_0_),
		.dsp_lreset(bottom_width_0_height_0_subtile_0__pin_lreset_0_),
		.dsp_feedback({bottom_width_0_height_0_subtile_0__pin_feedback_0_, bottom_width_0_height_0_subtile_0__pin_feedback_1_, bottom_width_0_height_0_subtile_0__pin_feedback_2_}),
		.dsp_unsigned_a(right_width_0_height_0_subtile_0__pin_unsigned_a_0_),
		.dsp_unsigned_b(right_width_0_height_1_subtile_0__pin_unsigned_b_0_),
		.dsp_saturate_enable(right_width_0_height_2_subtile_0__pin_saturate_enable_0_),
		.dsp_shift_right({bottom_width_0_height_0_subtile_0__pin_shift_right_0_, bottom_width_0_height_0_subtile_0__pin_shift_right_1_, bottom_width_0_height_0_subtile_0__pin_shift_right_2_, bottom_width_0_height_0_subtile_0__pin_shift_right_3_, bottom_width_0_height_0_subtile_0__pin_shift_right_4_, bottom_width_0_height_0_subtile_0__pin_shift_right_5_}),
		.dsp_round(right_width_0_height_0_subtile_0__pin_round_0_),
		.dsp_subtract(right_width_0_height_1_subtile_0__pin_subtract_0_),
		.dsp_clk({top_width_0_height_0_subtile_0__pin_clk_0_, top_width_0_height_0_subtile_0__pin_clk_1_, top_width_0_height_0_subtile_0__pin_clk_2_, top_width_0_height_0_subtile_0__pin_clk_3_}),
		.ccff_head(ccff_head),
		.dsp_z_o({bottom_width_0_height_0_subtile_0__pin_z_o_0_, bottom_width_0_height_0_subtile_0__pin_z_o_1_, bottom_width_0_height_0_subtile_0__pin_z_o_2_, bottom_width_0_height_0_subtile_0__pin_z_o_3_, bottom_width_0_height_0_subtile_0__pin_z_o_4_, bottom_width_0_height_0_subtile_0__pin_z_o_5_, bottom_width_0_height_0_subtile_0__pin_z_o_6_, right_width_0_height_0_subtile_0__pin_z_o_7_, right_width_0_height_0_subtile_0__pin_z_o_8_, right_width_0_height_0_subtile_0__pin_z_o_9_, right_width_0_height_0_subtile_0__pin_z_o_10_, right_width_0_height_0_subtile_0__pin_z_o_11_, right_width_0_height_0_subtile_0__pin_z_o_12_, right_width_0_height_0_subtile_0__pin_z_o_13_, right_width_0_height_0_subtile_0__pin_z_o_14_, right_width_0_height_0_subtile_0__pin_z_o_15_, right_width_0_height_1_subtile_0__pin_z_o_16_, right_width_0_height_1_subtile_0__pin_z_o_17_, right_width_0_height_1_subtile_0__pin_z_o_18_, right_width_0_height_1_subtile_0__pin_z_o_19_, right_width_0_height_1_subtile_0__pin_z_o_20_, right_width_0_height_1_subtile_0__pin_z_o_21_, right_width_0_height_1_subtile_0__pin_z_o_22_, right_width_0_height_1_subtile_0__pin_z_o_23_, right_width_0_height_1_subtile_0__pin_z_o_24_, right_width_0_height_1_subtile_0__pin_z_o_25_, right_width_0_height_1_subtile_0__pin_z_o_26_, right_width_0_height_2_subtile_0__pin_z_o_27_, right_width_0_height_2_subtile_0__pin_z_o_28_, right_width_0_height_2_subtile_0__pin_z_o_29_, right_width_0_height_2_subtile_0__pin_z_o_30_, right_width_0_height_2_subtile_0__pin_z_o_31_, right_width_0_height_2_subtile_0__pin_z_o_32_, right_width_0_height_2_subtile_0__pin_z_o_33_, right_width_0_height_2_subtile_0__pin_z_o_34_, right_width_0_height_2_subtile_0__pin_z_o_35_, right_width_0_height_2_subtile_0__pin_z_o_36_, right_width_0_height_2_subtile_0__pin_z_o_37_}),
		.dsp_dly_b_o({right_width_0_height_0_subtile_0__pin_dly_b_o_0_, right_width_0_height_0_subtile_0__pin_dly_b_o_1_, right_width_0_height_0_subtile_0__pin_dly_b_o_2_, right_width_0_height_0_subtile_0__pin_dly_b_o_3_, right_width_0_height_0_subtile_0__pin_dly_b_o_4_, right_width_0_height_0_subtile_0__pin_dly_b_o_5_, right_width_0_height_1_subtile_0__pin_dly_b_o_6_, right_width_0_height_1_subtile_0__pin_dly_b_o_7_, right_width_0_height_1_subtile_0__pin_dly_b_o_8_, right_width_0_height_1_subtile_0__pin_dly_b_o_9_, right_width_0_height_1_subtile_0__pin_dly_b_o_10_, right_width_0_height_1_subtile_0__pin_dly_b_o_11_, right_width_0_height_2_subtile_0__pin_dly_b_o_12_, right_width_0_height_2_subtile_0__pin_dly_b_o_13_, right_width_0_height_2_subtile_0__pin_dly_b_o_14_, right_width_0_height_2_subtile_0__pin_dly_b_o_15_, right_width_0_height_2_subtile_0__pin_dly_b_o_16_, right_width_0_height_2_subtile_0__pin_dly_b_o_17_}),
		.dsp_sc_out({bottom_width_0_height_0_subtile_0__pin_sc_out_0_, bottom_width_0_height_0_subtile_0__pin_sc_out_1_, bottom_width_0_height_0_subtile_0__pin_sc_out_2_}),
		.ccff_tail(ccff_tail));

endmodule
// ----- END Verilog module for grid_dsp -----

//----- Default net type -----
`default_nettype none



// ----- END Grid Verilog module: grid_dsp -----

