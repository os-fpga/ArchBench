module sim_route_unsigned_multiply;
    bit [4:0] dataa;
	bit [4:0] datab;
    wire [9:0] dataout,dataout_netlist;

    reg clk;
	integer mismatch=0;

unsigned_multiply golden(.dataa(dataa),.datab(datab),.dataout(dataout));
unsigned_multiply_post_route netlist(.dataa(dataa),.datab(datab),.dataout(dataout_netlist));

always #5 clk = ~clk;

initial begin
    clk = 1'b0;
	dataa=0;
	datab=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	repeat(100)@(negedge clk) begin
		dataa=$random;
		datab=$random;
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
  	if(dataout !== dataout_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", dataout, dataout_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", dataout, dataout_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: dataa=%0d datab=%0d", dataa, datab);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_unsigned_multiply);
end
endmodule