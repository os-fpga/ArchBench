`timescale 1ns / 1ps

`default_nettype none

module fabric_up5bit_counter_dual_clock_top_formal_verification_random_tb;

	reg [0:0] clk0;
	reg [0:0] clk1;
	reg [0:0] reset;
	wire [4:0] out1;
	wire [4:0] out0;

	integer i;
	reg [4:0] counter_model=5'b00000;
	reg [4:0] counter_model_two=5'b00000;

	fabric_up5bit_counter_dual_clock_top_formal_verification FPGA_DUT(
		clk0,
		reset,
		clk1,
		out1,
		out0
	);

	initial begin
		clk0 <= 1'b0;
		while(1) begin
			#7
			clk0 <= !clk0;
		end
	end

	initial begin
		clk1 <= 1'b0;
		while(1) begin
			#4
			clk1 <= !clk1;
		end
	end

	task up_counter_one;
	begin
		for (int i=0; i<2**5; i=i+1)begin
			@(posedge clk1);
			if (counter_model !== out1) begin
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
				$display("Status: Test Failed  =>  Model Output = %7b , Fabric Output  = %7b , clk0",counter_model_two,out0);
			end
			else begin
				$display("Status: Test Passed  =>  Model Output = %7b , Fabric Output  = %7b , clk0",counter_model_two,out0);	
			end
			counter_model_two = counter_model_two+1;
		end
	end
	endtask

	initial begin
		$dumpfile("fabric_up5bit_counter_dual_clock_formal.vcd");
		$dumpvars(1, fabric_up5bit_counter_dual_clock_top_formal_verification_random_tb);
	end

initial begin
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");

	reset = 1'b1;
	repeat(10)@(posedge clk0);
	reset = 1'b0;

    fork 
        up_counter_one;
        up_counter_two;
    join

	#20
	$display("Simulation Succeed");
	$finish;
end

endmodule

