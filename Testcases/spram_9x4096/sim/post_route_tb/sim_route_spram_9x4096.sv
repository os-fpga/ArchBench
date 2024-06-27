`define Total_instances 2

module sim_route_spram_9x4096;
	parameter AWIDTH = 2;
	parameter DWIDTH = 2;

	bit clk;
	bit rce;
	bit [AWIDTH-1:0] ra;
	wire [DWIDTH-1:0] rq,rq_netlist;
	bit wce;
	bit [AWIDTH-1:0] wa;
	bit [DWIDTH-1:0] wd;
	bit [$clog2(`Total_instances)-1:0] id;
	bit [DWIDTH-1:0] data;
	reg [DWIDTH-1:0] rd_data;
    bit [AWIDTH-1:0]addr;

	integer mismatch=0;

	spram_9x4096 golden(.clock0(clk),.rce(rce),.ra(ra),.rq(rq),.wce(wce),.wa(wa),.wd(wd),.id(id));
	spram_9x4096_post_route netlist(.clock0(clk),.rce(rce),.ra(ra),.rq(rq_netlist),.wce(wce),.wa(wa),.wd(wd),.id(id));

always #1 clk = ~clk;

initial begin
    clk = 0;
	wce = 0;
	wa  = 0;
	wd  = 0;
	rce = 0;
	ra  = 0;
	id  = 0;
	repeat(4) @(negedge clk);
		
	wd = 2'b11;
	wce = 1;
	rce = 0;
	@(negedge clk);
	wce = 0;
	
	@(negedge clk);
	rce = 1;
	@(negedge clk);
	rce = 0;
	@(negedge clk);
	compare();
	
	for (integer i=0; i<32; i=i+1) begin
		addr=$random();
		data=$random();
		wa = addr;
		wd = data;
		wce = 1;
		rce = 0;
		@(negedge clk);
		wce = 0;
		ra = addr;
		@(negedge clk);
		rce = 1;
		@(negedge clk);
		rce = 0;
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
  	if(rq !== rq_netlist) begin
    	$display("Data Mismatch. Golden Data: %0d, Golden Addr: %0d, Netlist Data: %0d, Netlist Addr: %0d, Time: %0t", rq,wa,rq_netlist,ra, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden Data: %0d, Golden Addr: %0d, Netlist Data: %0d, Netlist Addr: %0d, Time: %0t", rq,wa,rq_netlist,ra, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: rq=%0d rq_netlist=%0d", rq, rq_netlist);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_spram_9x4096);
end
endmodule