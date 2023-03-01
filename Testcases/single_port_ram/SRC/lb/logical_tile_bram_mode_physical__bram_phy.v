//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: bram_phy
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_physical__bram_phy -----
module logical_tile_bram_mode_physical__bram_phy(test_en,
                                                 scan_mode,
                                                 scan_clk,
                                                 config_enable,
                                                 prog_clock,
                                                 bram_phy_WDATA_A1_i,
                                                 bram_phy_WDATA_A2_i,
                                                 bram_phy_ADDR_A1_i,
                                                 bram_phy_ADDR_A2_i,
                                                 bram_phy_REN_A1_i,
                                                 bram_phy_REN_A2_i,
                                                 bram_phy_WEN_A1_i,
                                                 bram_phy_WEN_A2_i,
                                                 bram_phy_BE_A1_i,
                                                 bram_phy_BE_A2_i,
                                                 bram_phy_WDATA_B1_i,
                                                 bram_phy_WDATA_B2_i,
                                                 bram_phy_ADDR_B1_i,
                                                 bram_phy_ADDR_B2_i,
                                                 bram_phy_REN_B1_i,
                                                 bram_phy_REN_B2_i,
                                                 bram_phy_WEN_B1_i,
                                                 bram_phy_WEN_B2_i,
                                                 bram_phy_BE_B1_i,
                                                 bram_phy_BE_B2_i,
                                                 bram_phy_FLUSH1_i,
                                                 bram_phy_FLUSH2_i,
                                                 bram_phy_RAM_ID_i,
                                                 bram_phy_PL_INIT_i,
                                                 bram_phy_PL_ENA_i,
                                                 bram_phy_PL_REN_i,
                                                 bram_phy_PL_WEN_i,
                                                 bram_phy_PL_ADDR_i,
                                                 bram_phy_PL_DATA_i,
                                                 bram_phy_reset,
                                                 bram_phy_scan_reset,
                                                 bram_phy_sc_in,
                                                 ccff_head,
                                                 bram_phy_RDATA_A1_o,
                                                 bram_phy_RDATA_A2_o,
                                                 bram_phy_RDATA_B1_o,
                                                 bram_phy_RDATA_B2_o,
                                                 bram_phy_PL_INIT_o,
                                                 bram_phy_PL_ENA_o,
                                                 bram_phy_PL_REN_o,
                                                 bram_phy_PL_CLK_o,
                                                 bram_phy_PL_WEN_o,
                                                 bram_phy_PL_ADDR_o,
                                                 bram_phy_PL_DATA_o,
                                                 bram_phy_sc_out,
                                                 ccff_tail,
                                                 bram_phy_CLK_A1_i,
                                                 bram_phy_CLK_A2_i,
                                                 bram_phy_CLK_B1_i,
                                                 bram_phy_CLK_B2_i,
                                                 bram_phy_PL_CLK_i);
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
//----- INPUT PORTS -----
input [0:17] bram_phy_WDATA_A1_i;
//----- INPUT PORTS -----
input [0:17] bram_phy_WDATA_A2_i;
//----- INPUT PORTS -----
input [0:14] bram_phy_ADDR_A1_i;
//----- INPUT PORTS -----
input [0:13] bram_phy_ADDR_A2_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_REN_A1_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_REN_A2_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_WEN_A1_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_WEN_A2_i;
//----- INPUT PORTS -----
input [0:1] bram_phy_BE_A1_i;
//----- INPUT PORTS -----
input [0:1] bram_phy_BE_A2_i;
//----- INPUT PORTS -----
input [0:17] bram_phy_WDATA_B1_i;
//----- INPUT PORTS -----
input [0:17] bram_phy_WDATA_B2_i;
//----- INPUT PORTS -----
input [0:14] bram_phy_ADDR_B1_i;
//----- INPUT PORTS -----
input [0:13] bram_phy_ADDR_B2_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_REN_B1_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_REN_B2_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_WEN_B1_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_WEN_B2_i;
//----- INPUT PORTS -----
input [0:1] bram_phy_BE_B1_i;
//----- INPUT PORTS -----
input [0:1] bram_phy_BE_B2_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_FLUSH1_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_FLUSH2_i;
//----- INPUT PORTS -----
input [0:19] bram_phy_RAM_ID_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_PL_INIT_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_PL_ENA_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_PL_REN_i;
//----- INPUT PORTS -----
input [0:1] bram_phy_PL_WEN_i;
//----- INPUT PORTS -----
input [0:31] bram_phy_PL_ADDR_i;
//----- INPUT PORTS -----
input [0:35] bram_phy_PL_DATA_i;
//----- INPUT PORTS -----
input [0:0] bram_phy_reset;
//----- INPUT PORTS -----
input [0:0] bram_phy_scan_reset;
//----- INPUT PORTS -----
input [0:5] bram_phy_sc_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:17] bram_phy_RDATA_A1_o;
//----- OUTPUT PORTS -----
output [0:17] bram_phy_RDATA_A2_o;
//----- OUTPUT PORTS -----
output [0:17] bram_phy_RDATA_B1_o;
//----- OUTPUT PORTS -----
output [0:17] bram_phy_RDATA_B2_o;
//----- OUTPUT PORTS -----
output [0:0] bram_phy_PL_INIT_o;
//----- OUTPUT PORTS -----
output [0:0] bram_phy_PL_ENA_o;
//----- OUTPUT PORTS -----
output [0:0] bram_phy_PL_REN_o;
//----- OUTPUT PORTS -----
output [0:0] bram_phy_PL_CLK_o;
//----- OUTPUT PORTS -----
output [0:1] bram_phy_PL_WEN_o;
//----- OUTPUT PORTS -----
output [0:31] bram_phy_PL_ADDR_o;
//----- OUTPUT PORTS -----
output [0:35] bram_phy_PL_DATA_o;
//----- OUTPUT PORTS -----
output [0:5] bram_phy_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;
//----- CLOCK PORTS -----
input [0:0] bram_phy_CLK_A1_i;
//----- CLOCK PORTS -----
input [0:0] bram_phy_CLK_A2_i;
//----- CLOCK PORTS -----
input [0:0] bram_phy_CLK_B1_i;
//----- CLOCK PORTS -----
input [0:0] bram_phy_CLK_B2_i;
//----- CLOCK PORTS -----
input [0:0] bram_phy_PL_CLK_i;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:80] QL_BRAM_0_mode;
wire [0:80] QL_BRAM_RS_CCFF_mem_undriven_mem_outb;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	QL_BRAM QL_BRAM_0_ (
		.SCAN_EN_i(test_en),
		.SCAN_MODE_i(scan_mode),
		.SCAN_CLK_i(scan_clk),
		.WEN_A1_i(bram_phy_WEN_A1_i),
		.WEN_B1_i(bram_phy_WEN_B1_i),
		.BE_A1_i(bram_phy_BE_A1_i[0:1]),
		.BE_B1_i(bram_phy_BE_B1_i[0:1]),
		.REN_A1_i(bram_phy_REN_A1_i),
		.REN_B1_i(bram_phy_REN_B1_i),
		.ADDR_A1_i(bram_phy_ADDR_A1_i[0:14]),
		.ADDR_B1_i(bram_phy_ADDR_B1_i[0:14]),
		.WDATA_A1_i(bram_phy_WDATA_A1_i[0:17]),
		.WDATA_B1_i(bram_phy_WDATA_B1_i[0:17]),
		.FLUSH1_i(bram_phy_FLUSH1_i),
		.WEN_A2_i(bram_phy_WEN_A2_i),
		.WEN_B2_i(bram_phy_WEN_B2_i),
		.BE_A2_i(bram_phy_BE_A2_i[0:1]),
		.BE_B2_i(bram_phy_BE_B2_i[0:1]),
		.REN_A2_i(bram_phy_REN_A2_i),
		.REN_B2_i(bram_phy_REN_B2_i),
		.ADDR_A2_i(bram_phy_ADDR_A2_i[0:13]),
		.ADDR_B2_i(bram_phy_ADDR_B2_i[0:13]),
		.WDATA_A2_i(bram_phy_WDATA_A2_i[0:17]),
		.WDATA_B2_i(bram_phy_WDATA_B2_i[0:17]),
		.FLUSH2_i(bram_phy_FLUSH2_i),
		.RAM_ID_i(bram_phy_RAM_ID_i[0:19]),
		.PL_INIT_i(bram_phy_PL_INIT_i),
		.PL_ENA_i(bram_phy_PL_ENA_i),
		.PL_REN_i(bram_phy_PL_REN_i),
		.PL_WEN_i(bram_phy_PL_WEN_i[0:1]),
		.PL_ADDR_i(bram_phy_PL_ADDR_i[0:31]),
		.PL_DATA_i(bram_phy_PL_DATA_i[0:35]),
		.GRESET_i(bram_phy_reset),
		.SCAN_RESET_i(bram_phy_scan_reset),
		.SCAN_i(bram_phy_sc_in[0:5]),
		.CLK_A1_i(bram_phy_CLK_A1_i),
		.CLK_B1_i(bram_phy_CLK_B1_i),
		.CLK_A2_i(bram_phy_CLK_A2_i),
		.CLK_B2_i(bram_phy_CLK_B2_i),
		.PL_CLK_i(bram_phy_PL_CLK_i),
		.mode(QL_BRAM_0_mode[0:80]),
		.RDATA_A1_o(bram_phy_RDATA_A1_o[0:17]),
		.RDATA_B1_o(bram_phy_RDATA_B1_o[0:17]),
		.RDATA_A2_o(bram_phy_RDATA_A2_o[0:17]),
		.RDATA_B2_o(bram_phy_RDATA_B2_o[0:17]),
		.PL_INIT_o(bram_phy_PL_INIT_o),
		.PL_ENA_o(bram_phy_PL_ENA_o),
		.PL_REN_o(bram_phy_PL_REN_o),
		.PL_CLK_o(bram_phy_PL_CLK_o),
		.PL_WEN_o(bram_phy_PL_WEN_o[0:1]),
		.PL_ADDR_o(bram_phy_PL_ADDR_o[0:31]),
		.PL_DATA_o(bram_phy_PL_DATA_o[0:35]),
		.SCAN_o(bram_phy_sc_out[0:5]));

	QL_BRAM_RS_CCFF_mem QL_BRAM_RS_CCFF_mem (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(QL_BRAM_0_mode[0:80]),
		.mem_outb(QL_BRAM_RS_CCFF_mem_undriven_mem_outb[0:80]));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_physical__bram_phy -----

//----- Default net type -----
`default_nettype none



