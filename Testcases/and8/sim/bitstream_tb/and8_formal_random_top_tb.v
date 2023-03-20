`timescale 1ns / 1ps

`default_nettype none

module and8_top_formal_verification_random_tb;

	reg [0:3] clk;

	reg a[7];
	reg a[6];
	reg a[5];
	reg a[4];
	reg a[3];
	reg a[2];
	reg a[1];
	reg a[0];

	wire b;
	
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
	wire global_resetn;
	// wire config_enable;
	wire prog_clock;
	// wire CFG_DONE;
	
		fpga_top U0_formal_verification (
			clk,
			test_en,
			scan_mode,
			scan_clk,
			prog_clock,
			global_resetn,
			CFG_DONE,
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
		
		initial begin
			clk[0] <= 1'b0;
			clk[1] <= 1'b0;
			clk[2] <= 1'b0;
			clk[3] <= 1'b0;
			while(1) begin
				#1
				clk[0] <= !clk[0];
				clk[1] <= !clk[1];
				clk[2] <= !clk[2];
				clk[3] <= !clk[3];
			end
		end
		`include "../and8/PinMapping.v"

	initial begin
		`include "../../bitstream_text.txt"
		
		#1;
		a[0]=1'b0;
		a[1]=1'b0;
		a[2]=1'b0;
		a[3]=1'b0;
		a[4]=1'b0;
		a[5]=1'b0;
		a[6]=1'b0;
		a[7]=1'b0;
		#5;
		if (b==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a[0]=1'b1;
		#5;
		if (b==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a[1]=1'b1;
		#5;
		if (b==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a[2]=1'b1;
		#5;
		if (b==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a[3]=1'b1;
		#5;
		if (b==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a[4]=1'b1;
		#5;
		if (b==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a[5]=1'b1;
		#5;
		if (b==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a[6]=1'b1;
		#5;
		if (b==0)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");

		a[7]=1'b1;
		#5;
		if (b==1)
			$display("Status: Test Passed");
		else
			$display("Status: Test Failed");
		#10;
		$finish;
	end

	initial begin
		$dumpfile("and8.vcd");
		$dumpvars(1, and8_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

