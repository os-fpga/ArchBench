//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Feb 27 15:07:31 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "../../../SRC/fabric_netlists.v"

// `include "./SRC/and8_top_formal_verification.v"
`include "../../sim/bitstream_tb/and8_formal_random_top_tb.v"
