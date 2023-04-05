module sim_route_dffre_inst;
    bit i_Reset;
    bit i_Enable;
    bit i_D;
    wire o_Q,o_Q_netlist;

    reg clk;
	integer mismatch=0;

dffre_inst golden(.*);
dffre_inst_post_route netlist(clk,i_Reset,i_Enable,i_D,o_Q);

//clock initialization
initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;
end
initial begin
	i_Reset=1;
    i_D=1;
	// b=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_Reset=0;
	// b=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_Enable=0;
	// b=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_Enable=1;
	// b=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_D=0;
	// b=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_D=1;
	// b=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

    repeat(10)@(negedge clk);

	if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
	$finish;
end
	

task compare();
 	$display("*** Comparing ***");
  	if(o_Q !== o_Q_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", o_Q, o_Q_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", o_Q, o_Q_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: D = %0d", i_D);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end
endmodule