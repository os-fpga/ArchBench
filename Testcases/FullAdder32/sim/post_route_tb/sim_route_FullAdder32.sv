module sim_route_FullAdder32;
    bit [31:0] a, b;
	bit cin;
	wire cout,cout_netlist;
    wire [31:0] sum,sum_netlist;

    reg clk;
	integer mismatch=0;

FullAdder32 golden(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
fabric_FullAdder32_post_route netlist(
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