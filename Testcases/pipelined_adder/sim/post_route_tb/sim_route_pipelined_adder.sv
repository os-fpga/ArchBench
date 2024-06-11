`define ADDER_WIDTH 26

module sim_route_pipelined_adder;
	bit clk;
	bit reset;
	bit [`ADDER_WIDTH - 1:0] op_a;
	bit [`ADDER_WIDTH - 1:0] op_b;
	wire [`ADDER_WIDTH - 1:0] out,out_netlist;

	bit [`ADDER_WIDTH - 1:0] op_a_data[0:15];
	bit [`ADDER_WIDTH - 1:0] op_b_data[0:15];

	integer mismatch=0;

	pipelined_adder golden(.op_a(op_a),.op_b(op_b),.reset(reset),.clock0(clk),.out(out));
	pipelined_adder_post_route netlist(.op_a(op_a),.op_b(op_b),.reset(reset),.clock0(clk),.out(out_netlist));

	always #2 clk = ~clk;

	initial begin

		reset = 1;
		op_a  = 'b0;
		op_b  = 'b0;
		repeat(10) @(negedge clk);

		reset = 0;
		repeat(5) @(negedge clk) begin
			compare();
		end

		reset = 1;

		for (int test_cycle = 0; test_cycle < 50; test_cycle+=1) begin
		  for(int i = 0; i < 16; i += 1)begin
			  op_a = $urandom;
			  op_b = $urandom;
			  @(negedge clk);
			  compare();
		  end
		end

		repeat(10)@(negedge clk);

		if(mismatch == 0)
			$display("\n**** All Comparison Matched ***\nSimulation Passed");
		else
			$display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
		$finish;
	end
		

	task compare();
		$display("*** Comparing ***");
		if(out !== out_netlist) begin
			$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", out, out_netlist, $time);
			mismatch = mismatch+1;
		end
		else
			$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", out, out_netlist, $time);
	endtask

	task display_stimulus();
		$display ($time,," Test stimulus is: out=%0d out_netlist=%0d", out, out_netlist);
	endtask

	initial begin
		$dumpfile("tb.vcd");
		$dumpvars(0,sim_route_pipelined_adder);
	end
endmodule