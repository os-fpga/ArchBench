`default_nettype none

module rom_top_formal_verification_random_tb;

	localparam  DATA_WIDTH = 8;
	localparam  ADDR_WIDTH = 7;

	reg clock0;
	reg [ADDR_WIDTH-1:0] address;
	wire [DATA_WIDTH-1:0] data;
	reg [DATA_WIDTH-1:0] expected_data [0:(1<<ADDR_WIDTH)-1];

	integer i;

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
		$readmemb("../../rtl/memory_file.mem", expected_data);
	end

	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

	`include "../rom/pin_assignments.v"

	initial begin
		`include "../../bitstream_text.txt"
		address<=0;
		repeat(10)@(negedge clock0);
		global_resetn = 1'b1;

		for (i = 0; i <128; i = i +1 )begin
			@(negedge clock0); 
			address = i;
			if (data !== expected_data[address]) begin
			  $display("Status: Test Failed. Data Mismatch at address %0d: Expected %h, Actual %h", address, expected_data[address], data);
			end
			else begin
			  $display("Status: Test Passed. Data Match at address %0d: Expected %h, Actual %h", address, expected_data[address], data);
			end
		end

		repeat(256)@(negedge clock0) begin
			address = $random();
			if (data !== expected_data[address]) begin
			  $display("Status: Test Failed. Data Mismatch at address %0d: Expected %h, Actual %h", address, expected_data[address], data);
			end
			else begin
			  $display("Status: Test Passed. Data Match at address %0d: Expected %h, Actual %h", address, expected_data[address], data);
			end
		end

		repeat(10) @(negedge clock0);
		$finish;
	  end

	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(1, rom_top_formal_verification_random_tb);
	end

endmodule

