`timescale 1ns / 1ps

`default_nettype none

module unsigned_multiply_top_formal_verification_random_tb;

	reg clock0;

	reg [4:0] dataa;
	reg [4:0] datab;
	bit [9:0] dataout_tb;
	wire [9:0] dataout;

	int error=0;

	wire [0:15] clk;
	wire [0:2303] gfpga_pad_QL_PREIO_A2F;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A;
	bit [0:2303] gfpga_pad_QL_PREIO_F2A_CLK;
	bit [0:513] bl_config_region_0;
	bit [0:406] wl_config_region_0;
	bit global_resetn;
	bit scan_en;
	bit scan_mode;

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
	assign clk[1] = clock0;
	assign clk[2] = clock0;
	assign clk[3] = clock0;
	assign clk[4] = clock0;
	assign clk[5] = clock0;
	assign clk[6] = clock0;
	assign clk[7] = clock0;
	assign clk[8] = clock0;
	assign clk[9] = clock0;
	assign clk[10] = clock0;
	assign clk[11] = clock0;
	assign clk[12] = clock0;
	assign clk[13] = clock0;
	assign clk[14] = clock0;
	assign clk[15] = clock0;
	
	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

	// `include "../unsigned_multiply/PinMapping.v"
	`include "../unsigned_multiply/pin_assignments.v"

	initial begin
		`include "../../bitstream_text.txt"
		dataa = 'b0;
		datab = 'b0;
		// dataout_tb= 'b0;
		repeat(10) @(negedge clock0);
		global_resetn = 1'b1;
		repeat(10) @(negedge clock0);

		for (int i = 0; i < 100; i=i+1) begin
			@(negedge clock0);
			dataa = $urandom_range(2**5 -1,0);
			datab = $urandom_range(2**5 -1,0);
			dataout_tb = dataa*datab;
			@(posedge clock0);
			#10;
			@(posedge clock0)
			if(dataout_tb !== dataout) begin
				$display("Status: Test Failed: @%0t dataa: %0d, datab: %0d, dataout: %0d, dataout_tb: %0d", $time, dataa, datab, dataout, dataout_tb); 
				error = error + 1;
			end
			else
				$display("Status: Test Passed: @%0t dataa: %0d, datab: %0d, dataout: %0d, dataout_tb: %0d", $time, dataa, datab, dataout, dataout_tb); 
		end
		repeat(10)@(negedge clock0);
		$finish;
	end

	initial begin
		$dumpfile("unsigned_multiply_formal.vcd");
		$dumpvars(1, unsigned_multiply_top_formal_verification_random_tb);
	end

endmodule

