module sim_route_dffre_inst;
    bit i_Reset;
    bit i_Enable;
    bit i_D;
    wire o_Q,o_Q_netlist;

    reg clk;
	integer mismatch=0;

dffre_inst golden(.clk(clk),.i_Reset(i_Reset),.i_Enable(i_Enable),.i_D(i_D),.o_Q(o_Q));
dffre_inst_post_route netlist(.clk(clk),.i_Reset(i_Reset),.i_Enable(i_Enable),.i_D(i_D),.o_Q(o_Q_netlist));

initial begin
    clk = 1'b0;
    forever #1 clk = ~clk;
end
initial begin
    i_D=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_Reset=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_Enable=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_Enable=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_D=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	i_D=1;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

    repeat(1000)@(negedge clk) begin
		i_D=$random;
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
    $dumpvars(0,sim_route_dffre_inst);
end
endmodule