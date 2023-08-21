//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Aug 21 15:04:24 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "./../../../SRC/fabric_netlists.v"

// `include "./BIT_SIM/and2_top_formal_verification.v"
`include "./../../sim/bitstream_tb/and2_formal_random_top_tb.v"
