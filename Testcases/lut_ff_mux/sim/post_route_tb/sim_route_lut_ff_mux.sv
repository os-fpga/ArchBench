module sim_route_lut_ff_mux;
    bit [3:0] in;
    bit clk;
    bit rst;
    bit mux_sel;
    wire Q,q_netlist;

    // reg clk;
	integer mismatch=0;

lut_ff_mux golden(.in(in),.clk(clk),.rst(rst),.mux_sel(mux_sel),.Q(Q));
lut_ff_mux_post_route netlist(clk,rst,mux_sel,in[3],in[2],in[1],in[0],q_netlist);

always #1 clk = ~clk;

initial begin
    
	rst=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	rst=0;
    in=4'b0100;
    mux_sel=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	mux_sel=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

    in=4'b0001;
    mux_sel=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	mux_sel=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	repeat(100)@(negedge clk) begin
		mux_sel=$random;
		in=$random;
		@(negedge clk);
		display_stimulus();
		@(negedge clk);
		compare();
	end

	repeat(5)@(negedge clk);

	if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
    repeat(10)@(negedge clk);
	$finish;
end
	

task compare();
 	$display("*** Comparing ***");
  	if(Q !== q_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q, q_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q, q_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: in=%0d", in);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_lut_ff_mux);
end
endmodule