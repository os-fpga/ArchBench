//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: fa_2bit_phy
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: fa_2bit_phy -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy -----
module logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy(config_enable,
                                                                                                                                  prog_clock,
                                                                                                                                  fa_2bit_phy_p,
                                                                                                                                  fa_2bit_phy_g,
                                                                                                                                  fa_2bit_phy_cin,
                                                                                                                                  ccff_head,
                                                                                                                                  fa_2bit_phy_sum,
                                                                                                                                  fa_2bit_phy_cout,
                                                                                                                                  ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:1] fa_2bit_phy_p;
//----- INPUT PORTS -----
input [0:1] fa_2bit_phy_g;
//----- INPUT PORTS -----
input [0:0] fa_2bit_phy_cin;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:1] fa_2bit_phy_sum;
//----- OUTPUT PORTS -----
output [0:0] fa_2bit_phy_cout;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_0 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_1bit_p(direct_interc_3_out),
		.fa_1bit_g(direct_interc_4_out),
		.fa_1bit_cin(direct_interc_5_out),
		.ccff_head(ccff_head),
		.fa_1bit_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_0_fa_1bit_sum),
		.fa_1bit_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_0_fa_1bit_cout),
		.ccff_tail(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_0_ccff_tail));

	logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_1 (
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.fa_1bit_p(direct_interc_6_out),
		.fa_1bit_g(direct_interc_7_out),
		.fa_1bit_cin(direct_interc_8_out),
		.ccff_head(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_0_ccff_tail),
		.fa_1bit_sum(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_1_fa_1bit_sum),
		.fa_1bit_cout(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_1_fa_1bit_cout),
		.ccff_tail(ccff_tail));

	direct_interc direct_interc_0_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_0_fa_1bit_sum),
		.out(fa_2bit_phy_sum[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_1_fa_1bit_sum),
		.out(fa_2bit_phy_sum[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_1_fa_1bit_cout),
		.out(fa_2bit_phy_cout));

	direct_interc direct_interc_3_ (
		.in(fa_2bit_phy_p[0]),
		.out(direct_interc_3_out));

	direct_interc direct_interc_4_ (
		.in(fa_2bit_phy_g[0]),
		.out(direct_interc_4_out));

	direct_interc direct_interc_5_ (
		.in(fa_2bit_phy_cin),
		.out(direct_interc_5_out));

	direct_interc direct_interc_6_ (
		.in(fa_2bit_phy_p[1]),
		.out(direct_interc_6_out));

	direct_interc direct_interc_7_ (
		.in(fa_2bit_phy_g[1]),
		.out(direct_interc_7_out));

	direct_interc direct_interc_8_ (
		.in(logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy_mode_default__fa_1bit_0_fa_1bit_cout),
		.out(direct_interc_8_out));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_wrapper_mode_default__comb_block_mode_default__fa_2bit_block_mode_physical__fa_2bit_phy -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: fa_2bit_phy -----
