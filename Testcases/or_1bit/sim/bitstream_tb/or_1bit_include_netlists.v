//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Sun Feb 26 20:26:03 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "../../../SRC/fabric_netlists.v"

// `include "../../sim/bitstream_tb/or_1bit_top_formal_verification.v"
`include "../../sim/bitstream_tb/or_1bit_formal_random_top_tb.v"
