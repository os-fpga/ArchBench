module sim_route_design67_15_45_top;
    bit rst;
	bit [31:0] in;
    wire [31:0] out,out_netlist;

    reg clk;
	integer mismatch=0;

design67_15_45_top golden(.clk(clk),.rst(rst),.in(in),.out(out));
design67_15_45_top_post_route netlist(.clk(clk),.rst(rst),.in(in),.out(out_netlist));

always #1 clk = ~clk;

initial begin
	clk=1'b0;
	rst = 1; 
	in=0;

	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	rst = 0;
	@(negedge clk);

	repeat (1000) begin
	   in = $random();
	   display_stimulus();
	   @(negedge clk);
	   @(negedge clk);
	   compare();
	end
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
    $dumpvars(0,sim_route_design67_15_45_top);
end
endmodule