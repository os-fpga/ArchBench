
module sim_route_and2;
	bit C,E,R,S;
	bit D;
	wire Q,Q_rtl;
	
	integer mismatch=0;

dffnsre_inst_1 golden(.*,.Q(Q_rtl));
dffnsre_inst_1_post_route netlist(.*);

always #1 C=~C;

initial begin
    C=0;
	D=0;
	E=0;
	R=0;
	S=1;
	@(negedge C);
	R=1;
	@(negedge C);
	S=0;
	@(negedge C);
	E=1;
	display_stimulus();
	@(negedge C);
	compare();
	repeat (10)@(negedge C) begin
		D=$random;
		display_stimulus();
		@(negedge C);
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
  	if(Q_rtl !== Q) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_rtl, Q, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_rtl, Q, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: D=%0d", D);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end
endmodule