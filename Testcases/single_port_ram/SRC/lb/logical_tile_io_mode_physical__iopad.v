//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: iopad
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: iopad -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_io_mode_physical__iopad -----
module logical_tile_io_mode_physical__iopad(test_en,
                                            scan_mode,
                                            scan_clk,
                                            config_enable,
                                            prog_clock,
                                            CFG_DONE,
                                            gfpga_pad_QL_PREIO_A2F,
                                            gfpga_pad_QL_PREIO_F2A,
                                            gfpga_pad_QL_PREIO_F2A_DEF0,
                                            gfpga_pad_QL_PREIO_F2A_DEF1,
                                            gfpga_pad_QL_PREIO_F2A_CLK,
                                            iopad_f2a_i,
                                            iopad_sc_in,
                                            iopad_reset,
                                            iopad_clk,
                                            ccff_head,
                                            iopad_a2f_o,
                                            iopad_sc_out,
                                            ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] test_en;
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] scan_clk;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- GLOBAL PORTS -----
input [0:0] CFG_DONE;
//----- GPIN PORTS -----
input [0:0] gfpga_pad_QL_PREIO_A2F;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_QL_PREIO_F2A;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_QL_PREIO_F2A_DEF0;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_QL_PREIO_F2A_DEF1;
//----- GPOUT PORTS -----
output [0:0] gfpga_pad_QL_PREIO_F2A_CLK;
//----- INPUT PORTS -----
input [0:0] iopad_f2a_i;
//----- INPUT PORTS -----
input [0:0] iopad_sc_in;
//----- INPUT PORTS -----
input [0:0] iopad_reset;
//----- INPUT PORTS -----
input [0:0] iopad_clk;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] iopad_a2f_o;
//----- OUTPUT PORTS -----
output [0:0] iopad_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_io_mode_physical__iopad_mode_default__ff logical_tile_io_mode_physical__iopad_mode_default__ff_0 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_D(direct_interc_1_out),
		.ff_SI(direct_interc_2_out),
		.ff_reset(direct_interc_3_out),
		.ccff_head(ccff_head),
		.ff_Q(logical_tile_io_mode_physical__iopad_mode_default__ff_0_ff_Q),
		.ccff_tail(logical_tile_io_mode_physical__iopad_mode_default__ff_0_ccff_tail),
		.ff_clk(direct_interc_4_out));

	logical_tile_io_mode_physical__iopad_mode_default__ff logical_tile_io_mode_physical__iopad_mode_default__ff_1 (
		.test_en(test_en),
		.scan_mode(scan_mode),
		.scan_clk(scan_clk),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ff_D(direct_interc_5_out),
		.ff_SI(direct_interc_6_out),
		.ff_reset(direct_interc_7_out),
		.ccff_head(logical_tile_io_mode_physical__iopad_mode_default__ff_0_ccff_tail),
		.ff_Q(logical_tile_io_mode_physical__iopad_mode_default__ff_1_ff_Q),
		.ccff_tail(logical_tile_io_mode_physical__iopad_mode_default__ff_1_ccff_tail),
		.ff_clk(direct_interc_8_out));

	logical_tile_io_mode_physical__iopad_mode_default__pad logical_tile_io_mode_physical__iopad_mode_default__pad_0 (
		.CFG_DONE(CFG_DONE),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A),
		.gfpga_pad_QL_PREIO_F2A_DEF0(gfpga_pad_QL_PREIO_F2A_DEF0),
		.gfpga_pad_QL_PREIO_F2A_DEF1(gfpga_pad_QL_PREIO_F2A_DEF1),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK),
		.pad_outpad(mux_1level_io_size2_1_out),
		.ccff_head(logical_tile_io_mode_physical__iopad_mode_default__ff_1_ccff_tail),
		.pad_inpad(logical_tile_io_mode_physical__iopad_mode_default__pad_0_pad_inpad),
		.ccff_tail(logical_tile_io_mode_physical__iopad_mode_default__pad_0_ccff_tail),
		.pad_clk(direct_interc_9_out));

	mux_1level_io_size2 mux_iopad_a2f_o_0 (
		.in({logical_tile_io_mode_physical__iopad_mode_default__pad_0_pad_inpad, logical_tile_io_mode_physical__iopad_mode_default__ff_1_ff_Q}),
		.sram(mux_1level_io_size2_0_sram),
		.sram_inv(mux_1level_io_size2_0_sram_inv),
		.out(iopad_a2f_o));

	mux_1level_io_size2 mux_pad_0_outpad_0 (
		.in({iopad_f2a_i, logical_tile_io_mode_physical__iopad_mode_default__ff_0_ff_Q}),
		.sram(mux_1level_io_size2_1_sram),
		.sram_inv(mux_1level_io_size2_1_sram_inv),
		.out(mux_1level_io_size2_1_out));

	mux_1level_io_size2_mem mem_iopad_a2f_o_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(logical_tile_io_mode_physical__iopad_mode_default__pad_0_ccff_tail),
		.ccff_tail(mux_1level_io_size2_mem_0_ccff_tail),
		.mem_out(mux_1level_io_size2_0_sram),
		.mem_outb(mux_1level_io_size2_0_sram_inv));

	mux_1level_io_size2_mem mem_pad_0_outpad_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(mux_1level_io_size2_mem_0_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_1level_io_size2_1_sram),
		.mem_outb(mux_1level_io_size2_1_sram_inv));

	direct_interc direct_interc_0_ (
		.in(logical_tile_io_mode_physical__iopad_mode_default__ff_1_ff_Q),
		.out(iopad_sc_out));

	direct_interc direct_interc_1_ (
		.in(iopad_f2a_i),
		.out(direct_interc_1_out));

	direct_interc direct_interc_2_ (
		.in(iopad_sc_in),
		.out(direct_interc_2_out));

	direct_interc direct_interc_3_ (
		.in(iopad_reset),
		.out(direct_interc_3_out));

	direct_interc direct_interc_4_ (
		.in(iopad_clk),
		.out(direct_interc_4_out));

	direct_interc direct_interc_5_ (
		.in(logical_tile_io_mode_physical__iopad_mode_default__pad_0_pad_inpad),
		.out(direct_interc_5_out));

	direct_interc direct_interc_6_ (
		.in(logical_tile_io_mode_physical__iopad_mode_default__ff_0_ff_Q),
		.out(direct_interc_6_out));

	direct_interc direct_interc_7_ (
		.in(iopad_reset),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(iopad_clk),
		.out(direct_interc_8_out));

	direct_interc direct_interc_9_ (
		.in(iopad_clk),
		.out(direct_interc_9_out));

endmodule
// ----- END Verilog module for logical_tile_io_mode_physical__iopad -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: iopad -----
