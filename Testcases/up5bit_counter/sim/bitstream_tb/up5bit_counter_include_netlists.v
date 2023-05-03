//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed May  3 16:14:45 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "../../../SRC/fabric_netlists.v"

// `include "BIT_SIM/up5bit_counter_top_formal_verification.v"
`include "../../sim/bitstream_tb/up5bit_counter_formal_random_top_tb.v"
