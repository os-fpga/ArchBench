`timescale 1ns / 1ps

`default_nettype none

module MultiplierLUT_top_formal_verification_random_tb;
	reg clock0;

	reg [1:0] b;
	reg [1:0] a;
	
	wire [3:0] z;
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
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

	`include "../MultiplierLUT/PinMapping.v"
	initial begin
		`include "../../bitstream_text.txt"
		config_enable=1'b1;
		CFG_DONE=1'b1;

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
		$dumpfile("MultiplierLUT.vcd");
		$dumpvars(1, MultiplierLUT_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

