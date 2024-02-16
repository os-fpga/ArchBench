module sim_route_up5bit_counter_dual_clock;
    bit reset;
    wire [4:0] out0,out0_netlist;
    wire [4:0] out1,out1_netlist;

    reg clk0,clk1;
	integer mismatch=0;

up5bit_counter_dual_clock golden(out0,out1,clk0,clk1,reset);
up5bit_counter_dual_clock_post_route netlist(
);

always #3 clk0 = ~clk0;
always #5 clk1 = ~clk1;

initial begin
    clk0 = 1'b0;
	reset=1;
	@(negedge clk0);
	display_stimulus();
	@(negedge clk0);
	compare();

	reset=0;
	repeat(50)@(negedge clk0) begin
		@(negedge clk0);
		display_stimulus();
		@(negedge clk0);
		compare();
	end

	reset=1;
	repeat(5)@(negedge clk0);

	reset=0;
	repeat(50)@(negedge clk0) begin
		@(negedge clk0);
		display_stimulus();
		@(negedge clk0);
		compare();
	end

	repeat(10)@(negedge clk0);

	if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
	// $finish;
end
	

initial begin
    clk1 = 1'b0;
	reset=1;
	@(negedge clk1);
	display_stimulus_one();
	@(negedge clk1);
	compare_one();

	reset=0;
	repeat(50)@(negedge clk1) begin
		@(negedge clk1);
		display_stimulus_one();
		@(negedge clk1);
		compare_one();
	end

	reset=1;
	repeat(5)@(negedge clk1);

	reset=0;
	repeat(50)@(negedge clk1) begin
		@(negedge clk1);
		display_stimulus_one();
		@(negedge clk1);
		compare_one();
	end

	repeat(10)@(negedge clk1);

	if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
	$finish;
end

task compare();
 	$display("*** Comparing ***");
  	if(out0 !== out0_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", out0, out0_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", out0, out0_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: out0=%0d out0_netlist=%0d", out0, out0_netlist);
endtask

task compare_one();
 	$display("*** Comparing ***");
  	if(out1 !== out1_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", out1, out1_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", out1, out1_netlist, $time);
endtask

task display_stimulus_one();
	$display ($time,," Test stimulus is: out1=%0d out1_netlist=%0d", out1, out1_netlist);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_up5bit_counter_dual_clock);
end

// initial begin
//     $fsdbDumpfile("waves.fsdb");
//     $fsdbDumpvars(0,"+struct","+mda","+all");

//     // $vcdplusfile("I_BUF_tb.vpd");
//     // $vcdpluson(0,I_BUF_tb);
//   end

endmodule