//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: io
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: io -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_io_mode_io_ -----
module logical_tile_io_mode_io_(global_reset,
                                scan_mode,
                                scan_enable,
                                config_enable,
                                prog_clock,
                                gfpga_pad_RS_PREIO_A2F,
                                gfpga_pad_RS_PREIO_F2A,
                                gfpga_pad_RS_PREIO_SOC_CLK,
                                io_f2a_i,
                                io_sc_in,
                                io_clk,
                                ccff_head,
                                io_a2f_o,
                                io_sc_out,
                                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] global_reset;
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- GPIN PORTS -----
input [0:0] gfpga_pad_RS_PREIO_A2F;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_RS_PREIO_F2A;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_RS_PREIO_SOC_CLK;
//----- INPUT PORTS -----
input [0:0] io_f2a_i;
//----- INPUT PORTS -----
input [0:0] io_sc_in;
//----- INPUT PORTS -----
input [0:15] io_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] io_a2f_o;
//----- OUTPUT PORTS -----
output [0:0] io_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:3] mux_tree_clock_size16_0_sram;
wire [0:3] mux_tree_clock_size16_0_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_io_mode_physical__iopad logical_tile_io_mode_physical__iopad_0 (
		.global_reset(global_reset),
		.scan_mode(scan_mode),
		.scan_enable(scan_enable),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.gfpga_pad_RS_PREIO_A2F(gfpga_pad_RS_PREIO_A2F),
		.gfpga_pad_RS_PREIO_F2A(gfpga_pad_RS_PREIO_F2A),
		.gfpga_pad_RS_PREIO_SOC_CLK(gfpga_pad_RS_PREIO_SOC_CLK),
		.iopad_sc_in(direct_interc_2_out),
		.iopad_f2a_i(direct_interc_3_out),
		.iopad_clk(mux_tree_clock_size16_0_out),
		.ccff_head(ccff_head),
		.iopad_a2f_o(logical_tile_io_mode_physical__iopad_0_iopad_a2f_o),
		.iopad_sc_out(logical_tile_io_mode_physical__iopad_0_iopad_sc_out),
		.ccff_tail(logical_tile_io_mode_physical__iopad_0_ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_io_mode_physical__iopad_0_iopad_a2f_o),
		.out(io_a2f_o));

	direct_interc direct_interc_1_ (
		.in(logical_tile_io_mode_physical__iopad_0_iopad_sc_out),
		.out(io_sc_out));

	direct_interc direct_interc_2_ (
		.in(io_sc_in),
		.out(direct_interc_2_out));

	direct_interc direct_interc_3_ (
		.in(io_f2a_i),
		.out(direct_interc_3_out));

	mux_tree_clock_size16 mux_iopad_0_clk_0 (
		.in(io_clk[0:15]),
		.sram(mux_tree_clock_size16_0_sram[0:3]),
		.sram_inv(mux_tree_clock_size16_0_sram_inv[0:3]),
		.out(mux_tree_clock_size16_0_out));

	mux_tree_clock_size16_mem mem_iopad_0_clk_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_io_mode_physical__iopad_0_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_tree_clock_size16_0_sram[0:3]),
		.mem_outb(mux_tree_clock_size16_0_sram_inv[0:3]));

endmodule
// ----- END Verilog module for logical_tile_io_mode_io_ -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: io -----
