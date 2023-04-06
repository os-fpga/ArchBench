module sim_route_up5bit_counter;
    bit reset;
    wire [4:0] out,out_netlist;

    reg clk;
	integer mismatch=0;

up5bit_counter golden(.*);
up5bit_counter_post_route netlist(clk,
								reset,
								out_netlist[4],
								out_netlist[3],
								out_netlist[2],
								out_netlist[1],
								out_netlist[0]
);

always #1 clk = ~clk;

initial begin
    clk = 1'b0;
	reset=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	reset=1;
	repeat(50)@(posedge clk) begin
		@(negedge clk);
		display_stimulus();
		@(negedge clk);
		compare();
	end

	reset=0;
	repeat(5)@(posedge clk);

	reset=1;
	repeat(50)@(posedge clk) begin
		@(negedge clk);
		display_stimulus();
		@(negedge clk);
		compare();
	end

	repeat(10)@(posedge clk);

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
    $dumpvars(0,sim_route_up5bit_counter);
end
endmodule