`timescale 1ns / 1ps

`default_nettype none

module add_1bit_top_formal_verification_random_tb;

	reg  clock0;
	reg  a;
	reg  b;
	wire  c;
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
	`include "../add_1bit/PinMapping.v"

	initial begin
		`include "../../bitstream_text.txt"
		// config_enable[0]=1'b1;
		// CFG_DONE=1'b1;
		a = 1'b0;
		b = 1'b0;
		#5;
		global_resetn<=1'b1;
		#15
		if (c === 0)
		  $display("Status: Test Passed");
		else  
		  $display("Status: Test Failed");
		  
		a = 1'b0; 
		b = 1'b1;
		#15
		if (c === 1)
		  $display("Status: Test Passed");
		else  
		  $display("Status: Test Failed");
	  
		a = 1'b1;
		b = 1'b0;
		#15
		if (c === 1)
		  $display("Status: Test Passed");
		else  
		  $display("Status: Test Failed");
  
		a = 1'b1;
		b = 1'b1;
		#15
		if (c === 0)
		  $display("Status: Test Passed");
		else  
		  $display("Status: Test Failed");
	  
		a = 1'b0;
		b = 1'b1;
		#15
		if (c === 1)
		  $display("Status: Test Passed");
		else  
		  $display("Status: Test Failed");

		a = 1'b1;
		b = 1'b0;
		#15
		if (c === 1)
		  $display("Status: Test Passed");
		else  
		  $display("Status: Test Failed");

		a = 1'b1;
		b = 1'b1;
		#15
		if (c === 0)
		  $display("Status: Test Passed");
		else  
		  $display("Status: Test Failed");
		#10
		$finish;
end

	initial begin
		$dumpfile("add_1bit_formal.vcd");
		$dumpvars(1, add_1bit_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

