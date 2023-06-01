module sim_route_mux_8_1;
    reg D0;
	reg D1;
	reg D2;
	reg D3;
	reg D4;
	reg D5;
	reg D6;
	reg D7;
	reg S0;
	reg S1;
	reg S2;
    wire out,out_netlist;

    reg clk;
	integer mismatch=0;

mux_8_1 golden(D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, out);
mux_8_1_post_route netlist(D0,D1,D2,D3,D4,D5,D6,D7,S0,S1,S2,out_netlist);

//clock initialization
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end
initial begin

	D0 <= 1'b1;
	D1 <= 1'b0;
	D2 <= 1'b1;
	D3 <= 1'b0;
	D4 <= 1'b1;
	D5 <= 1'b0;
	D6 <= 1'b1;
	D7 <= 1'b0;

	S0 <= 1'b0;
	S1 <= 1'b0;
	S2 <= 1'b0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();
	
	S0 <= 1'b1;
	S1 <= 1'b0;
	S2 <= 1'b0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	S0 <= 1'b0;
	S1 <= 1'b1;
	S2 <= 1'b0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	S0 <= 1'b1;
	S1 <= 1'b1;
	S2 <= 1'b0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	S0 <= 1'b0;
	S1 <= 1'b0;
	S2 <= 1'b1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	S0 <= 1'b1;
	S1 <= 1'b0;
	S2 <= 1'b1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	S0 <= 1'b0;
	S1 <= 1'b1;
	S2 <= 1'b1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	S0 <= 1'b1;
	S1 <= 1'b1;
	S2 <= 1'b1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

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
	$display ($time,," Test stimulus is: S0=%0d S1=%0d S2=%0d", S0, S1, S2);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end
endmodule