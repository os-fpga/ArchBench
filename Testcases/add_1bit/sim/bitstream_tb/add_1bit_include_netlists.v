//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Feb 27 10:53:52 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "../../SRC/fabric_netlists.v"

// `include "./SRC/add_1bit_top_formal_verification.v"
`include "../../sim/bitstream_tb/add_1bit_formal_random_top_tb.v"
