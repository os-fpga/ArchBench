module sim_route_infer_dual_port_rom;

reg [9:0] addr_a;
reg [9:0] addr_b;
reg  clk;
wire [11:0] q_a,q_a_netlist;
wire [11:0] q_b,q_b_netlist;

integer mismatch=0;

infer_dual_port_rom golden (.addr_a(addr_a),.addr_b(addr_b),.clk(clk),.q_a(q_a),.q_b(q_b));
infer_dual_port_rom_post_route netlist(.addr_a(addr_a),.addr_b(addr_b),.clk(clk),.q_a(q_a_netlist),.q_b(q_b_netlist));

always #1 clk = ~clk;

initial begin
    clk <= 0;
    addr_a <= 0;
    addr_b <= 0;

	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

    for(int i=0;i<=1024;i++) begin
        addr_a=i;
        addr_b=i;
        @(negedge clk);
		display_stimulus();
        @(negedge clk);
		compare();
    end

    repeat(50)@(negedge clk);

	repeat(2000)@(negedge clk) begin
		addr_a=$random;
		addr_b=$random;
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
    repeat(10)@(negedge clk);
	$finish;
end
	

task compare();
 	$display("*** Comparing ***");
  	if(q_a !== q_a_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", q_a, q_a_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", q_a, q_a_netlist, $time);
	if(q_b !== q_b_netlist) begin
		$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", q_b, q_b_netlist, $time);
		mismatch = mismatch+1;
	end
	else
	  $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", q_b, q_b_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: q_a=%0d", q_a);
	$display ($time,," Test stimulus is: q_b=%0d", q_b);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_infer_dual_port_rom);
end
endmodule