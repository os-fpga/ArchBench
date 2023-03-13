//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Mar  6 15:03:04 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "../../../SRC/fabric_netlists.v"

// `include "../../sim/bitstream_tb/mux_8_1_a_top_formal_verification.v"
`include "../../sim/bitstream_tb/mux_8_1_a_formal_random_top_tb.v"
