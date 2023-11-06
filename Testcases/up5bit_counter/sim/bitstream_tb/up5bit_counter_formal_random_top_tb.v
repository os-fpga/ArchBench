`timescale 1ns / 1ps

`default_nettype none

module up5bit_counter_top_formal_verification_random_tb;
	reg clock0;

	reg reset;

	wire [4:0] out;
	integer i;
	reg [4:0] counter_model=5'b00001;
	reg[31:0] error=0;

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
		.clk(clk[0:15]),
		.global_resetn(global_resetn),
		.scan_en(scan_en),
		.scan_mode(scan_mode),
		.gfpga_pad_QL_PREIO_A2F(gfpga_pad_QL_PREIO_A2F[0:2303]),
		.gfpga_pad_QL_PREIO_F2A(gfpga_pad_QL_PREIO_F2A[0:2303]),
		.gfpga_pad_QL_PREIO_F2A_CLK(gfpga_pad_QL_PREIO_F2A_CLK[0:2303]),
		.bl_config_region_0(bl_config_region_0[0:513]),
		.wl_config_region_0(wl_config_region_0[0:406]));

	assign gfpga_pad_QL_PREIO_A2F [0:71] = 0;
	assign gfpga_pad_QL_PREIO_A2F [73:190] = 0;
	assign gfpga_pad_QL_PREIO_A2F [192:2303] = 0;
	assign bl_config_region_0 [0:513] = 0;
	assign wl_config_region_0 [0:406] = 0;
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

	`include "../up5bit_counter/PinMapping.v"

	initial begin
	`include "../../bitstream_text.txt"
		reset = 1'b1;
		global_resetn = 1'b0;
		repeat(2)@(posedge clock0);
		reset = 1'b0;
		repeat(8)@(posedge clock0);
		global_resetn = 1'b1;

		
		for (i=0; i<2**4; i=i+1)begin
			@(posedge clock0);
			if (counter_model !== out) begin
				error = error+1;
				$display("Status: Test Failed  =>  Model Output = %7b , Fabric Output  = %7b",counter_model,out);
			end
			else begin
				$display("Status: Test Passed  =>  Model Output = %7b , Fabric Output  = %7b",counter_model,out);	
			end
			counter_model = counter_model+1;
	end
		$finish;
	end
	
	initial begin
		$dumpfile("up5bit_counter.vcd");
		$dumpvars(0, up5bit_counter_top_formal_verification_random_tb);
	end

endmodule

`default_nettype none

