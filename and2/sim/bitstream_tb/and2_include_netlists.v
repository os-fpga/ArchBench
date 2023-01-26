//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Jan 25 17:37:32 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "../../../fabric10x8/fabric_netlists.v"

`include "../../sim/bitstream_tb/and2_top_formal_verification.v"
`include "../../sim/bitstream_tb/and2_formal_random_top_tb.v"
