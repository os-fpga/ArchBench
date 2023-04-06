module sim_route_sp_ram;
	bit [7:0] data;
	bit [5:0] addr;
	bit we;
    wire [7:0] q,q_netlist;
    reg clk;

	integer mismatch=0;

	sp_ram golden(.*);
	sp_ram_post_route netlist(
							we,
							clk,
							addr[5],
							addr[4],
							addr[3],
							addr[2],
							addr[1],
							addr[0],
							data[7],
							data[6],
							data[5],
							data[4],
							data[3],
							data[2],
							data[1],
							data[0],
							q[7],
							q[6],
							q[5],
							q[4],
							q[3],
							q[2],
							q[1],
							q[0]
);

always #1 clk = ~clk;

initial begin
    clk = 1'b0;
	we=1;
	data=8'b11111111;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();
	
	for (integer i=0; i<64; i=i+1) begin
		addr=i;
		data=$random;
		@(negedge clk);
		display_stimulus();
		@(negedge clk);
		compare();
	end

	we=0;
	for (integer i=0; i<64; i=i+1) begin
		addr=i;
		@(negedge clk);
		display_stimulus();
		@(negedge clk);
		compare();
	end

	repeat(10)@(negedge clk);

	if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
	$finish;
end
	

task compare();
 	$display("*** Comparing ***");
  	if(q !== q_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", q, q_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", q, q_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: q=%0d q_netlist=%0d", q, q_netlist);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_sp_ram);
end
endmodule