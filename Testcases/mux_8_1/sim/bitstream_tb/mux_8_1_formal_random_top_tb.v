`timescale 1ns / 1ps

`default_nettype none

module mux_8_1_top_formal_verification_random_tb;

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
	
	wire out;
	
	wire [0:15] clk;
	wire [0:2303] gfpga_pad_QL_PREIO_A2F;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:513] bl_config_region_0;
	wire [0:406] wl_config_region_0;
	bit global_resetn;
	wire scan_en;
	wire scan_mode;

	fpga_top U0_formal_verification (
		clk[0:15],
		global_resetn,
		scan_en,
		scan_mode,
		gfpga_pad_QL_PREIO_A2F[0:2303],
		gfpga_pad_QL_PREIO_F2A[0:2303],
		gfpga_pad_QL_PREIO_F2A_CLK[0:2303],
		bl_config_region_0[0:513],
		wl_config_region_0[0:406]);

	// assign global_resetn = 1'b0;
	assign scan_en = 1'b0;
	assign scan_mode = 1'b0;
	assign clk[0] = clock0;
	assign clk[1] = 1'b0;
	assign clk[2] = 1'b0;
	assign clk[3] = 1'b0;
	assign clk[4] = 1'b0;
	assign clk[5] = 1'b0;
	assign clk[6] = 1'b0;
	assign clk[7] = 1'b0;
	assign clk[8] = 1'b0;
	assign clk[9] = 1'b0;
	assign clk[10] = 1'b0;
	assign clk[11] = 1'b0;
	assign clk[12] = 1'b0;
	assign clk[13] = 1'b0;
	assign clk[14] = 1'b0;
	assign clk[15] = 1'b0;

		initial begin
			clock0 <= 1'b0;
			while(1) begin
				#1
				clock0 <= !clock0;
			end
		end
		`include "../mux_8_1/PinMapping.v"

		initial begin
			`include "../../bitstream_text.txt"
			// config_enable[0]=1'b1;
			// CFG_DONE[0]=1'b1;
			$display("Simulation start");
	
			D0 <= 1'b1;
			D1 <= 1'b0;
			D2 <= 1'b1;
			D3 <= 1'b0;
			D4 <= 1'b1;
			D5 <= 1'b0;
			D6 <= 1'b1;
			D7 <= 1'b0;
	
			S0 <= 1'b0;
			S1 <= 1'b0;
			S2 <= 1'b0;

			#5;
			global_resetn = 1'b1;
			#5;
			if(out==1)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b1;
			S1 <= 1'b0;
			S2 <= 1'b0;
			#5;
			if(out==0)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b0;
			S1 <= 1'b1;
			S2 <= 1'b0;
			#5;
			if(out==1)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b1;
			S1 <= 1'b1;
			S2 <= 1'b0;
			#5;
			if(out==0)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b0;
			S1 <= 1'b0;
			S2 <= 1'b1;
			#5;
			if(out==1)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b1;
			S1 <= 1'b0;
			S2 <= 1'b1;
			#5;
			if(out==0)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b0;
			S1 <= 1'b1;
			S2 <= 1'b1;
			#5;
			if(out==1)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#5;
			S0 <= 1'b1;
			S1 <= 1'b1;
			S2 <= 1'b1;
			#5;
			if(out==0)
				$display("Status: Test Passed");
			else
				$display("Status: Test Failed");
			#10;
			$display("Simulation completed");
			$finish;
	end

	initial begin
		$dumpfile("mux_8_1.vcd");
		$dumpvars(1, mux_8_1_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

