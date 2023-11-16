`timescale 1ns / 1ps

`default_nettype none

module up5bit_counter_dual_clock_top_formal_verification_random_tb;

	reg clk0;
	reg clk1;
	reg reset;

	wire [4:0] out0,out1;
	integer i;
	reg [4:0] counter_model=5'b00000;
	reg [4:0] counter_model_two=5'b00001;
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
	assign clk[0] = 0;
	assign clk[1] = 0;
	assign clk[2] = 0;
	assign clk[3] = 0;
	assign clk[4] = 0;
	assign clk[5] = 0;
	assign clk[6] = 0;
	assign clk[7] = 0;
	assign clk[8] = 0;
	assign clk[9] = 0;
	assign clk[10] = 0;
	assign clk[11] = 0;
	assign clk[12] = 0;
	assign clk[13] = 0;
	assign clk[14] = clk1;
	assign clk[15] = clk0;
	
	always #7 clk0 <= !clk0;
	always #4 clk1 <= !clk1;

	task up_counter_one;
	begin
			
		for (int i=0; i<2**5; i=i+1)begin
			@(posedge clk1);
			if (counter_model !== out1) begin
				error = error+1;
				$display("Status: Test Failed  =>  Model Output = %7b , Fabric Output  = %7b , clk1",counter_model,out1);
			end
			else begin
				$display("Status: Test Passed  =>  Model Output = %7b , Fabric Output  = %7b , clk1",counter_model,out1);	
			end
			counter_model = counter_model+1;
	end
				end
	endtask
	
	task up_counter_two;
		begin
		for (int i=0; i<2**5; i=i+1)begin
			@(posedge clk0);
			if (counter_model_two !== out0) begin
				error = error+1;
				$display("Status: Test Failed  =>  Model Output = %7b , Fabric Output  = %7b , clk0",counter_model_two,out0);
			end
			else begin
				$display("Status: Test Passed  =>  Model Output = %7b , Fabric Output  = %7b , clk0",counter_model_two,out0);	
			end
			counter_model_two = counter_model_two+1;
		end
	end
	endtask
	
	`include "../up5bit_counter_dual_clock/PinMapping.v"

	initial begin
		clk0 <= 1'b0;
		clk1 <= 1'b0;
		`include "../../bitstream_text.txt"
		reset = 1'b1;
		global_resetn = 1'b0;
		repeat(2)@(posedge clk0);
		reset = 1'b0;
		repeat(8)@(posedge clk0);
		global_resetn = 1'b1;
		
        fork 
            up_counter_one;
            up_counter_two;
        join
		
		$finish;
	end

	initial begin
		$dumpfile("up5bit_counter.vcd");
		$dumpvars(0,up5bit_counter_dual_clock_top_formal_verification_random_tb);
	end
endmodule

`default_nettype none

