//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for physical tile: io_bottom]
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Grid Verilog module: grid_io_bottom -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for grid_io_bottom -----
module grid_io_bottom(test_en,
                      scan_mode,
                      scan_clk,
                      config_enable,
                      prog_clock,
                      CFG_DONE,
                      gfpga_pad_QL_PREIO_A2F,
                      gfpga_pad_QL_PREIO_F2A,
                      gfpga_pad_QL_PREIO_F2A_DEF0,
                      gfpga_pad_QL_PREIO_F2A_DEF1,
                      gfpga_pad_QL_PREIO_F2A_CLK,
                      top_width_0_height_0_subtile_0__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_0__pin_sc_in_0_,
                      top_width_0_height_0_subtile_0__pin_global_reset_0_,
                      top_width_0_height_0_subtile_0__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_0__pin_clk_0_,
                      top_width_0_height_0_subtile_0__pin_clk_1_,
                      top_width_0_height_0_subtile_0__pin_clk_2_,
                      top_width_0_height_0_subtile_0__pin_clk_3_,
                      top_width_0_height_0_subtile_1__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_1__pin_sc_in_0_,
                      top_width_0_height_0_subtile_1__pin_global_reset_0_,
                      top_width_0_height_0_subtile_1__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_1__pin_clk_0_,
                      top_width_0_height_0_subtile_1__pin_clk_1_,
                      top_width_0_height_0_subtile_1__pin_clk_2_,
                      top_width_0_height_0_subtile_1__pin_clk_3_,
                      top_width_0_height_0_subtile_2__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_2__pin_sc_in_0_,
                      top_width_0_height_0_subtile_2__pin_global_reset_0_,
                      top_width_0_height_0_subtile_2__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_2__pin_clk_0_,
                      top_width_0_height_0_subtile_2__pin_clk_1_,
                      top_width_0_height_0_subtile_2__pin_clk_2_,
                      top_width_0_height_0_subtile_2__pin_clk_3_,
                      top_width_0_height_0_subtile_3__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_3__pin_sc_in_0_,
                      top_width_0_height_0_subtile_3__pin_global_reset_0_,
                      top_width_0_height_0_subtile_3__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_3__pin_clk_0_,
                      top_width_0_height_0_subtile_3__pin_clk_1_,
                      top_width_0_height_0_subtile_3__pin_clk_2_,
                      top_width_0_height_0_subtile_3__pin_clk_3_,
                      top_width_0_height_0_subtile_4__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_4__pin_sc_in_0_,
                      top_width_0_height_0_subtile_4__pin_global_reset_0_,
                      top_width_0_height_0_subtile_4__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_4__pin_clk_0_,
                      top_width_0_height_0_subtile_4__pin_clk_1_,
                      top_width_0_height_0_subtile_4__pin_clk_2_,
                      top_width_0_height_0_subtile_4__pin_clk_3_,
                      top_width_0_height_0_subtile_5__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_5__pin_sc_in_0_,
                      top_width_0_height_0_subtile_5__pin_global_reset_0_,
                      top_width_0_height_0_subtile_5__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_5__pin_clk_0_,
                      top_width_0_height_0_subtile_5__pin_clk_1_,
                      top_width_0_height_0_subtile_5__pin_clk_2_,
                      top_width_0_height_0_subtile_5__pin_clk_3_,
                      top_width_0_height_0_subtile_6__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_6__pin_sc_in_0_,
                      top_width_0_height_0_subtile_6__pin_global_reset_0_,
                      top_width_0_height_0_subtile_6__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_6__pin_clk_0_,
                      top_width_0_height_0_subtile_6__pin_clk_1_,
                      top_width_0_height_0_subtile_6__pin_clk_2_,
                      top_width_0_height_0_subtile_6__pin_clk_3_,
                      top_width_0_height_0_subtile_7__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_7__pin_sc_in_0_,
                      top_width_0_height_0_subtile_7__pin_global_reset_0_,
                      top_width_0_height_0_subtile_7__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_7__pin_clk_0_,
                      top_width_0_height_0_subtile_7__pin_clk_1_,
                      top_width_0_height_0_subtile_7__pin_clk_2_,
                      top_width_0_height_0_subtile_7__pin_clk_3_,
                      top_width_0_height_0_subtile_8__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_8__pin_sc_in_0_,
                      top_width_0_height_0_subtile_8__pin_global_reset_0_,
                      top_width_0_height_0_subtile_8__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_8__pin_clk_0_,
                      top_width_0_height_0_subtile_8__pin_clk_1_,
                      top_width_0_height_0_subtile_8__pin_clk_2_,
                      top_width_0_height_0_subtile_8__pin_clk_3_,
                      top_width_0_height_0_subtile_9__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_9__pin_sc_in_0_,
                      top_width_0_height_0_subtile_9__pin_global_reset_0_,
                      top_width_0_height_0_subtile_9__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_9__pin_clk_0_,
                      top_width_0_height_0_subtile_9__pin_clk_1_,
                      top_width_0_height_0_subtile_9__pin_clk_2_,
                      top_width_0_height_0_subtile_9__pin_clk_3_,
                      top_width_0_height_0_subtile_10__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_10__pin_sc_in_0_,
                      top_width_0_height_0_subtile_10__pin_global_reset_0_,
                      top_width_0_height_0_subtile_10__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_10__pin_clk_0_,
                      top_width_0_height_0_subtile_10__pin_clk_1_,
                      top_width_0_height_0_subtile_10__pin_clk_2_,
                      top_width_0_height_0_subtile_10__pin_clk_3_,
                      top_width_0_height_0_subtile_11__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_11__pin_sc_in_0_,
                      top_width_0_height_0_subtile_11__pin_global_reset_0_,
                      top_width_0_height_0_subtile_11__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_11__pin_clk_0_,
                      top_width_0_height_0_subtile_11__pin_clk_1_,
                      top_width_0_height_0_subtile_11__pin_clk_2_,
                      top_width_0_height_0_subtile_11__pin_clk_3_,
                      top_width_0_height_0_subtile_12__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_12__pin_sc_in_0_,
                      top_width_0_height_0_subtile_12__pin_global_reset_0_,
                      top_width_0_height_0_subtile_12__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_12__pin_clk_0_,
                      top_width_0_height_0_subtile_12__pin_clk_1_,
                      top_width_0_height_0_subtile_12__pin_clk_2_,
                      top_width_0_height_0_subtile_12__pin_clk_3_,
                      top_width_0_height_0_subtile_13__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_13__pin_sc_in_0_,
                      top_width_0_height_0_subtile_13__pin_global_reset_0_,
                      top_width_0_height_0_subtile_13__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_13__pin_clk_0_,
                      top_width_0_height_0_subtile_13__pin_clk_1_,
                      top_width_0_height_0_subtile_13__pin_clk_2_,
                      top_width_0_height_0_subtile_13__pin_clk_3_,
                      top_width_0_height_0_subtile_14__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_14__pin_sc_in_0_,
                      top_width_0_height_0_subtile_14__pin_global_reset_0_,
                      top_width_0_height_0_subtile_14__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_14__pin_clk_0_,
                      top_width_0_height_0_subtile_14__pin_clk_1_,
                      top_width_0_height_0_subtile_14__pin_clk_2_,
                      top_width_0_height_0_subtile_14__pin_clk_3_,
                      top_width_0_height_0_subtile_15__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_15__pin_sc_in_0_,
                      top_width_0_height_0_subtile_15__pin_global_reset_0_,
                      top_width_0_height_0_subtile_15__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_15__pin_clk_0_,
                      top_width_0_height_0_subtile_15__pin_clk_1_,
                      top_width_0_height_0_subtile_15__pin_clk_2_,
                      top_width_0_height_0_subtile_15__pin_clk_3_,
                      top_width_0_height_0_subtile_16__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_16__pin_sc_in_0_,
                      top_width_0_height_0_subtile_16__pin_global_reset_0_,
                      top_width_0_height_0_subtile_16__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_16__pin_clk_0_,
                      top_width_0_height_0_subtile_16__pin_clk_1_,
                      top_width_0_height_0_subtile_16__pin_clk_2_,
                      top_width_0_height_0_subtile_16__pin_clk_3_,
                      top_width_0_height_0_subtile_17__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_17__pin_sc_in_0_,
                      top_width_0_height_0_subtile_17__pin_global_reset_0_,
                      top_width_0_height_0_subtile_17__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_17__pin_clk_0_,
                      top_width_0_height_0_subtile_17__pin_clk_1_,
                      top_width_0_height_0_subtile_17__pin_clk_2_,
                      top_width_0_height_0_subtile_17__pin_clk_3_,
                      top_width_0_height_0_subtile_18__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_18__pin_sc_in_0_,
                      top_width_0_height_0_subtile_18__pin_global_reset_0_,
                      top_width_0_height_0_subtile_18__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_18__pin_clk_0_,
                      top_width_0_height_0_subtile_18__pin_clk_1_,
                      top_width_0_height_0_subtile_18__pin_clk_2_,
                      top_width_0_height_0_subtile_18__pin_clk_3_,
                      top_width_0_height_0_subtile_19__pin_f2a_i_0_,
                      top_width_0_height_0_subtile_19__pin_sc_in_0_,
                      top_width_0_height_0_subtile_19__pin_global_reset_0_,
                      top_width_0_height_0_subtile_19__pin_scan_reset_0_,
                      top_width_0_height_0_subtile_19__pin_clk_0_,
                      top_width_0_height_0_subtile_19__pin_clk_1_,
                      top_width_0_height_0_subtile_19__pin_clk_2_,
                      top_width_0_height_0_subtile_19__pin_clk_3_,
                      ccff_head,
                      top_width_0_height_0_subtile_0__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_0__pin_sc_out_0_,
                      top_width_0_height_0_subtile_1__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_1__pin_sc_out_0_,
                      top_width_0_height_0_subtile_2__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_2__pin_sc_out_0_,
                      top_width_0_height_0_subtile_3__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_3__pin_sc_out_0_,
                      top_width_0_height_0_subtile_4__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_4__pin_sc_out_0_,
                      top_width_0_height_0_subtile_5__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_5__pin_sc_out_0_,
                      top_width_0_height_0_subtile_6__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_6__pin_sc_out_0_,
                      top_width_0_height_0_subtile_7__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_7__pin_sc_out_0_,
                      top_width_0_height_0_subtile_8__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_8__pin_sc_out_0_,
                      top_width_0_height_0_subtile_9__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_9__pin_sc_out_0_,
                      top_width_0_height_0_subtile_10__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_10__pin_sc_out_0_,
                      top_width_0_height_0_subtile_11__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_11__pin_sc_out_0_,
                      top_width_0_height_0_subtile_12__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_12__pin_sc_out_0_,
                      top_width_0_height_0_subtile_13__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_13__pin_sc_out_0_,
                      top_width_0_height_0_subtile_14__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_14__pin_sc_out_0_,
                      top_width_0_height_0_subtile_15__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_15__pin_sc_out_0_,
                      top_width_0_height_0_subtile_16__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_16__pin_sc_out_0_,
                      top_width_0_height_0_subtile_17__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_17__pin_sc_out_0_,
                      top_width_0_height_0_subtile_18__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_18__pin_sc_out_0_,
                      top_width_0_height_0_subtile_19__pin_a2f_o_0_,
                      top_width_0_height_0_subtile_19__pin_sc_out_0_,
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
//----- GLOBAL PORTS -----
input [0:0] CFG_DONE;
//----- GPIN PORTS -----
input [0:19] gfpga_pad_QL_PREIO_A2F;
//----- GPOUT PORTS -----
output [0:19] gfpga_pad_QL_PREIO_F2A;
//----- GPOUT PORTS -----
output [0:19] gfpga_pad_QL_PREIO_F2A_DEF0;
//----- GPOUT PORTS -----
output [0:19] gfpga_pad_QL_PREIO_F2A_DEF1;
//----- GPOUT PORTS -----
output [0:19] gfpga_pad_QL_PREIO_F2A_CLK;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_0__pin_sc_in_0_;
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
input [0:0] top_width_0_height_0_subtile_1__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_1__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_1__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_1__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_1__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_1__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_1__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_1__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_2__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_2__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_2__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_2__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_2__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_2__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_2__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_2__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_3__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_3__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_3__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_3__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_3__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_3__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_3__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_3__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_4__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_4__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_4__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_4__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_4__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_4__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_4__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_4__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_5__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_5__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_5__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_5__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_5__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_5__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_5__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_5__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_6__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_6__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_6__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_6__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_6__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_6__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_6__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_6__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_7__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_7__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_7__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_7__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_7__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_7__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_7__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_7__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_8__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_8__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_8__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_8__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_8__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_8__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_8__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_8__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_9__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_9__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_9__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_9__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_9__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_9__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_9__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_9__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_10__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_10__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_10__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_10__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_10__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_10__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_10__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_10__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_11__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_11__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_11__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_11__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_11__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_11__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_11__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_11__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_12__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_12__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_12__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_12__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_12__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_12__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_12__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_12__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_13__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_13__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_13__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_13__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_13__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_13__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_13__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_13__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_14__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_14__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_14__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_14__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_14__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_14__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_14__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_14__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_15__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_15__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_15__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_15__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_15__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_15__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_15__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_15__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_16__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_16__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_16__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_16__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_16__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_16__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_16__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_16__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_17__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_17__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_17__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_17__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_17__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_17__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_17__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_17__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_18__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_18__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_18__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_18__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_18__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_18__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_18__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_18__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_19__pin_f2a_i_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_19__pin_sc_in_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_19__pin_global_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_19__pin_scan_reset_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_19__pin_clk_0_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_19__pin_clk_1_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_19__pin_clk_2_;
//----- INPUT PORTS -----
input [0:0] top_width_0_height_0_subtile_19__pin_clk_3_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_0__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_1__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_1__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_2__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_2__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_3__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_3__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_4__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_4__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_5__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_5__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_6__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_6__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_7__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_7__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_8__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_8__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_9__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_9__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_10__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_10__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_11__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_11__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_12__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_12__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_13__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_13__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_14__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_14__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_15__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_15__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_16__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_16__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_17__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_17__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_18__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_18__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_19__pin_a2f_o_0_;
//----- OUTPUT PORTS -----
output [0:0] top_width_0_height_0_subtile_19__pin_sc_out_0_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_io_mode_io_ logical_tile_io_mode_io__0 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[0]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[0]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[0]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[0]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[0]),
		.io_f2a_i(top_width_0_height_0_subtile_0__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_0__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_0__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_0__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_0__pin_clk_0_, top_width_0_height_0_subtile_0__pin_clk_1_, top_width_0_height_0_subtile_0__pin_clk_2_, top_width_0_height_0_subtile_0__pin_clk_3_}),
		.ccff_head(ccff_head),
		.io_a2f_o(top_width_0_height_0_subtile_0__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_0__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__0_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__1 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[1]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[1]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[1]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[1]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[1]),
		.io_f2a_i(top_width_0_height_0_subtile_1__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_1__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_1__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_1__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_1__pin_clk_0_, top_width_0_height_0_subtile_1__pin_clk_1_, top_width_0_height_0_subtile_1__pin_clk_2_, top_width_0_height_0_subtile_1__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__0_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_1__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_1__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__1_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__2 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[2]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[2]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[2]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[2]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[2]),
		.io_f2a_i(top_width_0_height_0_subtile_2__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_2__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_2__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_2__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_2__pin_clk_0_, top_width_0_height_0_subtile_2__pin_clk_1_, top_width_0_height_0_subtile_2__pin_clk_2_, top_width_0_height_0_subtile_2__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__1_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_2__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_2__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__2_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__3 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[3]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[3]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[3]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[3]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[3]),
		.io_f2a_i(top_width_0_height_0_subtile_3__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_3__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_3__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_3__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_3__pin_clk_0_, top_width_0_height_0_subtile_3__pin_clk_1_, top_width_0_height_0_subtile_3__pin_clk_2_, top_width_0_height_0_subtile_3__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__2_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_3__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_3__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__3_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__4 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[4]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[4]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[4]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[4]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[4]),
		.io_f2a_i(top_width_0_height_0_subtile_4__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_4__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_4__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_4__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_4__pin_clk_0_, top_width_0_height_0_subtile_4__pin_clk_1_, top_width_0_height_0_subtile_4__pin_clk_2_, top_width_0_height_0_subtile_4__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__3_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_4__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_4__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__4_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__5 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[5]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[5]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[5]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[5]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[5]),
		.io_f2a_i(top_width_0_height_0_subtile_5__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_5__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_5__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_5__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_5__pin_clk_0_, top_width_0_height_0_subtile_5__pin_clk_1_, top_width_0_height_0_subtile_5__pin_clk_2_, top_width_0_height_0_subtile_5__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__4_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_5__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_5__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__5_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__6 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[6]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[6]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[6]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[6]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[6]),
		.io_f2a_i(top_width_0_height_0_subtile_6__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_6__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_6__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_6__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_6__pin_clk_0_, top_width_0_height_0_subtile_6__pin_clk_1_, top_width_0_height_0_subtile_6__pin_clk_2_, top_width_0_height_0_subtile_6__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__5_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_6__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_6__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__6_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__7 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[7]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[7]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[7]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[7]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[7]),
		.io_f2a_i(top_width_0_height_0_subtile_7__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_7__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_7__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_7__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_7__pin_clk_0_, top_width_0_height_0_subtile_7__pin_clk_1_, top_width_0_height_0_subtile_7__pin_clk_2_, top_width_0_height_0_subtile_7__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__6_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_7__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_7__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__7_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__8 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[8]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[8]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[8]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[8]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[8]),
		.io_f2a_i(top_width_0_height_0_subtile_8__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_8__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_8__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_8__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_8__pin_clk_0_, top_width_0_height_0_subtile_8__pin_clk_1_, top_width_0_height_0_subtile_8__pin_clk_2_, top_width_0_height_0_subtile_8__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__7_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_8__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_8__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__8_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__9 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[9]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[9]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[9]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[9]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[9]),
		.io_f2a_i(top_width_0_height_0_subtile_9__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_9__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_9__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_9__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_9__pin_clk_0_, top_width_0_height_0_subtile_9__pin_clk_1_, top_width_0_height_0_subtile_9__pin_clk_2_, top_width_0_height_0_subtile_9__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__8_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_9__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_9__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__9_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__10 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[10]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[10]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[10]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[10]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[10]),
		.io_f2a_i(top_width_0_height_0_subtile_10__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_10__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_10__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_10__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_10__pin_clk_0_, top_width_0_height_0_subtile_10__pin_clk_1_, top_width_0_height_0_subtile_10__pin_clk_2_, top_width_0_height_0_subtile_10__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__9_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_10__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_10__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__10_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__11 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[11]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[11]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[11]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[11]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[11]),
		.io_f2a_i(top_width_0_height_0_subtile_11__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_11__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_11__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_11__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_11__pin_clk_0_, top_width_0_height_0_subtile_11__pin_clk_1_, top_width_0_height_0_subtile_11__pin_clk_2_, top_width_0_height_0_subtile_11__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__10_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_11__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_11__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__11_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__12 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[12]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[12]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[12]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[12]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[12]),
		.io_f2a_i(top_width_0_height_0_subtile_12__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_12__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_12__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_12__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_12__pin_clk_0_, top_width_0_height_0_subtile_12__pin_clk_1_, top_width_0_height_0_subtile_12__pin_clk_2_, top_width_0_height_0_subtile_12__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__11_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_12__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_12__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__12_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__13 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[13]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[13]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[13]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[13]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[13]),
		.io_f2a_i(top_width_0_height_0_subtile_13__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_13__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_13__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_13__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_13__pin_clk_0_, top_width_0_height_0_subtile_13__pin_clk_1_, top_width_0_height_0_subtile_13__pin_clk_2_, top_width_0_height_0_subtile_13__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__12_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_13__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_13__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__13_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__14 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[14]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[14]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[14]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[14]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[14]),
		.io_f2a_i(top_width_0_height_0_subtile_14__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_14__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_14__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_14__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_14__pin_clk_0_, top_width_0_height_0_subtile_14__pin_clk_1_, top_width_0_height_0_subtile_14__pin_clk_2_, top_width_0_height_0_subtile_14__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__13_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_14__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_14__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__14_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__15 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[15]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[15]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[15]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[15]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[15]),
		.io_f2a_i(top_width_0_height_0_subtile_15__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_15__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_15__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_15__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_15__pin_clk_0_, top_width_0_height_0_subtile_15__pin_clk_1_, top_width_0_height_0_subtile_15__pin_clk_2_, top_width_0_height_0_subtile_15__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__14_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_15__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_15__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__15_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__16 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[16]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[16]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[16]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[16]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[16]),
		.io_f2a_i(top_width_0_height_0_subtile_16__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_16__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_16__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_16__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_16__pin_clk_0_, top_width_0_height_0_subtile_16__pin_clk_1_, top_width_0_height_0_subtile_16__pin_clk_2_, top_width_0_height_0_subtile_16__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__15_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_16__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_16__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__16_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__17 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[17]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[17]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[17]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[17]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[17]),
		.io_f2a_i(top_width_0_height_0_subtile_17__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_17__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_17__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_17__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_17__pin_clk_0_, top_width_0_height_0_subtile_17__pin_clk_1_, top_width_0_height_0_subtile_17__pin_clk_2_, top_width_0_height_0_subtile_17__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__16_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_17__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_17__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__17_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__18 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[18]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[18]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[18]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[18]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[18]),
		.io_f2a_i(top_width_0_height_0_subtile_18__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_18__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_18__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_18__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_18__pin_clk_0_, top_width_0_height_0_subtile_18__pin_clk_1_, top_width_0_height_0_subtile_18__pin_clk_2_, top_width_0_height_0_subtile_18__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__17_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_18__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_18__pin_sc_out_0_),
		.ccff_tail(logical_tile_io_mode_io__18_ccff_tail));

	logical_tile_io_mode_io_ logical_tile_io_mode_io__19 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.CFG_DONE(CFG_DONE),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[19]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[19]),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0[19]),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1[19]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[19]),
		.io_f2a_i(top_width_0_height_0_subtile_19__pin_f2a_i_0_),
		.io_sc_in(top_width_0_height_0_subtile_19__pin_sc_in_0_),
		.io_global_reset(top_width_0_height_0_subtile_19__pin_global_reset_0_),
		.io_scan_reset(top_width_0_height_0_subtile_19__pin_scan_reset_0_),
		.io_clk({top_width_0_height_0_subtile_19__pin_clk_0_, top_width_0_height_0_subtile_19__pin_clk_1_, top_width_0_height_0_subtile_19__pin_clk_2_, top_width_0_height_0_subtile_19__pin_clk_3_}),
		.ccff_head(logical_tile_io_mode_io__18_ccff_tail),
		.io_a2f_o(top_width_0_height_0_subtile_19__pin_a2f_o_0_),
		.io_sc_out(top_width_0_height_0_subtile_19__pin_sc_out_0_),
		.ccff_tail(ccff_tail));

endmodule
// ----- END Verilog module for grid_io_bottom -----

//----- Default net type -----
`default_nettype none



// ----- END Grid Verilog module: grid_io_bottom -----

