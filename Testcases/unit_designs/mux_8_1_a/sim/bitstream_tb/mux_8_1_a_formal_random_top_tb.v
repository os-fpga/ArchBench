`timescale 1ns / 1ps

`default_nettype none

module mux_8_1_a_top_formal_verification_random_tb;
	reg clock0;

	reg D0;
	reg D1;
	reg D2;
	reg D3;
	reg D4;
	reg D5;
	reg D6;
	reg D7;
	reg S0;
	reg S1;
	reg S2;

	wire [0:0] out;
	
	wire [0:3] clk;
	wire [0:0] global_reset;
	wire [0:0] scan_reset;
	wire [0:639] gfpga_pad_QL_PREIO_A2F;
	wire [0:639] gfpga_pad_QL_PREIO_F2A;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_DEF0;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_DEF1;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:9] ccff_head;
	wire [0:9] ccff_tail;
	wire [0:0] test_en;
	wire [0:0] scan_mode;
	wire [0:0] scan_clk;
	bit [0:0] config_enable;
	wire [0:0] prog_clock;
	bit [0:0] CFG_DONE;
	
	fpga_top U0_formal_verification (
		clk[0:3],
		global_reset[0],
		scan_reset[0],
		test_en[0],
		scan_mode[0],
		scan_clk[0],
		config_enable[0],
		prog_clock[0],
		CFG_DONE[0],
		gfpga_pad_QL_PREIO_A2F[0:639],
		gfpga_pad_QL_PREIO_F2A[0:639],
		gfpga_pad_QL_PREIO_F2A_DEF0[0:639],
		gfpga_pad_QL_PREIO_F2A_DEF1[0:639],
		gfpga_pad_QL_PREIO_F2A_CLK[0:639],
		ccff_head[0:9],
		ccff_tail[0:9]);
		
	assign prog_clock[0] = 1'b0;
	assign test_en[0] = 1'b0;
	assign scan_mode[0] = 1'b0;
	assign scan_clk[0] = 1'b0;
	assign clk[0] = clock0;
	assign clk[1] = 1'b0;
	assign clk[2] = 1'b0;
	assign clk[3] = 1'b0;
	assign global_reset[0] = 1'b1;
	assign scan_reset[0] = 1'b1;
		
	initial begin
		clock0[0] <= 1'b0;
		while(1) begin
			#1
			clock0[0] <= !clock0[0];
		end
	end
	
	`include "../mux_8_1_a/PinMapping.v"
	initial begin
		`include "../../bitstream_text.txt"
		config_enable[0]=1'b1;
		CFG_DONE[0]=1'b1;

		D0 <= 1'b0;
		D1 <= 1'b1;
		D2 <= 1'b0;
		D3 <= 1'b1;
		D4 <= 1'b0;
		D5 <= 1'b1;
		D6 <= 1'b0;
		D7 <= 1'b1;

		S0 <= 1'b0;
		S1 <= 1'b0;
		S2 <= 1'b0;

		#5;
		if(out==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		#5;
		S0 <= 1'b1;
		S1 <= 1'b0;
		S2 <= 1'b0;
		#5;
		if(out==1)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		#5;
		S0 <= 1'b0;
		S1 <= 1'b1;
		S2 <= 1'b0;
		#5;
		if(out==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		#5;
		S0 <= 1'b1;
		S1 <= 1'b1;
		S2 <= 1'b0;
		#5;
		if(out==1)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		#5;
		S0 <= 1'b0;
		S1 <= 1'b0;
		S2 <= 1'b1;
		#5;
		if(out==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		#5;
		S0 <= 1'b1;
		S1 <= 1'b0;
		S2 <= 1'b1;
		#5;
		if(out==1)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		#5;
		S0 <= 1'b0;
		S1 <= 1'b1;
		S2 <= 1'b1;
		#5;
		if(out==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		#5;
		S0 <= 1'b1;
		S1 <= 1'b1;
		S2 <= 1'b1;
		#5;
		if(out==1)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		
		S0 <= 1'b0;
		S1 <= 1'b0;
		S2 <= 1'b0;
		#10;
		$finish;
	end

	initial begin
		$dumpfile("mux_8_1_a.vcd");
		$dumpvars(1, mux_8_1_a_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

