//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: adder_carry
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry -----
module logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry(adder_carry_p,
                                                                                                                   adder_carry_g,
                                                                                                                   adder_carry_cin,
                                                                                                                   adder_carry_sumout,
                                                                                                                   adder_carry_cout);
//----- INPUT PORTS -----
input [0:0] adder_carry_p;
//----- INPUT PORTS -----
input [0:0] adder_carry_g;
//----- INPUT PORTS -----
input [0:0] adder_carry_cin;
//----- OUTPUT PORTS -----
output [0:0] adder_carry_sumout;
//----- OUTPUT PORTS -----
output [0:0] adder_carry_cout;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	QL_XOR_MUX2 QL_XOR_MUX2_0_ (
		.P(adder_carry_p),
		.G(adder_carry_g),
		.CI(adder_carry_cin),
		.SUMOUT(adder_carry_sumout),
		.CO(adder_carry_cout));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_mode_physical__fabric_mode_default__frac_logic_mode_default__adder_carry -----

//----- Default net type -----
`default_nettype none



