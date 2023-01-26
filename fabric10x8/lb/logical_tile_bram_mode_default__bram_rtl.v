//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for pb_type: bram_rtl
//	Author: Xifan TANG
//	Organization: University of Utah
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ----- BEGIN Physical programmable logic block Verilog module: bram_rtl -----
//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_bram_mode_default__bram_rtl -----
module logical_tile_bram_mode_default__bram_rtl(scan_mode,
                                                scan_enable,
                                                global_reset,
                                                rwm,
                                                config_enable,
                                                prog_clock,
                                                bram_rtl_WDATA_A1_i,
                                                bram_rtl_WDATA_A2_i,
                                                bram_rtl_ADDR_A1_i,
                                                bram_rtl_ADDR_A2_i,
                                                bram_rtl_REN_A1_i,
                                                bram_rtl_REN_A2_i,
                                                bram_rtl_WEN_A1_i,
                                                bram_rtl_WEN_A2_i,
                                                bram_rtl_BE_A1_i,
                                                bram_rtl_BE_A2_i,
                                                bram_rtl_FLUSH1_i,
                                                bram_rtl_WDATA_B1_i,
                                                bram_rtl_WDATA_B2_i,
                                                bram_rtl_ADDR_B1_i,
                                                bram_rtl_ADDR_B2_i,
                                                bram_rtl_REN_B1_i,
                                                bram_rtl_REN_B2_i,
                                                bram_rtl_WEN_B1_i,
                                                bram_rtl_WEN_B2_i,
                                                bram_rtl_BE_B1_i,
                                                bram_rtl_BE_B2_i,
                                                bram_rtl_FLUSH2_i,
                                                bram_rtl_RAM_ID_i,
                                                bram_rtl_PL_INIT_i,
                                                bram_rtl_PL_ENA_i,
                                                bram_rtl_PL_REN_i,
                                                bram_rtl_PL_WEN_i,
                                                bram_rtl_PL_ADDR_i,
                                                bram_rtl_PL_DATA_i,
                                                bram_rtl_sc_in,
                                                bram_rtl_CLK_A1_i,
                                                bram_rtl_CLK_A2_i,
                                                bram_rtl_CLK_B1_i,
                                                bram_rtl_CLK_B2_i,
                                                bram_rtl_PL_CLK_i,
                                                ccff_head,
                                                bram_rtl_RDATA_A1_o,
                                                bram_rtl_RDATA_A2_o,
                                                bram_rtl_RDATA_B1_o,
                                                bram_rtl_RDATA_B2_o,
                                                bram_rtl_PL_INIT_o,
                                                bram_rtl_PL_ENA_o,
                                                bram_rtl_PL_REN_o,
                                                bram_rtl_PL_CLK_o,
                                                bram_rtl_PL_WEN_o,
                                                bram_rtl_PL_ADDR_o,
                                                bram_rtl_PL_DATA_o,
                                                bram_rtl_sc_out,
                                                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] scan_mode;
//----- GLOBAL PORTS -----
input [0:0] scan_enable;
//----- GLOBAL PORTS -----
input [0:0] global_reset;
//----- GLOBAL PORTS -----
input [0:2] rwm;
//----- GLOBAL PORTS -----
input [0:0] config_enable;
//----- GLOBAL PORTS -----
input [0:0] prog_clock;
//----- INPUT PORTS -----
input [0:17] bram_rtl_WDATA_A1_i;
//----- INPUT PORTS -----
input [0:17] bram_rtl_WDATA_A2_i;
//----- INPUT PORTS -----
input [0:14] bram_rtl_ADDR_A1_i;
//----- INPUT PORTS -----
input [0:13] bram_rtl_ADDR_A2_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_REN_A1_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_REN_A2_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_WEN_A1_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_WEN_A2_i;
//----- INPUT PORTS -----
input [0:1] bram_rtl_BE_A1_i;
//----- INPUT PORTS -----
input [0:1] bram_rtl_BE_A2_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_FLUSH1_i;
//----- INPUT PORTS -----
input [0:17] bram_rtl_WDATA_B1_i;
//----- INPUT PORTS -----
input [0:17] bram_rtl_WDATA_B2_i;
//----- INPUT PORTS -----
input [0:14] bram_rtl_ADDR_B1_i;
//----- INPUT PORTS -----
input [0:13] bram_rtl_ADDR_B2_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_REN_B1_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_REN_B2_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_WEN_B1_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_WEN_B2_i;
//----- INPUT PORTS -----
input [0:1] bram_rtl_BE_B1_i;
//----- INPUT PORTS -----
input [0:1] bram_rtl_BE_B2_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_FLUSH2_i;
//----- INPUT PORTS -----
input [0:19] bram_rtl_RAM_ID_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_PL_INIT_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_PL_ENA_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_PL_REN_i;
//----- INPUT PORTS -----
input [0:1] bram_rtl_PL_WEN_i;
//----- INPUT PORTS -----
input [0:31] bram_rtl_PL_ADDR_i;
//----- INPUT PORTS -----
input [0:35] bram_rtl_PL_DATA_i;
//----- INPUT PORTS -----
input [0:43] bram_rtl_sc_in;
//----- INPUT PORTS -----
input [0:0] bram_rtl_CLK_A1_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_CLK_A2_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_CLK_B1_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_CLK_B2_i;
//----- INPUT PORTS -----
input [0:0] bram_rtl_PL_CLK_i;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:17] bram_rtl_RDATA_A1_o;
//----- OUTPUT PORTS -----
output [0:17] bram_rtl_RDATA_A2_o;
//----- OUTPUT PORTS -----
output [0:17] bram_rtl_RDATA_B1_o;
//----- OUTPUT PORTS -----
output [0:17] bram_rtl_RDATA_B2_o;
//----- OUTPUT PORTS -----
output [0:0] bram_rtl_PL_INIT_o;
//----- OUTPUT PORTS -----
output [0:0] bram_rtl_PL_ENA_o;
//----- OUTPUT PORTS -----
output [0:0] bram_rtl_PL_REN_o;
//----- OUTPUT PORTS -----
output [0:0] bram_rtl_PL_CLK_o;
//----- OUTPUT PORTS -----
output [0:1] bram_rtl_PL_WEN_o;
//----- OUTPUT PORTS -----
output [0:31] bram_rtl_PL_ADDR_o;
//----- OUTPUT PORTS -----
output [0:35] bram_rtl_PL_DATA_o;
//----- OUTPUT PORTS -----
output [0:43] bram_rtl_sc_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:31] logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o;
wire [0:35] logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o;
wire [0:1] logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_WEN_o;
wire [0:17] logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o;
wire [0:17] logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o;
wire [0:17] logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o;
wire [0:17] logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o;
wire [0:43] logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0 (
		.scan_mode(scan_mode),
		.scan_enable(scan_enable),
		.global_reset(global_reset),
		.rwm(rwm[0:2]),
		.config_enable(config_enable),
		.prog_clock(prog_clock),
		.bram_phy_WDATA_A1_i({direct_interc_190_out, direct_interc_191_out, direct_interc_192_out, direct_interc_193_out, direct_interc_194_out, direct_interc_195_out, direct_interc_196_out, direct_interc_197_out, direct_interc_198_out, direct_interc_199_out, direct_interc_200_out, direct_interc_201_out, direct_interc_202_out, direct_interc_203_out, direct_interc_204_out, direct_interc_205_out, direct_interc_206_out, direct_interc_207_out}),
		.bram_phy_WDATA_A2_i({direct_interc_208_out, direct_interc_209_out, direct_interc_210_out, direct_interc_211_out, direct_interc_212_out, direct_interc_213_out, direct_interc_214_out, direct_interc_215_out, direct_interc_216_out, direct_interc_217_out, direct_interc_218_out, direct_interc_219_out, direct_interc_220_out, direct_interc_221_out, direct_interc_222_out, direct_interc_223_out, direct_interc_224_out, direct_interc_225_out}),
		.bram_phy_ADDR_A1_i({direct_interc_226_out, direct_interc_227_out, direct_interc_228_out, direct_interc_229_out, direct_interc_230_out, direct_interc_231_out, direct_interc_232_out, direct_interc_233_out, direct_interc_234_out, direct_interc_235_out, direct_interc_236_out, direct_interc_237_out, direct_interc_238_out, direct_interc_239_out, direct_interc_240_out}),
		.bram_phy_ADDR_A2_i({direct_interc_241_out, direct_interc_242_out, direct_interc_243_out, direct_interc_244_out, direct_interc_245_out, direct_interc_246_out, direct_interc_247_out, direct_interc_248_out, direct_interc_249_out, direct_interc_250_out, direct_interc_251_out, direct_interc_252_out, direct_interc_253_out, direct_interc_254_out}),
		.bram_phy_REN_A1_i(direct_interc_255_out),
		.bram_phy_REN_A2_i(direct_interc_256_out),
		.bram_phy_WEN_A1_i(direct_interc_257_out),
		.bram_phy_WEN_A2_i(direct_interc_258_out),
		.bram_phy_BE_A1_i({direct_interc_259_out, direct_interc_260_out}),
		.bram_phy_BE_A2_i({direct_interc_261_out, direct_interc_262_out}),
		.bram_phy_FLUSH1_i(direct_interc_263_out),
		.bram_phy_WDATA_B1_i({direct_interc_264_out, direct_interc_265_out, direct_interc_266_out, direct_interc_267_out, direct_interc_268_out, direct_interc_269_out, direct_interc_270_out, direct_interc_271_out, direct_interc_272_out, direct_interc_273_out, direct_interc_274_out, direct_interc_275_out, direct_interc_276_out, direct_interc_277_out, direct_interc_278_out, direct_interc_279_out, direct_interc_280_out, direct_interc_281_out}),
		.bram_phy_WDATA_B2_i({direct_interc_282_out, direct_interc_283_out, direct_interc_284_out, direct_interc_285_out, direct_interc_286_out, direct_interc_287_out, direct_interc_288_out, direct_interc_289_out, direct_interc_290_out, direct_interc_291_out, direct_interc_292_out, direct_interc_293_out, direct_interc_294_out, direct_interc_295_out, direct_interc_296_out, direct_interc_297_out, direct_interc_298_out, direct_interc_299_out}),
		.bram_phy_ADDR_B1_i({direct_interc_300_out, direct_interc_301_out, direct_interc_302_out, direct_interc_303_out, direct_interc_304_out, direct_interc_305_out, direct_interc_306_out, direct_interc_307_out, direct_interc_308_out, direct_interc_309_out, direct_interc_310_out, direct_interc_311_out, direct_interc_312_out, direct_interc_313_out, direct_interc_314_out}),
		.bram_phy_ADDR_B2_i({direct_interc_315_out, direct_interc_316_out, direct_interc_317_out, direct_interc_318_out, direct_interc_319_out, direct_interc_320_out, direct_interc_321_out, direct_interc_322_out, direct_interc_323_out, direct_interc_324_out, direct_interc_325_out, direct_interc_326_out, direct_interc_327_out, direct_interc_328_out}),
		.bram_phy_REN_B1_i(direct_interc_329_out),
		.bram_phy_REN_B2_i(direct_interc_330_out),
		.bram_phy_WEN_B1_i(direct_interc_331_out),
		.bram_phy_WEN_B2_i(direct_interc_332_out),
		.bram_phy_BE_B1_i({direct_interc_333_out, direct_interc_334_out}),
		.bram_phy_BE_B2_i({direct_interc_335_out, direct_interc_336_out}),
		.bram_phy_FLUSH2_i(direct_interc_337_out),
		.bram_phy_RAM_ID_i({direct_interc_338_out, direct_interc_339_out, direct_interc_340_out, direct_interc_341_out, direct_interc_342_out, direct_interc_343_out, direct_interc_344_out, direct_interc_345_out, direct_interc_346_out, direct_interc_347_out, direct_interc_348_out, direct_interc_349_out, direct_interc_350_out, direct_interc_351_out, direct_interc_352_out, direct_interc_353_out, direct_interc_354_out, direct_interc_355_out, direct_interc_356_out, direct_interc_357_out}),
		.bram_phy_PL_INIT_i(direct_interc_358_out),
		.bram_phy_PL_ENA_i(direct_interc_359_out),
		.bram_phy_PL_REN_i(direct_interc_360_out),
		.bram_phy_PL_WEN_i({direct_interc_361_out, direct_interc_362_out}),
		.bram_phy_PL_ADDR_i({direct_interc_363_out, direct_interc_364_out, direct_interc_365_out, direct_interc_366_out, direct_interc_367_out, direct_interc_368_out, direct_interc_369_out, direct_interc_370_out, direct_interc_371_out, direct_interc_372_out, direct_interc_373_out, direct_interc_374_out, direct_interc_375_out, direct_interc_376_out, direct_interc_377_out, direct_interc_378_out, direct_interc_379_out, direct_interc_380_out, direct_interc_381_out, direct_interc_382_out, direct_interc_383_out, direct_interc_384_out, direct_interc_385_out, direct_interc_386_out, direct_interc_387_out, direct_interc_388_out, direct_interc_389_out, direct_interc_390_out, direct_interc_391_out, direct_interc_392_out, direct_interc_393_out, direct_interc_394_out}),
		.bram_phy_PL_DATA_i({direct_interc_395_out, direct_interc_396_out, direct_interc_397_out, direct_interc_398_out, direct_interc_399_out, direct_interc_400_out, direct_interc_401_out, direct_interc_402_out, direct_interc_403_out, direct_interc_404_out, direct_interc_405_out, direct_interc_406_out, direct_interc_407_out, direct_interc_408_out, direct_interc_409_out, direct_interc_410_out, direct_interc_411_out, direct_interc_412_out, direct_interc_413_out, direct_interc_414_out, direct_interc_415_out, direct_interc_416_out, direct_interc_417_out, direct_interc_418_out, direct_interc_419_out, direct_interc_420_out, direct_interc_421_out, direct_interc_422_out, direct_interc_423_out, direct_interc_424_out, direct_interc_425_out, direct_interc_426_out, direct_interc_427_out, direct_interc_428_out, direct_interc_429_out, direct_interc_430_out}),
		.bram_phy_sc_in({direct_interc_431_out, direct_interc_432_out, direct_interc_433_out, direct_interc_434_out, direct_interc_435_out, direct_interc_436_out, direct_interc_437_out, direct_interc_438_out, direct_interc_439_out, direct_interc_440_out, direct_interc_441_out, direct_interc_442_out, direct_interc_443_out, direct_interc_444_out, direct_interc_445_out, direct_interc_446_out, direct_interc_447_out, direct_interc_448_out, direct_interc_449_out, direct_interc_450_out, direct_interc_451_out, direct_interc_452_out, direct_interc_453_out, direct_interc_454_out, direct_interc_455_out, direct_interc_456_out, direct_interc_457_out, direct_interc_458_out, direct_interc_459_out, direct_interc_460_out, direct_interc_461_out, direct_interc_462_out, direct_interc_463_out, direct_interc_464_out, direct_interc_465_out, direct_interc_466_out, direct_interc_467_out, direct_interc_468_out, direct_interc_469_out, direct_interc_470_out, direct_interc_471_out, direct_interc_472_out, direct_interc_473_out, direct_interc_474_out}),
		.ccff_head(ccff_head),
		.bram_phy_RDATA_A1_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[0:17]),
		.bram_phy_RDATA_A2_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[0:17]),
		.bram_phy_RDATA_B1_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[0:17]),
		.bram_phy_RDATA_B2_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[0:17]),
		.bram_phy_PL_INIT_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_INIT_o),
		.bram_phy_PL_ENA_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ENA_o),
		.bram_phy_PL_REN_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_REN_o),
		.bram_phy_PL_CLK_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_CLK_o),
		.bram_phy_PL_WEN_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_WEN_o[0:1]),
		.bram_phy_PL_ADDR_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[0:31]),
		.bram_phy_PL_DATA_o(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[0:35]),
		.bram_phy_sc_out(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[0:43]),
		.ccff_tail(ccff_tail),
		.bram_phy_CLK_A1_i(direct_interc_475_out),
		.bram_phy_CLK_A2_i(direct_interc_476_out),
		.bram_phy_CLK_B1_i(direct_interc_477_out),
		.bram_phy_CLK_B2_i(direct_interc_478_out),
		.bram_phy_PL_CLK_i(direct_interc_479_out));

	direct_interc direct_interc_0_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[0]),
		.out(bram_rtl_RDATA_A1_o[0]));

	direct_interc direct_interc_1_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[1]),
		.out(bram_rtl_RDATA_A1_o[1]));

	direct_interc direct_interc_2_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[2]),
		.out(bram_rtl_RDATA_A1_o[2]));

	direct_interc direct_interc_3_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[3]),
		.out(bram_rtl_RDATA_A1_o[3]));

	direct_interc direct_interc_4_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[4]),
		.out(bram_rtl_RDATA_A1_o[4]));

	direct_interc direct_interc_5_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[5]),
		.out(bram_rtl_RDATA_A1_o[5]));

	direct_interc direct_interc_6_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[6]),
		.out(bram_rtl_RDATA_A1_o[6]));

	direct_interc direct_interc_7_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[7]),
		.out(bram_rtl_RDATA_A1_o[7]));

	direct_interc direct_interc_8_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[8]),
		.out(bram_rtl_RDATA_A1_o[8]));

	direct_interc direct_interc_9_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[9]),
		.out(bram_rtl_RDATA_A1_o[9]));

	direct_interc direct_interc_10_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[10]),
		.out(bram_rtl_RDATA_A1_o[10]));

	direct_interc direct_interc_11_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[11]),
		.out(bram_rtl_RDATA_A1_o[11]));

	direct_interc direct_interc_12_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[12]),
		.out(bram_rtl_RDATA_A1_o[12]));

	direct_interc direct_interc_13_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[13]),
		.out(bram_rtl_RDATA_A1_o[13]));

	direct_interc direct_interc_14_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[14]),
		.out(bram_rtl_RDATA_A1_o[14]));

	direct_interc direct_interc_15_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[15]),
		.out(bram_rtl_RDATA_A1_o[15]));

	direct_interc direct_interc_16_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[16]),
		.out(bram_rtl_RDATA_A1_o[16]));

	direct_interc direct_interc_17_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A1_o[17]),
		.out(bram_rtl_RDATA_A1_o[17]));

	direct_interc direct_interc_18_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[0]),
		.out(bram_rtl_RDATA_A2_o[0]));

	direct_interc direct_interc_19_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[1]),
		.out(bram_rtl_RDATA_A2_o[1]));

	direct_interc direct_interc_20_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[2]),
		.out(bram_rtl_RDATA_A2_o[2]));

	direct_interc direct_interc_21_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[3]),
		.out(bram_rtl_RDATA_A2_o[3]));

	direct_interc direct_interc_22_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[4]),
		.out(bram_rtl_RDATA_A2_o[4]));

	direct_interc direct_interc_23_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[5]),
		.out(bram_rtl_RDATA_A2_o[5]));

	direct_interc direct_interc_24_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[6]),
		.out(bram_rtl_RDATA_A2_o[6]));

	direct_interc direct_interc_25_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[7]),
		.out(bram_rtl_RDATA_A2_o[7]));

	direct_interc direct_interc_26_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[8]),
		.out(bram_rtl_RDATA_A2_o[8]));

	direct_interc direct_interc_27_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[9]),
		.out(bram_rtl_RDATA_A2_o[9]));

	direct_interc direct_interc_28_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[10]),
		.out(bram_rtl_RDATA_A2_o[10]));

	direct_interc direct_interc_29_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[11]),
		.out(bram_rtl_RDATA_A2_o[11]));

	direct_interc direct_interc_30_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[12]),
		.out(bram_rtl_RDATA_A2_o[12]));

	direct_interc direct_interc_31_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[13]),
		.out(bram_rtl_RDATA_A2_o[13]));

	direct_interc direct_interc_32_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[14]),
		.out(bram_rtl_RDATA_A2_o[14]));

	direct_interc direct_interc_33_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[15]),
		.out(bram_rtl_RDATA_A2_o[15]));

	direct_interc direct_interc_34_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[16]),
		.out(bram_rtl_RDATA_A2_o[16]));

	direct_interc direct_interc_35_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_A2_o[17]),
		.out(bram_rtl_RDATA_A2_o[17]));

	direct_interc direct_interc_36_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[0]),
		.out(bram_rtl_RDATA_B1_o[0]));

	direct_interc direct_interc_37_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[1]),
		.out(bram_rtl_RDATA_B1_o[1]));

	direct_interc direct_interc_38_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[2]),
		.out(bram_rtl_RDATA_B1_o[2]));

	direct_interc direct_interc_39_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[3]),
		.out(bram_rtl_RDATA_B1_o[3]));

	direct_interc direct_interc_40_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[4]),
		.out(bram_rtl_RDATA_B1_o[4]));

	direct_interc direct_interc_41_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[5]),
		.out(bram_rtl_RDATA_B1_o[5]));

	direct_interc direct_interc_42_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[6]),
		.out(bram_rtl_RDATA_B1_o[6]));

	direct_interc direct_interc_43_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[7]),
		.out(bram_rtl_RDATA_B1_o[7]));

	direct_interc direct_interc_44_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[8]),
		.out(bram_rtl_RDATA_B1_o[8]));

	direct_interc direct_interc_45_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[9]),
		.out(bram_rtl_RDATA_B1_o[9]));

	direct_interc direct_interc_46_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[10]),
		.out(bram_rtl_RDATA_B1_o[10]));

	direct_interc direct_interc_47_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[11]),
		.out(bram_rtl_RDATA_B1_o[11]));

	direct_interc direct_interc_48_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[12]),
		.out(bram_rtl_RDATA_B1_o[12]));

	direct_interc direct_interc_49_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[13]),
		.out(bram_rtl_RDATA_B1_o[13]));

	direct_interc direct_interc_50_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[14]),
		.out(bram_rtl_RDATA_B1_o[14]));

	direct_interc direct_interc_51_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[15]),
		.out(bram_rtl_RDATA_B1_o[15]));

	direct_interc direct_interc_52_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[16]),
		.out(bram_rtl_RDATA_B1_o[16]));

	direct_interc direct_interc_53_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B1_o[17]),
		.out(bram_rtl_RDATA_B1_o[17]));

	direct_interc direct_interc_54_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[0]),
		.out(bram_rtl_RDATA_B2_o[0]));

	direct_interc direct_interc_55_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[1]),
		.out(bram_rtl_RDATA_B2_o[1]));

	direct_interc direct_interc_56_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[2]),
		.out(bram_rtl_RDATA_B2_o[2]));

	direct_interc direct_interc_57_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[3]),
		.out(bram_rtl_RDATA_B2_o[3]));

	direct_interc direct_interc_58_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[4]),
		.out(bram_rtl_RDATA_B2_o[4]));

	direct_interc direct_interc_59_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[5]),
		.out(bram_rtl_RDATA_B2_o[5]));

	direct_interc direct_interc_60_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[6]),
		.out(bram_rtl_RDATA_B2_o[6]));

	direct_interc direct_interc_61_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[7]),
		.out(bram_rtl_RDATA_B2_o[7]));

	direct_interc direct_interc_62_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[8]),
		.out(bram_rtl_RDATA_B2_o[8]));

	direct_interc direct_interc_63_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[9]),
		.out(bram_rtl_RDATA_B2_o[9]));

	direct_interc direct_interc_64_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[10]),
		.out(bram_rtl_RDATA_B2_o[10]));

	direct_interc direct_interc_65_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[11]),
		.out(bram_rtl_RDATA_B2_o[11]));

	direct_interc direct_interc_66_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[12]),
		.out(bram_rtl_RDATA_B2_o[12]));

	direct_interc direct_interc_67_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[13]),
		.out(bram_rtl_RDATA_B2_o[13]));

	direct_interc direct_interc_68_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[14]),
		.out(bram_rtl_RDATA_B2_o[14]));

	direct_interc direct_interc_69_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[15]),
		.out(bram_rtl_RDATA_B2_o[15]));

	direct_interc direct_interc_70_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[16]),
		.out(bram_rtl_RDATA_B2_o[16]));

	direct_interc direct_interc_71_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_RDATA_B2_o[17]),
		.out(bram_rtl_RDATA_B2_o[17]));

	direct_interc direct_interc_72_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_INIT_o),
		.out(bram_rtl_PL_INIT_o));

	direct_interc direct_interc_73_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ENA_o),
		.out(bram_rtl_PL_ENA_o));

	direct_interc direct_interc_74_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_REN_o),
		.out(bram_rtl_PL_REN_o));

	direct_interc direct_interc_75_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_CLK_o),
		.out(bram_rtl_PL_CLK_o));

	direct_interc direct_interc_76_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_WEN_o[0]),
		.out(bram_rtl_PL_WEN_o[0]));

	direct_interc direct_interc_77_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_WEN_o[1]),
		.out(bram_rtl_PL_WEN_o[1]));

	direct_interc direct_interc_78_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[0]),
		.out(bram_rtl_PL_ADDR_o[0]));

	direct_interc direct_interc_79_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[1]),
		.out(bram_rtl_PL_ADDR_o[1]));

	direct_interc direct_interc_80_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[2]),
		.out(bram_rtl_PL_ADDR_o[2]));

	direct_interc direct_interc_81_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[3]),
		.out(bram_rtl_PL_ADDR_o[3]));

	direct_interc direct_interc_82_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[4]),
		.out(bram_rtl_PL_ADDR_o[4]));

	direct_interc direct_interc_83_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[5]),
		.out(bram_rtl_PL_ADDR_o[5]));

	direct_interc direct_interc_84_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[6]),
		.out(bram_rtl_PL_ADDR_o[6]));

	direct_interc direct_interc_85_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[7]),
		.out(bram_rtl_PL_ADDR_o[7]));

	direct_interc direct_interc_86_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[8]),
		.out(bram_rtl_PL_ADDR_o[8]));

	direct_interc direct_interc_87_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[9]),
		.out(bram_rtl_PL_ADDR_o[9]));

	direct_interc direct_interc_88_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[10]),
		.out(bram_rtl_PL_ADDR_o[10]));

	direct_interc direct_interc_89_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[11]),
		.out(bram_rtl_PL_ADDR_o[11]));

	direct_interc direct_interc_90_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[12]),
		.out(bram_rtl_PL_ADDR_o[12]));

	direct_interc direct_interc_91_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[13]),
		.out(bram_rtl_PL_ADDR_o[13]));

	direct_interc direct_interc_92_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[14]),
		.out(bram_rtl_PL_ADDR_o[14]));

	direct_interc direct_interc_93_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[15]),
		.out(bram_rtl_PL_ADDR_o[15]));

	direct_interc direct_interc_94_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[16]),
		.out(bram_rtl_PL_ADDR_o[16]));

	direct_interc direct_interc_95_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[17]),
		.out(bram_rtl_PL_ADDR_o[17]));

	direct_interc direct_interc_96_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[18]),
		.out(bram_rtl_PL_ADDR_o[18]));

	direct_interc direct_interc_97_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[19]),
		.out(bram_rtl_PL_ADDR_o[19]));

	direct_interc direct_interc_98_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[20]),
		.out(bram_rtl_PL_ADDR_o[20]));

	direct_interc direct_interc_99_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[21]),
		.out(bram_rtl_PL_ADDR_o[21]));

	direct_interc direct_interc_100_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[22]),
		.out(bram_rtl_PL_ADDR_o[22]));

	direct_interc direct_interc_101_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[23]),
		.out(bram_rtl_PL_ADDR_o[23]));

	direct_interc direct_interc_102_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[24]),
		.out(bram_rtl_PL_ADDR_o[24]));

	direct_interc direct_interc_103_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[25]),
		.out(bram_rtl_PL_ADDR_o[25]));

	direct_interc direct_interc_104_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[26]),
		.out(bram_rtl_PL_ADDR_o[26]));

	direct_interc direct_interc_105_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[27]),
		.out(bram_rtl_PL_ADDR_o[27]));

	direct_interc direct_interc_106_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[28]),
		.out(bram_rtl_PL_ADDR_o[28]));

	direct_interc direct_interc_107_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[29]),
		.out(bram_rtl_PL_ADDR_o[29]));

	direct_interc direct_interc_108_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[30]),
		.out(bram_rtl_PL_ADDR_o[30]));

	direct_interc direct_interc_109_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_ADDR_o[31]),
		.out(bram_rtl_PL_ADDR_o[31]));

	direct_interc direct_interc_110_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[0]),
		.out(bram_rtl_PL_DATA_o[0]));

	direct_interc direct_interc_111_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[1]),
		.out(bram_rtl_PL_DATA_o[1]));

	direct_interc direct_interc_112_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[2]),
		.out(bram_rtl_PL_DATA_o[2]));

	direct_interc direct_interc_113_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[3]),
		.out(bram_rtl_PL_DATA_o[3]));

	direct_interc direct_interc_114_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[4]),
		.out(bram_rtl_PL_DATA_o[4]));

	direct_interc direct_interc_115_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[5]),
		.out(bram_rtl_PL_DATA_o[5]));

	direct_interc direct_interc_116_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[6]),
		.out(bram_rtl_PL_DATA_o[6]));

	direct_interc direct_interc_117_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[7]),
		.out(bram_rtl_PL_DATA_o[7]));

	direct_interc direct_interc_118_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[8]),
		.out(bram_rtl_PL_DATA_o[8]));

	direct_interc direct_interc_119_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[9]),
		.out(bram_rtl_PL_DATA_o[9]));

	direct_interc direct_interc_120_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[10]),
		.out(bram_rtl_PL_DATA_o[10]));

	direct_interc direct_interc_121_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[11]),
		.out(bram_rtl_PL_DATA_o[11]));

	direct_interc direct_interc_122_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[12]),
		.out(bram_rtl_PL_DATA_o[12]));

	direct_interc direct_interc_123_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[13]),
		.out(bram_rtl_PL_DATA_o[13]));

	direct_interc direct_interc_124_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[14]),
		.out(bram_rtl_PL_DATA_o[14]));

	direct_interc direct_interc_125_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[15]),
		.out(bram_rtl_PL_DATA_o[15]));

	direct_interc direct_interc_126_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[16]),
		.out(bram_rtl_PL_DATA_o[16]));

	direct_interc direct_interc_127_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[17]),
		.out(bram_rtl_PL_DATA_o[17]));

	direct_interc direct_interc_128_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[18]),
		.out(bram_rtl_PL_DATA_o[18]));

	direct_interc direct_interc_129_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[19]),
		.out(bram_rtl_PL_DATA_o[19]));

	direct_interc direct_interc_130_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[20]),
		.out(bram_rtl_PL_DATA_o[20]));

	direct_interc direct_interc_131_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[21]),
		.out(bram_rtl_PL_DATA_o[21]));

	direct_interc direct_interc_132_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[22]),
		.out(bram_rtl_PL_DATA_o[22]));

	direct_interc direct_interc_133_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[23]),
		.out(bram_rtl_PL_DATA_o[23]));

	direct_interc direct_interc_134_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[24]),
		.out(bram_rtl_PL_DATA_o[24]));

	direct_interc direct_interc_135_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[25]),
		.out(bram_rtl_PL_DATA_o[25]));

	direct_interc direct_interc_136_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[26]),
		.out(bram_rtl_PL_DATA_o[26]));

	direct_interc direct_interc_137_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[27]),
		.out(bram_rtl_PL_DATA_o[27]));

	direct_interc direct_interc_138_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[28]),
		.out(bram_rtl_PL_DATA_o[28]));

	direct_interc direct_interc_139_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[29]),
		.out(bram_rtl_PL_DATA_o[29]));

	direct_interc direct_interc_140_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[30]),
		.out(bram_rtl_PL_DATA_o[30]));

	direct_interc direct_interc_141_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[31]),
		.out(bram_rtl_PL_DATA_o[31]));

	direct_interc direct_interc_142_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[32]),
		.out(bram_rtl_PL_DATA_o[32]));

	direct_interc direct_interc_143_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[33]),
		.out(bram_rtl_PL_DATA_o[33]));

	direct_interc direct_interc_144_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[34]),
		.out(bram_rtl_PL_DATA_o[34]));

	direct_interc direct_interc_145_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_PL_DATA_o[35]),
		.out(bram_rtl_PL_DATA_o[35]));

	direct_interc direct_interc_146_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[0]),
		.out(bram_rtl_sc_out[0]));

	direct_interc direct_interc_147_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[1]),
		.out(bram_rtl_sc_out[1]));

	direct_interc direct_interc_148_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[2]),
		.out(bram_rtl_sc_out[2]));

	direct_interc direct_interc_149_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[3]),
		.out(bram_rtl_sc_out[3]));

	direct_interc direct_interc_150_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[4]),
		.out(bram_rtl_sc_out[4]));

	direct_interc direct_interc_151_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[5]),
		.out(bram_rtl_sc_out[5]));

	direct_interc direct_interc_152_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[6]),
		.out(bram_rtl_sc_out[6]));

	direct_interc direct_interc_153_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[7]),
		.out(bram_rtl_sc_out[7]));

	direct_interc direct_interc_154_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[8]),
		.out(bram_rtl_sc_out[8]));

	direct_interc direct_interc_155_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[9]),
		.out(bram_rtl_sc_out[9]));

	direct_interc direct_interc_156_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[10]),
		.out(bram_rtl_sc_out[10]));

	direct_interc direct_interc_157_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[11]),
		.out(bram_rtl_sc_out[11]));

	direct_interc direct_interc_158_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[12]),
		.out(bram_rtl_sc_out[12]));

	direct_interc direct_interc_159_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[13]),
		.out(bram_rtl_sc_out[13]));

	direct_interc direct_interc_160_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[14]),
		.out(bram_rtl_sc_out[14]));

	direct_interc direct_interc_161_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[15]),
		.out(bram_rtl_sc_out[15]));

	direct_interc direct_interc_162_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[16]),
		.out(bram_rtl_sc_out[16]));

	direct_interc direct_interc_163_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[17]),
		.out(bram_rtl_sc_out[17]));

	direct_interc direct_interc_164_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[18]),
		.out(bram_rtl_sc_out[18]));

	direct_interc direct_interc_165_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[19]),
		.out(bram_rtl_sc_out[19]));

	direct_interc direct_interc_166_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[20]),
		.out(bram_rtl_sc_out[20]));

	direct_interc direct_interc_167_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[21]),
		.out(bram_rtl_sc_out[21]));

	direct_interc direct_interc_168_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[22]),
		.out(bram_rtl_sc_out[22]));

	direct_interc direct_interc_169_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[23]),
		.out(bram_rtl_sc_out[23]));

	direct_interc direct_interc_170_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[24]),
		.out(bram_rtl_sc_out[24]));

	direct_interc direct_interc_171_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[25]),
		.out(bram_rtl_sc_out[25]));

	direct_interc direct_interc_172_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[26]),
		.out(bram_rtl_sc_out[26]));

	direct_interc direct_interc_173_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[27]),
		.out(bram_rtl_sc_out[27]));

	direct_interc direct_interc_174_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[28]),
		.out(bram_rtl_sc_out[28]));

	direct_interc direct_interc_175_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[29]),
		.out(bram_rtl_sc_out[29]));

	direct_interc direct_interc_176_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[30]),
		.out(bram_rtl_sc_out[30]));

	direct_interc direct_interc_177_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[31]),
		.out(bram_rtl_sc_out[31]));

	direct_interc direct_interc_178_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[32]),
		.out(bram_rtl_sc_out[32]));

	direct_interc direct_interc_179_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[33]),
		.out(bram_rtl_sc_out[33]));

	direct_interc direct_interc_180_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[34]),
		.out(bram_rtl_sc_out[34]));

	direct_interc direct_interc_181_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[35]),
		.out(bram_rtl_sc_out[35]));

	direct_interc direct_interc_182_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[36]),
		.out(bram_rtl_sc_out[36]));

	direct_interc direct_interc_183_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[37]),
		.out(bram_rtl_sc_out[37]));

	direct_interc direct_interc_184_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[38]),
		.out(bram_rtl_sc_out[38]));

	direct_interc direct_interc_185_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[39]),
		.out(bram_rtl_sc_out[39]));

	direct_interc direct_interc_186_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[40]),
		.out(bram_rtl_sc_out[40]));

	direct_interc direct_interc_187_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[41]),
		.out(bram_rtl_sc_out[41]));

	direct_interc direct_interc_188_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[42]),
		.out(bram_rtl_sc_out[42]));

	direct_interc direct_interc_189_ (
		.in(logical_tile_bram_mode_default__bram_rtl_mode_physical__bram_phy_0_bram_phy_sc_out[43]),
		.out(bram_rtl_sc_out[43]));

	direct_interc direct_interc_190_ (
		.in(bram_rtl_WDATA_A1_i[0]),
		.out(direct_interc_190_out));

	direct_interc direct_interc_191_ (
		.in(bram_rtl_WDATA_A1_i[1]),
		.out(direct_interc_191_out));

	direct_interc direct_interc_192_ (
		.in(bram_rtl_WDATA_A1_i[2]),
		.out(direct_interc_192_out));

	direct_interc direct_interc_193_ (
		.in(bram_rtl_WDATA_A1_i[3]),
		.out(direct_interc_193_out));

	direct_interc direct_interc_194_ (
		.in(bram_rtl_WDATA_A1_i[4]),
		.out(direct_interc_194_out));

	direct_interc direct_interc_195_ (
		.in(bram_rtl_WDATA_A1_i[5]),
		.out(direct_interc_195_out));

	direct_interc direct_interc_196_ (
		.in(bram_rtl_WDATA_A1_i[6]),
		.out(direct_interc_196_out));

	direct_interc direct_interc_197_ (
		.in(bram_rtl_WDATA_A1_i[7]),
		.out(direct_interc_197_out));

	direct_interc direct_interc_198_ (
		.in(bram_rtl_WDATA_A1_i[8]),
		.out(direct_interc_198_out));

	direct_interc direct_interc_199_ (
		.in(bram_rtl_WDATA_A1_i[9]),
		.out(direct_interc_199_out));

	direct_interc direct_interc_200_ (
		.in(bram_rtl_WDATA_A1_i[10]),
		.out(direct_interc_200_out));

	direct_interc direct_interc_201_ (
		.in(bram_rtl_WDATA_A1_i[11]),
		.out(direct_interc_201_out));

	direct_interc direct_interc_202_ (
		.in(bram_rtl_WDATA_A1_i[12]),
		.out(direct_interc_202_out));

	direct_interc direct_interc_203_ (
		.in(bram_rtl_WDATA_A1_i[13]),
		.out(direct_interc_203_out));

	direct_interc direct_interc_204_ (
		.in(bram_rtl_WDATA_A1_i[14]),
		.out(direct_interc_204_out));

	direct_interc direct_interc_205_ (
		.in(bram_rtl_WDATA_A1_i[15]),
		.out(direct_interc_205_out));

	direct_interc direct_interc_206_ (
		.in(bram_rtl_WDATA_A1_i[16]),
		.out(direct_interc_206_out));

	direct_interc direct_interc_207_ (
		.in(bram_rtl_WDATA_A1_i[17]),
		.out(direct_interc_207_out));

	direct_interc direct_interc_208_ (
		.in(bram_rtl_WDATA_A2_i[0]),
		.out(direct_interc_208_out));

	direct_interc direct_interc_209_ (
		.in(bram_rtl_WDATA_A2_i[1]),
		.out(direct_interc_209_out));

	direct_interc direct_interc_210_ (
		.in(bram_rtl_WDATA_A2_i[2]),
		.out(direct_interc_210_out));

	direct_interc direct_interc_211_ (
		.in(bram_rtl_WDATA_A2_i[3]),
		.out(direct_interc_211_out));

	direct_interc direct_interc_212_ (
		.in(bram_rtl_WDATA_A2_i[4]),
		.out(direct_interc_212_out));

	direct_interc direct_interc_213_ (
		.in(bram_rtl_WDATA_A2_i[5]),
		.out(direct_interc_213_out));

	direct_interc direct_interc_214_ (
		.in(bram_rtl_WDATA_A2_i[6]),
		.out(direct_interc_214_out));

	direct_interc direct_interc_215_ (
		.in(bram_rtl_WDATA_A2_i[7]),
		.out(direct_interc_215_out));

	direct_interc direct_interc_216_ (
		.in(bram_rtl_WDATA_A2_i[8]),
		.out(direct_interc_216_out));

	direct_interc direct_interc_217_ (
		.in(bram_rtl_WDATA_A2_i[9]),
		.out(direct_interc_217_out));

	direct_interc direct_interc_218_ (
		.in(bram_rtl_WDATA_A2_i[10]),
		.out(direct_interc_218_out));

	direct_interc direct_interc_219_ (
		.in(bram_rtl_WDATA_A2_i[11]),
		.out(direct_interc_219_out));

	direct_interc direct_interc_220_ (
		.in(bram_rtl_WDATA_A2_i[12]),
		.out(direct_interc_220_out));

	direct_interc direct_interc_221_ (
		.in(bram_rtl_WDATA_A2_i[13]),
		.out(direct_interc_221_out));

	direct_interc direct_interc_222_ (
		.in(bram_rtl_WDATA_A2_i[14]),
		.out(direct_interc_222_out));

	direct_interc direct_interc_223_ (
		.in(bram_rtl_WDATA_A2_i[15]),
		.out(direct_interc_223_out));

	direct_interc direct_interc_224_ (
		.in(bram_rtl_WDATA_A2_i[16]),
		.out(direct_interc_224_out));

	direct_interc direct_interc_225_ (
		.in(bram_rtl_WDATA_A2_i[17]),
		.out(direct_interc_225_out));

	direct_interc direct_interc_226_ (
		.in(bram_rtl_ADDR_A1_i[0]),
		.out(direct_interc_226_out));

	direct_interc direct_interc_227_ (
		.in(bram_rtl_ADDR_A1_i[1]),
		.out(direct_interc_227_out));

	direct_interc direct_interc_228_ (
		.in(bram_rtl_ADDR_A1_i[2]),
		.out(direct_interc_228_out));

	direct_interc direct_interc_229_ (
		.in(bram_rtl_ADDR_A1_i[3]),
		.out(direct_interc_229_out));

	direct_interc direct_interc_230_ (
		.in(bram_rtl_ADDR_A1_i[4]),
		.out(direct_interc_230_out));

	direct_interc direct_interc_231_ (
		.in(bram_rtl_ADDR_A1_i[5]),
		.out(direct_interc_231_out));

	direct_interc direct_interc_232_ (
		.in(bram_rtl_ADDR_A1_i[6]),
		.out(direct_interc_232_out));

	direct_interc direct_interc_233_ (
		.in(bram_rtl_ADDR_A1_i[7]),
		.out(direct_interc_233_out));

	direct_interc direct_interc_234_ (
		.in(bram_rtl_ADDR_A1_i[8]),
		.out(direct_interc_234_out));

	direct_interc direct_interc_235_ (
		.in(bram_rtl_ADDR_A1_i[9]),
		.out(direct_interc_235_out));

	direct_interc direct_interc_236_ (
		.in(bram_rtl_ADDR_A1_i[10]),
		.out(direct_interc_236_out));

	direct_interc direct_interc_237_ (
		.in(bram_rtl_ADDR_A1_i[11]),
		.out(direct_interc_237_out));

	direct_interc direct_interc_238_ (
		.in(bram_rtl_ADDR_A1_i[12]),
		.out(direct_interc_238_out));

	direct_interc direct_interc_239_ (
		.in(bram_rtl_ADDR_A1_i[13]),
		.out(direct_interc_239_out));

	direct_interc direct_interc_240_ (
		.in(bram_rtl_ADDR_A1_i[14]),
		.out(direct_interc_240_out));

	direct_interc direct_interc_241_ (
		.in(bram_rtl_ADDR_A2_i[0]),
		.out(direct_interc_241_out));

	direct_interc direct_interc_242_ (
		.in(bram_rtl_ADDR_A2_i[1]),
		.out(direct_interc_242_out));

	direct_interc direct_interc_243_ (
		.in(bram_rtl_ADDR_A2_i[2]),
		.out(direct_interc_243_out));

	direct_interc direct_interc_244_ (
		.in(bram_rtl_ADDR_A2_i[3]),
		.out(direct_interc_244_out));

	direct_interc direct_interc_245_ (
		.in(bram_rtl_ADDR_A2_i[4]),
		.out(direct_interc_245_out));

	direct_interc direct_interc_246_ (
		.in(bram_rtl_ADDR_A2_i[5]),
		.out(direct_interc_246_out));

	direct_interc direct_interc_247_ (
		.in(bram_rtl_ADDR_A2_i[6]),
		.out(direct_interc_247_out));

	direct_interc direct_interc_248_ (
		.in(bram_rtl_ADDR_A2_i[7]),
		.out(direct_interc_248_out));

	direct_interc direct_interc_249_ (
		.in(bram_rtl_ADDR_A2_i[8]),
		.out(direct_interc_249_out));

	direct_interc direct_interc_250_ (
		.in(bram_rtl_ADDR_A2_i[9]),
		.out(direct_interc_250_out));

	direct_interc direct_interc_251_ (
		.in(bram_rtl_ADDR_A2_i[10]),
		.out(direct_interc_251_out));

	direct_interc direct_interc_252_ (
		.in(bram_rtl_ADDR_A2_i[11]),
		.out(direct_interc_252_out));

	direct_interc direct_interc_253_ (
		.in(bram_rtl_ADDR_A2_i[12]),
		.out(direct_interc_253_out));

	direct_interc direct_interc_254_ (
		.in(bram_rtl_ADDR_A2_i[13]),
		.out(direct_interc_254_out));

	direct_interc direct_interc_255_ (
		.in(bram_rtl_REN_A1_i),
		.out(direct_interc_255_out));

	direct_interc direct_interc_256_ (
		.in(bram_rtl_REN_A2_i),
		.out(direct_interc_256_out));

	direct_interc direct_interc_257_ (
		.in(bram_rtl_WEN_A1_i),
		.out(direct_interc_257_out));

	direct_interc direct_interc_258_ (
		.in(bram_rtl_WEN_A2_i),
		.out(direct_interc_258_out));

	direct_interc direct_interc_259_ (
		.in(bram_rtl_BE_A1_i[0]),
		.out(direct_interc_259_out));

	direct_interc direct_interc_260_ (
		.in(bram_rtl_BE_A1_i[1]),
		.out(direct_interc_260_out));

	direct_interc direct_interc_261_ (
		.in(bram_rtl_BE_A2_i[0]),
		.out(direct_interc_261_out));

	direct_interc direct_interc_262_ (
		.in(bram_rtl_BE_A2_i[1]),
		.out(direct_interc_262_out));

	direct_interc direct_interc_263_ (
		.in(bram_rtl_FLUSH1_i),
		.out(direct_interc_263_out));

	direct_interc direct_interc_264_ (
		.in(bram_rtl_WDATA_B1_i[0]),
		.out(direct_interc_264_out));

	direct_interc direct_interc_265_ (
		.in(bram_rtl_WDATA_B1_i[1]),
		.out(direct_interc_265_out));

	direct_interc direct_interc_266_ (
		.in(bram_rtl_WDATA_B1_i[2]),
		.out(direct_interc_266_out));

	direct_interc direct_interc_267_ (
		.in(bram_rtl_WDATA_B1_i[3]),
		.out(direct_interc_267_out));

	direct_interc direct_interc_268_ (
		.in(bram_rtl_WDATA_B1_i[4]),
		.out(direct_interc_268_out));

	direct_interc direct_interc_269_ (
		.in(bram_rtl_WDATA_B1_i[5]),
		.out(direct_interc_269_out));

	direct_interc direct_interc_270_ (
		.in(bram_rtl_WDATA_B1_i[6]),
		.out(direct_interc_270_out));

	direct_interc direct_interc_271_ (
		.in(bram_rtl_WDATA_B1_i[7]),
		.out(direct_interc_271_out));

	direct_interc direct_interc_272_ (
		.in(bram_rtl_WDATA_B1_i[8]),
		.out(direct_interc_272_out));

	direct_interc direct_interc_273_ (
		.in(bram_rtl_WDATA_B1_i[9]),
		.out(direct_interc_273_out));

	direct_interc direct_interc_274_ (
		.in(bram_rtl_WDATA_B1_i[10]),
		.out(direct_interc_274_out));

	direct_interc direct_interc_275_ (
		.in(bram_rtl_WDATA_B1_i[11]),
		.out(direct_interc_275_out));

	direct_interc direct_interc_276_ (
		.in(bram_rtl_WDATA_B1_i[12]),
		.out(direct_interc_276_out));

	direct_interc direct_interc_277_ (
		.in(bram_rtl_WDATA_B1_i[13]),
		.out(direct_interc_277_out));

	direct_interc direct_interc_278_ (
		.in(bram_rtl_WDATA_B1_i[14]),
		.out(direct_interc_278_out));

	direct_interc direct_interc_279_ (
		.in(bram_rtl_WDATA_B1_i[15]),
		.out(direct_interc_279_out));

	direct_interc direct_interc_280_ (
		.in(bram_rtl_WDATA_B1_i[16]),
		.out(direct_interc_280_out));

	direct_interc direct_interc_281_ (
		.in(bram_rtl_WDATA_B1_i[17]),
		.out(direct_interc_281_out));

	direct_interc direct_interc_282_ (
		.in(bram_rtl_WDATA_B2_i[0]),
		.out(direct_interc_282_out));

	direct_interc direct_interc_283_ (
		.in(bram_rtl_WDATA_B2_i[1]),
		.out(direct_interc_283_out));

	direct_interc direct_interc_284_ (
		.in(bram_rtl_WDATA_B2_i[2]),
		.out(direct_interc_284_out));

	direct_interc direct_interc_285_ (
		.in(bram_rtl_WDATA_B2_i[3]),
		.out(direct_interc_285_out));

	direct_interc direct_interc_286_ (
		.in(bram_rtl_WDATA_B2_i[4]),
		.out(direct_interc_286_out));

	direct_interc direct_interc_287_ (
		.in(bram_rtl_WDATA_B2_i[5]),
		.out(direct_interc_287_out));

	direct_interc direct_interc_288_ (
		.in(bram_rtl_WDATA_B2_i[6]),
		.out(direct_interc_288_out));

	direct_interc direct_interc_289_ (
		.in(bram_rtl_WDATA_B2_i[7]),
		.out(direct_interc_289_out));

	direct_interc direct_interc_290_ (
		.in(bram_rtl_WDATA_B2_i[8]),
		.out(direct_interc_290_out));

	direct_interc direct_interc_291_ (
		.in(bram_rtl_WDATA_B2_i[9]),
		.out(direct_interc_291_out));

	direct_interc direct_interc_292_ (
		.in(bram_rtl_WDATA_B2_i[10]),
		.out(direct_interc_292_out));

	direct_interc direct_interc_293_ (
		.in(bram_rtl_WDATA_B2_i[11]),
		.out(direct_interc_293_out));

	direct_interc direct_interc_294_ (
		.in(bram_rtl_WDATA_B2_i[12]),
		.out(direct_interc_294_out));

	direct_interc direct_interc_295_ (
		.in(bram_rtl_WDATA_B2_i[13]),
		.out(direct_interc_295_out));

	direct_interc direct_interc_296_ (
		.in(bram_rtl_WDATA_B2_i[14]),
		.out(direct_interc_296_out));

	direct_interc direct_interc_297_ (
		.in(bram_rtl_WDATA_B2_i[15]),
		.out(direct_interc_297_out));

	direct_interc direct_interc_298_ (
		.in(bram_rtl_WDATA_B2_i[16]),
		.out(direct_interc_298_out));

	direct_interc direct_interc_299_ (
		.in(bram_rtl_WDATA_B2_i[17]),
		.out(direct_interc_299_out));

	direct_interc direct_interc_300_ (
		.in(bram_rtl_ADDR_B1_i[0]),
		.out(direct_interc_300_out));

	direct_interc direct_interc_301_ (
		.in(bram_rtl_ADDR_B1_i[1]),
		.out(direct_interc_301_out));

	direct_interc direct_interc_302_ (
		.in(bram_rtl_ADDR_B1_i[2]),
		.out(direct_interc_302_out));

	direct_interc direct_interc_303_ (
		.in(bram_rtl_ADDR_B1_i[3]),
		.out(direct_interc_303_out));

	direct_interc direct_interc_304_ (
		.in(bram_rtl_ADDR_B1_i[4]),
		.out(direct_interc_304_out));

	direct_interc direct_interc_305_ (
		.in(bram_rtl_ADDR_B1_i[5]),
		.out(direct_interc_305_out));

	direct_interc direct_interc_306_ (
		.in(bram_rtl_ADDR_B1_i[6]),
		.out(direct_interc_306_out));

	direct_interc direct_interc_307_ (
		.in(bram_rtl_ADDR_B1_i[7]),
		.out(direct_interc_307_out));

	direct_interc direct_interc_308_ (
		.in(bram_rtl_ADDR_B1_i[8]),
		.out(direct_interc_308_out));

	direct_interc direct_interc_309_ (
		.in(bram_rtl_ADDR_B1_i[9]),
		.out(direct_interc_309_out));

	direct_interc direct_interc_310_ (
		.in(bram_rtl_ADDR_B1_i[10]),
		.out(direct_interc_310_out));

	direct_interc direct_interc_311_ (
		.in(bram_rtl_ADDR_B1_i[11]),
		.out(direct_interc_311_out));

	direct_interc direct_interc_312_ (
		.in(bram_rtl_ADDR_B1_i[12]),
		.out(direct_interc_312_out));

	direct_interc direct_interc_313_ (
		.in(bram_rtl_ADDR_B1_i[13]),
		.out(direct_interc_313_out));

	direct_interc direct_interc_314_ (
		.in(bram_rtl_ADDR_B1_i[14]),
		.out(direct_interc_314_out));

	direct_interc direct_interc_315_ (
		.in(bram_rtl_ADDR_B2_i[0]),
		.out(direct_interc_315_out));

	direct_interc direct_interc_316_ (
		.in(bram_rtl_ADDR_B2_i[1]),
		.out(direct_interc_316_out));

	direct_interc direct_interc_317_ (
		.in(bram_rtl_ADDR_B2_i[2]),
		.out(direct_interc_317_out));

	direct_interc direct_interc_318_ (
		.in(bram_rtl_ADDR_B2_i[3]),
		.out(direct_interc_318_out));

	direct_interc direct_interc_319_ (
		.in(bram_rtl_ADDR_B2_i[4]),
		.out(direct_interc_319_out));

	direct_interc direct_interc_320_ (
		.in(bram_rtl_ADDR_B2_i[5]),
		.out(direct_interc_320_out));

	direct_interc direct_interc_321_ (
		.in(bram_rtl_ADDR_B2_i[6]),
		.out(direct_interc_321_out));

	direct_interc direct_interc_322_ (
		.in(bram_rtl_ADDR_B2_i[7]),
		.out(direct_interc_322_out));

	direct_interc direct_interc_323_ (
		.in(bram_rtl_ADDR_B2_i[8]),
		.out(direct_interc_323_out));

	direct_interc direct_interc_324_ (
		.in(bram_rtl_ADDR_B2_i[9]),
		.out(direct_interc_324_out));

	direct_interc direct_interc_325_ (
		.in(bram_rtl_ADDR_B2_i[10]),
		.out(direct_interc_325_out));

	direct_interc direct_interc_326_ (
		.in(bram_rtl_ADDR_B2_i[11]),
		.out(direct_interc_326_out));

	direct_interc direct_interc_327_ (
		.in(bram_rtl_ADDR_B2_i[12]),
		.out(direct_interc_327_out));

	direct_interc direct_interc_328_ (
		.in(bram_rtl_ADDR_B2_i[13]),
		.out(direct_interc_328_out));

	direct_interc direct_interc_329_ (
		.in(bram_rtl_REN_B1_i),
		.out(direct_interc_329_out));

	direct_interc direct_interc_330_ (
		.in(bram_rtl_REN_B2_i),
		.out(direct_interc_330_out));

	direct_interc direct_interc_331_ (
		.in(bram_rtl_WEN_B1_i),
		.out(direct_interc_331_out));

	direct_interc direct_interc_332_ (
		.in(bram_rtl_WEN_B2_i),
		.out(direct_interc_332_out));

	direct_interc direct_interc_333_ (
		.in(bram_rtl_BE_B1_i[0]),
		.out(direct_interc_333_out));

	direct_interc direct_interc_334_ (
		.in(bram_rtl_BE_B1_i[1]),
		.out(direct_interc_334_out));

	direct_interc direct_interc_335_ (
		.in(bram_rtl_BE_B2_i[0]),
		.out(direct_interc_335_out));

	direct_interc direct_interc_336_ (
		.in(bram_rtl_BE_B2_i[1]),
		.out(direct_interc_336_out));

	direct_interc direct_interc_337_ (
		.in(bram_rtl_FLUSH2_i),
		.out(direct_interc_337_out));

	direct_interc direct_interc_338_ (
		.in(bram_rtl_RAM_ID_i[0]),
		.out(direct_interc_338_out));

	direct_interc direct_interc_339_ (
		.in(bram_rtl_RAM_ID_i[1]),
		.out(direct_interc_339_out));

	direct_interc direct_interc_340_ (
		.in(bram_rtl_RAM_ID_i[2]),
		.out(direct_interc_340_out));

	direct_interc direct_interc_341_ (
		.in(bram_rtl_RAM_ID_i[3]),
		.out(direct_interc_341_out));

	direct_interc direct_interc_342_ (
		.in(bram_rtl_RAM_ID_i[4]),
		.out(direct_interc_342_out));

	direct_interc direct_interc_343_ (
		.in(bram_rtl_RAM_ID_i[5]),
		.out(direct_interc_343_out));

	direct_interc direct_interc_344_ (
		.in(bram_rtl_RAM_ID_i[6]),
		.out(direct_interc_344_out));

	direct_interc direct_interc_345_ (
		.in(bram_rtl_RAM_ID_i[7]),
		.out(direct_interc_345_out));

	direct_interc direct_interc_346_ (
		.in(bram_rtl_RAM_ID_i[8]),
		.out(direct_interc_346_out));

	direct_interc direct_interc_347_ (
		.in(bram_rtl_RAM_ID_i[9]),
		.out(direct_interc_347_out));

	direct_interc direct_interc_348_ (
		.in(bram_rtl_RAM_ID_i[10]),
		.out(direct_interc_348_out));

	direct_interc direct_interc_349_ (
		.in(bram_rtl_RAM_ID_i[11]),
		.out(direct_interc_349_out));

	direct_interc direct_interc_350_ (
		.in(bram_rtl_RAM_ID_i[12]),
		.out(direct_interc_350_out));

	direct_interc direct_interc_351_ (
		.in(bram_rtl_RAM_ID_i[13]),
		.out(direct_interc_351_out));

	direct_interc direct_interc_352_ (
		.in(bram_rtl_RAM_ID_i[14]),
		.out(direct_interc_352_out));

	direct_interc direct_interc_353_ (
		.in(bram_rtl_RAM_ID_i[15]),
		.out(direct_interc_353_out));

	direct_interc direct_interc_354_ (
		.in(bram_rtl_RAM_ID_i[16]),
		.out(direct_interc_354_out));

	direct_interc direct_interc_355_ (
		.in(bram_rtl_RAM_ID_i[17]),
		.out(direct_interc_355_out));

	direct_interc direct_interc_356_ (
		.in(bram_rtl_RAM_ID_i[18]),
		.out(direct_interc_356_out));

	direct_interc direct_interc_357_ (
		.in(bram_rtl_RAM_ID_i[19]),
		.out(direct_interc_357_out));

	direct_interc direct_interc_358_ (
		.in(bram_rtl_PL_INIT_i),
		.out(direct_interc_358_out));

	direct_interc direct_interc_359_ (
		.in(bram_rtl_PL_ENA_i),
		.out(direct_interc_359_out));

	direct_interc direct_interc_360_ (
		.in(bram_rtl_PL_REN_i),
		.out(direct_interc_360_out));

	direct_interc direct_interc_361_ (
		.in(bram_rtl_PL_WEN_i[0]),
		.out(direct_interc_361_out));

	direct_interc direct_interc_362_ (
		.in(bram_rtl_PL_WEN_i[1]),
		.out(direct_interc_362_out));

	direct_interc direct_interc_363_ (
		.in(bram_rtl_PL_ADDR_i[0]),
		.out(direct_interc_363_out));

	direct_interc direct_interc_364_ (
		.in(bram_rtl_PL_ADDR_i[1]),
		.out(direct_interc_364_out));

	direct_interc direct_interc_365_ (
		.in(bram_rtl_PL_ADDR_i[2]),
		.out(direct_interc_365_out));

	direct_interc direct_interc_366_ (
		.in(bram_rtl_PL_ADDR_i[3]),
		.out(direct_interc_366_out));

	direct_interc direct_interc_367_ (
		.in(bram_rtl_PL_ADDR_i[4]),
		.out(direct_interc_367_out));

	direct_interc direct_interc_368_ (
		.in(bram_rtl_PL_ADDR_i[5]),
		.out(direct_interc_368_out));

	direct_interc direct_interc_369_ (
		.in(bram_rtl_PL_ADDR_i[6]),
		.out(direct_interc_369_out));

	direct_interc direct_interc_370_ (
		.in(bram_rtl_PL_ADDR_i[7]),
		.out(direct_interc_370_out));

	direct_interc direct_interc_371_ (
		.in(bram_rtl_PL_ADDR_i[8]),
		.out(direct_interc_371_out));

	direct_interc direct_interc_372_ (
		.in(bram_rtl_PL_ADDR_i[9]),
		.out(direct_interc_372_out));

	direct_interc direct_interc_373_ (
		.in(bram_rtl_PL_ADDR_i[10]),
		.out(direct_interc_373_out));

	direct_interc direct_interc_374_ (
		.in(bram_rtl_PL_ADDR_i[11]),
		.out(direct_interc_374_out));

	direct_interc direct_interc_375_ (
		.in(bram_rtl_PL_ADDR_i[12]),
		.out(direct_interc_375_out));

	direct_interc direct_interc_376_ (
		.in(bram_rtl_PL_ADDR_i[13]),
		.out(direct_interc_376_out));

	direct_interc direct_interc_377_ (
		.in(bram_rtl_PL_ADDR_i[14]),
		.out(direct_interc_377_out));

	direct_interc direct_interc_378_ (
		.in(bram_rtl_PL_ADDR_i[15]),
		.out(direct_interc_378_out));

	direct_interc direct_interc_379_ (
		.in(bram_rtl_PL_ADDR_i[16]),
		.out(direct_interc_379_out));

	direct_interc direct_interc_380_ (
		.in(bram_rtl_PL_ADDR_i[17]),
		.out(direct_interc_380_out));

	direct_interc direct_interc_381_ (
		.in(bram_rtl_PL_ADDR_i[18]),
		.out(direct_interc_381_out));

	direct_interc direct_interc_382_ (
		.in(bram_rtl_PL_ADDR_i[19]),
		.out(direct_interc_382_out));

	direct_interc direct_interc_383_ (
		.in(bram_rtl_PL_ADDR_i[20]),
		.out(direct_interc_383_out));

	direct_interc direct_interc_384_ (
		.in(bram_rtl_PL_ADDR_i[21]),
		.out(direct_interc_384_out));

	direct_interc direct_interc_385_ (
		.in(bram_rtl_PL_ADDR_i[22]),
		.out(direct_interc_385_out));

	direct_interc direct_interc_386_ (
		.in(bram_rtl_PL_ADDR_i[23]),
		.out(direct_interc_386_out));

	direct_interc direct_interc_387_ (
		.in(bram_rtl_PL_ADDR_i[24]),
		.out(direct_interc_387_out));

	direct_interc direct_interc_388_ (
		.in(bram_rtl_PL_ADDR_i[25]),
		.out(direct_interc_388_out));

	direct_interc direct_interc_389_ (
		.in(bram_rtl_PL_ADDR_i[26]),
		.out(direct_interc_389_out));

	direct_interc direct_interc_390_ (
		.in(bram_rtl_PL_ADDR_i[27]),
		.out(direct_interc_390_out));

	direct_interc direct_interc_391_ (
		.in(bram_rtl_PL_ADDR_i[28]),
		.out(direct_interc_391_out));

	direct_interc direct_interc_392_ (
		.in(bram_rtl_PL_ADDR_i[29]),
		.out(direct_interc_392_out));

	direct_interc direct_interc_393_ (
		.in(bram_rtl_PL_ADDR_i[30]),
		.out(direct_interc_393_out));

	direct_interc direct_interc_394_ (
		.in(bram_rtl_PL_ADDR_i[31]),
		.out(direct_interc_394_out));

	direct_interc direct_interc_395_ (
		.in(bram_rtl_PL_DATA_i[0]),
		.out(direct_interc_395_out));

	direct_interc direct_interc_396_ (
		.in(bram_rtl_PL_DATA_i[1]),
		.out(direct_interc_396_out));

	direct_interc direct_interc_397_ (
		.in(bram_rtl_PL_DATA_i[2]),
		.out(direct_interc_397_out));

	direct_interc direct_interc_398_ (
		.in(bram_rtl_PL_DATA_i[3]),
		.out(direct_interc_398_out));

	direct_interc direct_interc_399_ (
		.in(bram_rtl_PL_DATA_i[4]),
		.out(direct_interc_399_out));

	direct_interc direct_interc_400_ (
		.in(bram_rtl_PL_DATA_i[5]),
		.out(direct_interc_400_out));

	direct_interc direct_interc_401_ (
		.in(bram_rtl_PL_DATA_i[6]),
		.out(direct_interc_401_out));

	direct_interc direct_interc_402_ (
		.in(bram_rtl_PL_DATA_i[7]),
		.out(direct_interc_402_out));

	direct_interc direct_interc_403_ (
		.in(bram_rtl_PL_DATA_i[8]),
		.out(direct_interc_403_out));

	direct_interc direct_interc_404_ (
		.in(bram_rtl_PL_DATA_i[9]),
		.out(direct_interc_404_out));

	direct_interc direct_interc_405_ (
		.in(bram_rtl_PL_DATA_i[10]),
		.out(direct_interc_405_out));

	direct_interc direct_interc_406_ (
		.in(bram_rtl_PL_DATA_i[11]),
		.out(direct_interc_406_out));

	direct_interc direct_interc_407_ (
		.in(bram_rtl_PL_DATA_i[12]),
		.out(direct_interc_407_out));

	direct_interc direct_interc_408_ (
		.in(bram_rtl_PL_DATA_i[13]),
		.out(direct_interc_408_out));

	direct_interc direct_interc_409_ (
		.in(bram_rtl_PL_DATA_i[14]),
		.out(direct_interc_409_out));

	direct_interc direct_interc_410_ (
		.in(bram_rtl_PL_DATA_i[15]),
		.out(direct_interc_410_out));

	direct_interc direct_interc_411_ (
		.in(bram_rtl_PL_DATA_i[16]),
		.out(direct_interc_411_out));

	direct_interc direct_interc_412_ (
		.in(bram_rtl_PL_DATA_i[17]),
		.out(direct_interc_412_out));

	direct_interc direct_interc_413_ (
		.in(bram_rtl_PL_DATA_i[18]),
		.out(direct_interc_413_out));

	direct_interc direct_interc_414_ (
		.in(bram_rtl_PL_DATA_i[19]),
		.out(direct_interc_414_out));

	direct_interc direct_interc_415_ (
		.in(bram_rtl_PL_DATA_i[20]),
		.out(direct_interc_415_out));

	direct_interc direct_interc_416_ (
		.in(bram_rtl_PL_DATA_i[21]),
		.out(direct_interc_416_out));

	direct_interc direct_interc_417_ (
		.in(bram_rtl_PL_DATA_i[22]),
		.out(direct_interc_417_out));

	direct_interc direct_interc_418_ (
		.in(bram_rtl_PL_DATA_i[23]),
		.out(direct_interc_418_out));

	direct_interc direct_interc_419_ (
		.in(bram_rtl_PL_DATA_i[24]),
		.out(direct_interc_419_out));

	direct_interc direct_interc_420_ (
		.in(bram_rtl_PL_DATA_i[25]),
		.out(direct_interc_420_out));

	direct_interc direct_interc_421_ (
		.in(bram_rtl_PL_DATA_i[26]),
		.out(direct_interc_421_out));

	direct_interc direct_interc_422_ (
		.in(bram_rtl_PL_DATA_i[27]),
		.out(direct_interc_422_out));

	direct_interc direct_interc_423_ (
		.in(bram_rtl_PL_DATA_i[28]),
		.out(direct_interc_423_out));

	direct_interc direct_interc_424_ (
		.in(bram_rtl_PL_DATA_i[29]),
		.out(direct_interc_424_out));

	direct_interc direct_interc_425_ (
		.in(bram_rtl_PL_DATA_i[30]),
		.out(direct_interc_425_out));

	direct_interc direct_interc_426_ (
		.in(bram_rtl_PL_DATA_i[31]),
		.out(direct_interc_426_out));

	direct_interc direct_interc_427_ (
		.in(bram_rtl_PL_DATA_i[32]),
		.out(direct_interc_427_out));

	direct_interc direct_interc_428_ (
		.in(bram_rtl_PL_DATA_i[33]),
		.out(direct_interc_428_out));

	direct_interc direct_interc_429_ (
		.in(bram_rtl_PL_DATA_i[34]),
		.out(direct_interc_429_out));

	direct_interc direct_interc_430_ (
		.in(bram_rtl_PL_DATA_i[35]),
		.out(direct_interc_430_out));

	direct_interc direct_interc_431_ (
		.in(bram_rtl_sc_in[0]),
		.out(direct_interc_431_out));

	direct_interc direct_interc_432_ (
		.in(bram_rtl_sc_in[1]),
		.out(direct_interc_432_out));

	direct_interc direct_interc_433_ (
		.in(bram_rtl_sc_in[2]),
		.out(direct_interc_433_out));

	direct_interc direct_interc_434_ (
		.in(bram_rtl_sc_in[3]),
		.out(direct_interc_434_out));

	direct_interc direct_interc_435_ (
		.in(bram_rtl_sc_in[4]),
		.out(direct_interc_435_out));

	direct_interc direct_interc_436_ (
		.in(bram_rtl_sc_in[5]),
		.out(direct_interc_436_out));

	direct_interc direct_interc_437_ (
		.in(bram_rtl_sc_in[6]),
		.out(direct_interc_437_out));

	direct_interc direct_interc_438_ (
		.in(bram_rtl_sc_in[7]),
		.out(direct_interc_438_out));

	direct_interc direct_interc_439_ (
		.in(bram_rtl_sc_in[8]),
		.out(direct_interc_439_out));

	direct_interc direct_interc_440_ (
		.in(bram_rtl_sc_in[9]),
		.out(direct_interc_440_out));

	direct_interc direct_interc_441_ (
		.in(bram_rtl_sc_in[10]),
		.out(direct_interc_441_out));

	direct_interc direct_interc_442_ (
		.in(bram_rtl_sc_in[11]),
		.out(direct_interc_442_out));

	direct_interc direct_interc_443_ (
		.in(bram_rtl_sc_in[12]),
		.out(direct_interc_443_out));

	direct_interc direct_interc_444_ (
		.in(bram_rtl_sc_in[13]),
		.out(direct_interc_444_out));

	direct_interc direct_interc_445_ (
		.in(bram_rtl_sc_in[14]),
		.out(direct_interc_445_out));

	direct_interc direct_interc_446_ (
		.in(bram_rtl_sc_in[15]),
		.out(direct_interc_446_out));

	direct_interc direct_interc_447_ (
		.in(bram_rtl_sc_in[16]),
		.out(direct_interc_447_out));

	direct_interc direct_interc_448_ (
		.in(bram_rtl_sc_in[17]),
		.out(direct_interc_448_out));

	direct_interc direct_interc_449_ (
		.in(bram_rtl_sc_in[18]),
		.out(direct_interc_449_out));

	direct_interc direct_interc_450_ (
		.in(bram_rtl_sc_in[19]),
		.out(direct_interc_450_out));

	direct_interc direct_interc_451_ (
		.in(bram_rtl_sc_in[20]),
		.out(direct_interc_451_out));

	direct_interc direct_interc_452_ (
		.in(bram_rtl_sc_in[21]),
		.out(direct_interc_452_out));

	direct_interc direct_interc_453_ (
		.in(bram_rtl_sc_in[22]),
		.out(direct_interc_453_out));

	direct_interc direct_interc_454_ (
		.in(bram_rtl_sc_in[23]),
		.out(direct_interc_454_out));

	direct_interc direct_interc_455_ (
		.in(bram_rtl_sc_in[24]),
		.out(direct_interc_455_out));

	direct_interc direct_interc_456_ (
		.in(bram_rtl_sc_in[25]),
		.out(direct_interc_456_out));

	direct_interc direct_interc_457_ (
		.in(bram_rtl_sc_in[26]),
		.out(direct_interc_457_out));

	direct_interc direct_interc_458_ (
		.in(bram_rtl_sc_in[27]),
		.out(direct_interc_458_out));

	direct_interc direct_interc_459_ (
		.in(bram_rtl_sc_in[28]),
		.out(direct_interc_459_out));

	direct_interc direct_interc_460_ (
		.in(bram_rtl_sc_in[29]),
		.out(direct_interc_460_out));

	direct_interc direct_interc_461_ (
		.in(bram_rtl_sc_in[30]),
		.out(direct_interc_461_out));

	direct_interc direct_interc_462_ (
		.in(bram_rtl_sc_in[31]),
		.out(direct_interc_462_out));

	direct_interc direct_interc_463_ (
		.in(bram_rtl_sc_in[32]),
		.out(direct_interc_463_out));

	direct_interc direct_interc_464_ (
		.in(bram_rtl_sc_in[33]),
		.out(direct_interc_464_out));

	direct_interc direct_interc_465_ (
		.in(bram_rtl_sc_in[34]),
		.out(direct_interc_465_out));

	direct_interc direct_interc_466_ (
		.in(bram_rtl_sc_in[35]),
		.out(direct_interc_466_out));

	direct_interc direct_interc_467_ (
		.in(bram_rtl_sc_in[36]),
		.out(direct_interc_467_out));

	direct_interc direct_interc_468_ (
		.in(bram_rtl_sc_in[37]),
		.out(direct_interc_468_out));

	direct_interc direct_interc_469_ (
		.in(bram_rtl_sc_in[38]),
		.out(direct_interc_469_out));

	direct_interc direct_interc_470_ (
		.in(bram_rtl_sc_in[39]),
		.out(direct_interc_470_out));

	direct_interc direct_interc_471_ (
		.in(bram_rtl_sc_in[40]),
		.out(direct_interc_471_out));

	direct_interc direct_interc_472_ (
		.in(bram_rtl_sc_in[41]),
		.out(direct_interc_472_out));

	direct_interc direct_interc_473_ (
		.in(bram_rtl_sc_in[42]),
		.out(direct_interc_473_out));

	direct_interc direct_interc_474_ (
		.in(bram_rtl_sc_in[43]),
		.out(direct_interc_474_out));

	direct_interc direct_interc_475_ (
		.in(bram_rtl_CLK_A1_i),
		.out(direct_interc_475_out));

	direct_interc direct_interc_476_ (
		.in(bram_rtl_CLK_A2_i),
		.out(direct_interc_476_out));

	direct_interc direct_interc_477_ (
		.in(bram_rtl_CLK_B1_i),
		.out(direct_interc_477_out));

	direct_interc direct_interc_478_ (
		.in(bram_rtl_CLK_B2_i),
		.out(direct_interc_478_out));

	direct_interc direct_interc_479_ (
		.in(bram_rtl_PL_CLK_i),
		.out(direct_interc_479_out));

endmodule
// ----- END Verilog module for logical_tile_bram_mode_default__bram_rtl -----

//----- Default net type -----
`default_nettype none



// ----- END Physical programmable logic block Verilog module: bram_rtl -----
