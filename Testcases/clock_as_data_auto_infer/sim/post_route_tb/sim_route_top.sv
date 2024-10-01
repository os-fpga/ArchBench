`timescale 1ns/1ps
module sim_route_top;

    reg			clk;
    reg 		din;
    wire 		dout	,	dout_netlist;
	integer		mismatch	=	0;

	top	golden (.*);
`ifdef PNR_SIM
	top_post_route route_net (.*, .dout(dout_netlist) );
`else
	top_post_synth synth_net (.*, .dout(dout_netlist) );
`endif

initial begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial	begin
	din <= 'd0;
	 repeat (2) @ (negedge clk); 
	compare();

	repeat(1000) @ (negedge clk) begin
		din <= $urandom();
		compare();
	end

	repeat (2)@(negedge clk);
	din <= 1'd1;
	repeat (2)@(negedge clk);
	compare();
	repeat (2)@(negedge clk);
	din <= 1'd0;
	repeat (2)@(negedge clk);
	compare();

	if(mismatch == 0)
		$display("**** All Comparison Matched *** \n		Simulation Passed\n");
	else
		begin
		$display("%0d comparison(s) mismatched\nERROR: SIM: Simulation Failed", mismatch);
		$fatal(1);
		end
	#200;
	$finish;
end

task compare();
	if ( dout !== dout_netlist ) begin
		$display("Data Mismatch: Actual output: %0d, Netlist Output %0d, Time: %0t ", dout, dout_netlist,  $time);
		mismatch = mismatch+1;
	end
	else
		$display("Data Matched: Actual output: %0d, Netlist Output %0d, Time: %0t ", dout, dout_netlist,  $time);
endtask

initial begin
	$dumpfile("tb.vcd");
	$dumpvars;
end

endmodule
