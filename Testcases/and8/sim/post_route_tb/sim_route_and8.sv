module sim_route_and8;
    bit [7:0] a;
    wire b,b_netlist;

    reg clk;
	integer mismatch=0;

and8 golden(.*);
and8_post_route netlist(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],b_netlist);

initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;
end

initial begin
	a[7:0]=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a[0]=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a[1]=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a[2]=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a[3]=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a[4]=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a[5]=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a[6]=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a[7]=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	repeat(3000)@(negedge clk) begin
		a=$random;
		display_stimulus();
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
  	if(b !== b_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", b, b_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", b, b_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: a=%0d", a);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end
endmodule