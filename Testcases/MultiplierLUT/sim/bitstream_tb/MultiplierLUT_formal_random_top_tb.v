`timescale 1ns / 1ps

`default_nettype none

module MultiplierLUT_top_formal_verification_random_tb;

	reg clock0;
	reg [3:0] clk;

	reg [1:0] b;
	reg [1:0] a;
	
	wire [3:0] z;
	wire [0:639] gfpga_pad_QL_PREIO_A2F;
	wire [0:639] gfpga_pad_QL_PREIO_F2A;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_DEF0;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_DEF1;
	wire [0:639] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:9] ccff_head;
	wire [0:9] ccff_tail;
	wire test_en;
	wire scan_mode;
	wire scan_clk;
	// wire [0:0] config_enable;
	wire prog_clock;
	// wire [0:0] CFG_DONE;
	wire global_resetn;
	
		fpga_top U0_formal_verification (
			clk,
			test_en,
			scan_mode,
			scan_clk,
			prog_clock,
			global_resetn,
			gfpga_pad_QL_PREIO_A2F[0:639],
			gfpga_pad_QL_PREIO_F2A[0:639],
			gfpga_pad_QL_PREIO_F2A_DEF0[0:639],
			gfpga_pad_QL_PREIO_F2A_DEF1[0:639],
			gfpga_pad_QL_PREIO_F2A_CLK[0:639],
			ccff_head[0:9],
			ccff_tail[0:9]);
	
		// assign config_enable = 1'b0;
		assign prog_clock = 1'b0;
		// assign CFG_DONE = 1'b1;
		assign test_en = 1'b0;
		assign scan_mode = 1'b0;
		assign scan_clk = 1'b0;
		assign global_resetn = 1'b1;
		assign clk[0] = clock0;
		assign clk[1] = 1'b0;
		assign clk[2] = 1'b0;
		assign clk[3] = 1'b0;
		
	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

	`include "../MultiplierLUT/PinMapping.v"
	initial begin
		`include "../../bitstream_text.txt"
		// config_enable=1'b1;
		// CFG_DONE=1'b1;

		a <= 2'b00;
		b <= 2'b00;
		#5;
		if (z==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b00;
		b <= 2'b01;
		#5;
		if (z==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b00;
		b <= 2'b10;
		#5;
		if (z==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b00;
		b <= 2'b11;
		#5;
		if (z==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b01;
		b <= 2'b00;
		#5;
		if (z==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b01;
		b <= 2'b01;
		#5;
		if (z==4'b0001)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b01;
		b <= 2'b10;
		#5;
		if (z==4'b0010)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b01;
		b <= 2'b11;
		#5;
		if (z==4'b0011)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b10;
		b <= 2'b00;
		#5;
		if (z==4'b0000)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b10;
		b <= 2'b01;
		#5;
		if (z==4'b0010)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b10;
		b <= 2'b10;
		#5;
		if (z==4'b0100)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b10;
		b <= 2'b11;
		#5;
		if (z==4'b0110)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b11;
		b <= 2'b00;
		#5;
		if (z==4'b0000)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b11;
		b <= 2'b01;
		#5;
		if (z==4'b0011)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b11;
		b <= 2'b10;
		#5;
		if (z==4'b0110)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a <= 2'b11;
		b <= 2'b11;
		#5;
		if (z==4'b1001)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		#5;
		$finish;
		end

	initial begin
		$dumpfile("MultiplierLUT_formal.vcd");
		$dumpvars(1, MultiplierLUT_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

