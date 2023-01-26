//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: clk_inv
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_dsp_mode_default__clk_opt_mode_default__clk_inv -----
module logical_tile_dsp_mode_default__clk_opt_mode_default__clk_inv(scan_mode,
                                                                    clk_inv_z,
                                                                    clk_inv_a);
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- OUTPUT PORTS -----
output [0:0] clk_inv_z;
//----- CLOCK PORTS -----
input [0:0] clk_inv_a;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	clock_inverter clock_inverter_0_ (
		.scan_mode(scan_mode),
		.a(clk_inv_a),
		.z(clk_inv_z));

endmodule
// ----- END Verilog module for logical_tile_dsp_mode_default__clk_opt_mode_default__clk_inv -----

//----- Default net type -----
`default_nettype none



