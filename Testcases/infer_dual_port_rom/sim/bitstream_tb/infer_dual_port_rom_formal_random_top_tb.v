`default_nettype none

module infer_dual_port_rom_top_formal_verification_random_tb;

	reg clock0;
	reg [9:0] addr_a;
	reg [9:0] addr_b;

	wire [11:0] q_a;
	wire [11:0] q_b;
	reg [11:0] expected_data;

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
		$readmemh("../../rtl/memory_test.mem", expected_data);
	end

	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#1
			clock0 <= !clock0;
		end
	end

	`include "../infer_dual_port_rom/pin_assignments.v"

	initial begin
		`include "../../bitstream_text.txt"
		addr_a<=0;
		addr_b<=0;
		repeat(10)@(negedge clock0);
		global_resetn = 1'b1;
		repeat(10)@(negedge clock0);

		for(int i=0;i<=1024;i++) begin
			@(negedge clock0);
			addr_a=i;
			addr_b=i;
			@(negedge clock0);
			// @(negedge clk);
			if (q_a !== expected_data[addr_a] || q_b !== expected_data[addr_b]) begin
				$display("Status: Test Failed. Data Mismatch at addr_a %0d: Expected %h, Actual %h", addr_a, expected_data[addr_a], q_a);
			end
			else begin
				$display("Status: Test Passed. Data Match at addr_b %0d: Expected %h, Actual %h", addr_b, expected_data[addr_b], q_b);
			end
		end
	
		repeat(2048)@(negedge clock0) begin
			addr_a=$random();
			addr_b=$random();
			@(negedge clock0);
			if (q_a !== expected_data[addr_a] || q_b !== expected_data[addr_b]) begin
				$display("Status: Test Failed. Data Mismatch at addr_a %0d: Expected %h, Actual %h", addr_a, expected_data[addr_a], q_a);
			end
			else begin
				$display("Status: Test Passed. Data Match at addr_b %0d: Expected %h, Actual %h", addr_b, expected_data[addr_b], q_b);
			end
		end
	
		repeat(10)@(negedge clock0);
		$finish;
	end

	initial begin
		$dumpfile("infer_dual_port_rom_formal.vcd");
		$dumpvars(1, infer_dual_port_rom_top_formal_verification_random_tb);
	end

endmodule

