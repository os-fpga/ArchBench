module sim_route_add_1bit;
    bit a, b;
    wire c,c_netlist;

    reg clk;
	integer mismatch=0;

add_1bit golden(.*);
add_1bit_post_route netlist(.a(a), .b(b), .c(c_netlist));

//clock initialization
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end
initial begin
	a=0;
	b=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a=1;
	b=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a=0;
	b=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	a=1;
	b=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	repeat(500)@(posedge clk) begin
		a=$random;
		b=$random;
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
  	if(c !== c_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", c, c_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", c, c_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: a=%0d b=%0d", a, b);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end
endmodule