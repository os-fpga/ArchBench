//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: pad
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_io_corner_mode_physical__iopad_mode_default__pad -----
module logical_tile_io_corner_mode_physical__iopad_mode_default__pad(gfpga_pad_RS_PREIO_A2F,
                                                                     gfpga_pad_RS_PREIO_F2A,
                                                                     gfpga_pad_RS_PREIO_SOC_CLK,
                                                                     pad_outpad,
                                                                     pad_inpad,
                                                                     pad_clk);
//----- GPIN PORTS -----
input [0:0] gfpga_pad_RS_PREIO_A2F;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_RS_PREIO_F2A;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_RS_PREIO_SOC_CLK;
//----- INPUT PORTS -----
input [0:0] pad_outpad;
//----- OUTPUT PORTS -----
output [0:0] pad_inpad;
//----- CLOCK PORTS -----
input [0:0] pad_clk;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	RS_PREIO RS_PREIO_0_ (
		.SOC_IN(gfpga_pad_RS_PREIO_A2F),
		.SOC_OUT(gfpga_pad_RS_PREIO_F2A),
		.SOC_CLK(gfpga_pad_RS_PREIO_SOC_CLK),
		.FPGA_OUT(pad_outpad),
		.FPGA_CLK(pad_clk),
		.FPGA_IN(pad_inpad));

endmodule
// ----- END Verilog module for logical_tile_io_corner_mode_physical__iopad_mode_default__pad -----

//----- Default net type -----
`default_nettype none



