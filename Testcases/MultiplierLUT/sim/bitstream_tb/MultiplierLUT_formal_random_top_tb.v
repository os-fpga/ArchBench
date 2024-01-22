`default_nettype none

module MultiplierLUT_top_formal_verification_random_tb;

	reg clock0;

	reg [1:0] a;
	reg [1:0] b;

	wire [3:0] z;

	wire [0:15] clk;
	wire [0:2303] gfpga_pad_QL_PREIO_A2F;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A;
	wire [0:2303] gfpga_pad_QL_PREIO_F2A_CLK;
	wire [0:511] bl_config_region_0;
	wire [0:397] wl_config_region_0;
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
		bl_config_region_0[0:511],
		wl_config_region_0[0:397]);

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

	`include "../MultiplierLUT/PinMapping.v"
	initial begin
		`include "../../bitstream_text.txt"
		// config_enable=1'b1;
		// CFG_DONE=1'b1;

		a <= 2'b00;
		b <= 2'b00;
		#5
		global_resetn=1'b1;
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

