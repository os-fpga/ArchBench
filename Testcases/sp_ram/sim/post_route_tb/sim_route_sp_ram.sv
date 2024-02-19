module sim_route_sp_ram;
	bit [31:0] data;
	bit [9:0] addr;
	bit we;
    wire [31:0] q,q_netlist;
    reg clk;

	integer mismatch=0;

	sp_ram golden(data,addr,we,clk,q);
	sp_ram_post_route netlist(
data[0] ,
data[1] ,
data[2] ,
data[3] ,
data[4] ,
data[5] ,
data[6] ,
data[7] ,
data[8] ,
data[9] ,
data[10] ,
data[11] ,
data[12] ,
data[13] ,
data[14] ,
data[15] ,
data[16] ,
data[17] ,
data[18] ,
data[19] ,
data[20] ,
data[21] ,
data[22] ,
data[23] ,
data[24] ,
data[25] ,
data[26] ,
data[27] ,
data[28] ,
data[29] ,
data[30] ,
data[31] ,
addr[0] ,
addr[1] ,
addr[2] ,
addr[3] ,
addr[4] ,
addr[5] ,
addr[6] ,
addr[7] ,
addr[8] ,
addr[9] ,
we ,
clk ,
q_netlist[0] ,
q_netlist[1] ,
q_netlist[2] ,
q_netlist[3] ,
q_netlist[4] ,
q_netlist[5] ,
q_netlist[6] ,
q_netlist[7] ,
q_netlist[8] ,
q_netlist[9] ,
q_netlist[10] ,
q_netlist[11] ,
q_netlist[12] ,
q_netlist[13] ,
q_netlist[14] ,
q_netlist[15] ,
q_netlist[16] ,
q_netlist[17] ,
q_netlist[18] ,
q_netlist[19] ,
q_netlist[20] ,
q_netlist[21] ,
q_netlist[22] ,
q_netlist[23] ,
q_netlist[24] ,
q_netlist[25] ,
q_netlist[26] ,
q_netlist[27] ,
q_netlist[28] ,
q_netlist[29] ,
q_netlist[30] ,
q_netlist[31]
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
	
	for (integer i=0; i<32; i=i+1) begin
		addr=i;
		data=$random;
		@(negedge clk);
		display_stimulus();
		@(negedge clk);
		compare();
	end

	we=0;
	for (integer i=0; i<32; i=i+1) begin
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