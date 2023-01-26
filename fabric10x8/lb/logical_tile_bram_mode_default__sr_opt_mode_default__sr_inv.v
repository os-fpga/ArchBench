//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: sr_inv
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__sr_opt_mode_default__sr_inv -----
module logical_tile_bram_mode_default__sr_opt_mode_default__sr_inv(sr_inv_a,
                                                                   sr_inv_z);
//----- INPUT PORTS -----
input [0:0] sr_inv_a;
//----- OUTPUT PORTS -----
output [0:0] sr_inv_z;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	inverter inverter_0_ (
		.a(sr_inv_a),
		.z(sr_inv_z));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__sr_opt_mode_default__sr_inv -----

//----- Default net type -----
`default_nettype none



