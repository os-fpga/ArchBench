module sim_route_FullAdder32;
    bit [31:0] a, b;
	bit cin;
	wire cout,cout_netlist;
    wire [31:0] sum,sum_netlist;

    reg clk;
	integer mismatch=0;

FullAdder32 golden(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
FullAdder32_post_route netlist(
							cin ,
							b[31] ,
							b[30] ,
							b[29] ,
							b[28] ,
							b[27] ,
							b[26] ,
							b[25] ,
							b[24] ,
							b[23] ,
							b[22] ,
							b[21] ,
							b[20] ,
							b[19] ,
							b[18] ,
							b[17] ,
							b[16] ,
							b[15] ,
							b[14] ,
							b[13] ,
							b[12] ,
							b[11] ,
							b[10] ,
							b[9] ,
							b[8] ,
							b[7] ,
							b[6] ,
							b[5] ,
							b[4] ,
							b[3] ,
							b[2] ,
							b[1] ,
							b[0] ,
							a[31] ,
							a[30] ,
							a[29] ,
							a[28] ,
							a[27] ,
							a[26] ,
							a[25] ,
							a[24] ,
							a[23] ,
							a[22] ,
							a[21] ,
							a[20] ,
							a[19] ,
							a[18] ,
							a[17] ,
							a[16] ,
							a[15] ,
							a[14] ,
							a[13] ,
							a[12] ,
							a[11] ,
							a[10] ,
							a[9] ,
							a[8] ,
							a[7] ,
							a[6] ,
							a[5] ,
							a[4] ,
							a[3] ,
							a[2] ,
							a[1] ,
							a[0] ,
							sum_netlist[22] ,
							sum_netlist[10] ,
							sum_netlist[28] ,
							sum_netlist[12] ,
							sum_netlist[18] ,
							cout_netlist ,
							sum_netlist[29] ,
							sum_netlist[23] ,
							sum_netlist[16] ,
							sum_netlist[15] ,
							sum_netlist[26] ,
							sum_netlist[11] ,
							sum_netlist[13] ,
							sum_netlist[24] ,
							sum_netlist[19] ,
							sum_netlist[31] ,
							sum_netlist[30] ,
							sum_netlist[17] ,
							sum_netlist[20] ,
							sum_netlist[27] ,
							sum_netlist[25] ,
							sum_netlist[21] ,
							sum_netlist[8] ,
							sum_netlist[6] ,
							sum_netlist[9] ,
							sum_netlist[14] ,
							sum_netlist[7] ,
							sum_netlist[2] ,
							sum_netlist[4] ,
							sum_netlist[3] ,
							sum_netlist[5] ,
							sum_netlist[1] ,
							sum_netlist[0] 
    						);

always #1 clk = ~clk;
	
initial begin
    clk=0;
	cin=0;
	a=0;
	b=0;
	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	repeat(1000)@(negedge clk) begin
		a=$random;
		b=$random;
		cin=$random;
		@(negedge clk);
		display_stimulus();
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
  	if(sum !== sum_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", sum, sum_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	if(cout !== cout_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cout, cout_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", sum, sum_netlist, $time);
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cout, cout_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: a=%0d b=%0d cin=%0d", a, b, cin);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_FullAdder32);
end
endmodule