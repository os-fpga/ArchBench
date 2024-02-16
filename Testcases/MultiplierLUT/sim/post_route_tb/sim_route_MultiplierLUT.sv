module sim_route_MultiplierLUT;
    bit [1:0] a,b;
    wire [3:0] z,z_netlist;

    reg clk;
	integer mismatch=0;

MultiplierLUT golden(.a(a),.b(b),.z(z));
MultiplierLUT_post_route netlist(
);

//clock initialization
initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;
end
initial begin
	a=2'b0;
	b=2'b0;
	display_stimulus();
	@(negedge clk);
	a=2'b00;
	b=2'b10;
	display_stimulus();
	@(negedge clk);
	compare();
	a=2'b10;
	b=2'b01;
	display_stimulus();
	@(negedge clk);
	compare();
	a=2'b10;
	b=2'b10;
	display_stimulus();
	@(negedge clk);
	compare();
	a=2'b11;
	b=2'b00;
	display_stimulus();
	@(negedge clk);
	compare();
	a=2'b11;
	b=2'b11;
	display_stimulus();
	@(negedge clk);
	compare();
	repeat(1000)@(negedge clk) begin
		a=$random;
		b=$random;
		@(negedge clk)
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
  	if(z !== z_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", z_netlist, z, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", z_netlist, z, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: a=%0d b=%0d", a, b);
	$display ($time,," Test stimulus is: z_netlist=%0d z=%0d", z_netlist, z);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end
endmodule