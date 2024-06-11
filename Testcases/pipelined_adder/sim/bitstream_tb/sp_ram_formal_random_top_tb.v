`timescale 1ns / 1ps

`default_nettype none

module sp_ram_top_formal_verification_random_tb;

	parameter ADDR_WIDTH          = 10;
	parameter DATA_WIDTH          = 32;
	parameter SIZE            	  = 1024;
	reg clock0;

	reg [31:0] data;
	reg [9:0] addr;
	reg we;

	wire [31:0] q;
	reg [DATA_WIDTH-1:0] memory[0:SIZE-1];
	bit [DATA_WIDTH-1:0] wdata;
	reg [DATA_WIDTH-1:0] rd_data;
    bit [ADDR_WIDTH-1:0] address;
	int error=0;
	int pass=0;

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

	`include "../sp_ram/pin_assignments.v"

	initial begin
		`include "../../bitstream_text.txt"
		data = 0;
		addr = 0;
		we=0;
		repeat(10) @(negedge clock0);
		global_resetn = 1'b1;
		repeat(10) @(negedge clock0);
		// global_resetn = 1'b0;
		// we=1;

		for (int i = 0; i<SIZE; i++) begin
			wdata = $random();              // $urandom_range(0, ((2**DATA_WIDTH)-1));
			address = $random();            // $urandom_range(0, ((2**DATA_WIDTH)-1));
			memory[address] = wdata;
			//write
			write(address, wdata);
			//Read
			read(address, rd_data);
			compare(address, rd_data);
		end

		#10;
		$finish;
	end

	task write(reg[ADDR_WIDTH-1:0] address, reg[DATA_WIDTH-1:0] w_data);
		@(negedge clock0);
		addr = address;
		data = w_data;
		we = 1;
		@(negedge clock0);
		we = 0;
	endtask
	
	task read(reg[ADDR_WIDTH-1:0] address, output reg [DATA_WIDTH-1:0] rd_data);
		@(negedge clock0);
		we = 0;
		addr = address;
		@(negedge clock0);
		rd_data = q;
	endtask
	
    function void compare(reg[ADDR_WIDTH-1:0] exp_addr, reg [DATA_WIDTH-1:0] cap_data);
		if (cap_data !== memory[exp_addr]) begin
			$display("Status: Test Failed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
			error++;
		end
		else begin
			$display("Status: Test Passed: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
			pass++;
		end 
	endfunction

	initial begin
		$dumpfile("sp_ram_formal.vcd");
		$dumpvars(0, sp_ram_top_formal_verification_random_tb);
	end

endmodule

