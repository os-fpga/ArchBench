//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: ff_phy
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy -----
module logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy(ff_phy_D,
                                                                                     ff_phy_SI,
                                                                                     ff_phy_R,
                                                                                     ff_phy_E,
                                                                                     ff_phy_SO,
                                                                                     ff_phy_Q,
                                                                                     ff_phy_C);
//----- INPUT PORTS -----
input [0:0] ff_phy_D;
//----- INPUT PORTS -----
input [0:0] ff_phy_SI;
//----- INPUT PORTS -----
input [0:0] ff_phy_R;
//----- INPUT PORTS -----
input [0:0] ff_phy_E;
//----- OUTPUT PORTS -----
output [0:0] ff_phy_SO;
//----- OUTPUT PORTS -----
output [0:0] ff_phy_Q;
//----- CLOCK PORTS -----
input [0:0] ff_phy_C;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	GC_FF GC_FF_0_ (
		.D(ff_phy_D),
		.SI(ff_phy_SI),
		.R(ff_phy_R),
		.E(ff_phy_E),
		.C(ff_phy_C),
		.SO(ff_phy_SO),
		.Q(ff_phy_Q));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__ff_phy -----

//----- Default net type -----
`default_nettype none



