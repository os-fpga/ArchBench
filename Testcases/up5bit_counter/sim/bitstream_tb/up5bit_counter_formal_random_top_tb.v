//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: up5bit_counter
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed May  3 16:14:45 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module up5bit_counter_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg clock0;

// ----- Shared inputs -------
	reg reset;

// ----- FPGA fabric outputs -------
	wire [0:4] out;
	integer i;
	reg [6:0] counter_model=0;
	reg[31:0] error=0;
	// wire out[3];
	// wire out[2];
	// wire out[1];
	// wire out[0];

// ----- FPGA fabric instanciation -------
	// up5bit_counter_top_formal_verification FPGA_DUT(
	// 	clk,
	// 	reset,
	// 	out[4],
	// 	out[3],
	// 	out[2],
	// 	out[1],
	// 	out[0]
	// );
// ----- End FPGA Fabric Instanication -------

	wire [0:7] clk;
	wire [0:2303] gfpga_pad_QL_PREIO_A2F;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:9] ccff_head;
	wire [0:9] ccff_tail;
	bit global_resetn;
	wire scan_en;
	wire scan_mode;
	wire prog_clock;
	wire [0:2] rwm;
	
	// ----- FPGA top-level module to be capsulated -----
		fpga_top U0_formal_verification (
			.clk(clk[0:7]),
			.global_resetn(global_resetn),
			.scan_en(scan_en),
			.scan_mode(scan_mode),
			.prog_clock(prog_clock),
			.rwm(rwm[0:2]),
			.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[0:2303]),
			.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[0:2303]),
			.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[0:2303]),
			.ccff_head(ccff_head[0:9]),
			.ccff_tail(ccff_tail[0:9]));
	
	// ----- Begin Connect Global ports of FPGA top module -----
		assign prog_clock = 1'b0;
		// assign global_resetn = 1'b0;
		assign scan_en = 1'b0;
		assign scan_mode = 1'b0;
		assign rwm[0:2] = 3'b011;
		// assign rwm[1] = 1'b0;
		// assign rwm[2] = 1'b0;
		assign clk[0] = clock0;
		assign clk[1] = 1'b0;
		assign clk[2] = 1'b0;
		assign clk[3] = 1'b0;
		assign clk[4] = 1'b0;
		assign clk[5] = 1'b0;
		assign clk[6] = 1'b0;
		assign clk[7] = 1'b0;
// ----- Clock 'clk' Initialization -------
	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
	`include "../up5bit_counter/PinMapping.v"

	initial begin
	`include "../../bitstream_text.txt"
		reset <= 1'b1;
		global_resetn <= 1'b0;
		repeat(2)@(posedge clock0);
		reset <= 1'b0;
		repeat(8)@(posedge clock0);
		global_resetn <= 1'b1;

		
		for (i=0; i<2**4; i=i+1)begin
			@(posedge clock0);
			if (counter_model !== out) begin
				error = error+1;
				$display("Status: Test Failed  =>  Model Output = %7b , Fabric Output  = %7b",counter_model,out);
			end
			else begin
				$display("Status: Test Passed  =>  Model Output = %7b , Fabric Output  = %7b",counter_model,out);	
			end
			counter_model = counter_model+1;
	end
		$finish;
	end

// ----- Input Stimulus -------
	// always@(negedge clock0) begin
	// 	reset <= $random;
	// end

// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("up5bit_counter_formal.vcd");
		$dumpvars(1, up5bit_counter_top_formal_verification_random_tb);
	end
// ----- END output waveform to VCD file -------

// initial begin
// 	$timeformat(-9, 2, "ns", 20);
// 	$display("Simulation start");
// // ----- Can be changed by the user for his/her need -------
// 	#20
// 	$display("Simulation Succeed");
// 	$finish;
// end

endmodule
// ----- END Verilog module for up5bit_counter_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype none

