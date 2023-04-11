module sim_route_design88_3_3_top;
    bit rst;
	bit [31:0] in;
    wire [31:0] out,out_netlist;

    reg clk;
	integer mismatch=0;

design88_3_3_top golden(.*);
design88_3_3_top_post_route netlist(clk,
						rst,
						in[31],
						in[30],
						in[29],
						in[28],
						in[27],
						in[26],
						in[25],
						in[24],
						in[23],
						in[22],
						in[21],
						in[20],
						in[19],
						in[18],
						in[17],
						in[16],
						in[15],
						in[14],
						in[13],
						in[12],
						in[11],
						in[10],
						in[9],
						in[8],
						in[7],
						in[6],
						in[5],
						in[4],
						in[3],
						in[2],
						in[1],
						in[0],
						out_netlist[31],
						out_netlist[15],
						out_netlist[14],
						out_netlist[13],
						out_netlist[12],
						out_netlist[11],
						out_netlist[10],
						out_netlist[9],
						out_netlist[8],
						out_netlist[7],
						out_netlist[6],
						out_netlist[5],
						out_netlist[4],
						out_netlist[3],
						out_netlist[2],
						out_netlist[1],
						out_netlist[0],
						out_netlist[27],
						out_netlist[26],
						out_netlist[25],
						out_netlist[24],
						out_netlist[23],
						out_netlist[22],
						out_netlist[21],
						out_netlist[20],
						out_netlist[19],
						out_netlist[18],
						out_netlist[17],
						out_netlist[16],
						out_netlist[30],
						out_netlist[29],
						out_netlist[28]
);

always #1 clk = ~clk;

initial begin
	clk=1'b0;
	rst = 1; 
	in=0;

	@(negedge clk);
	display_stimulus();
	@(negedge clk);
	compare();

	rst = 0;
	@(negedge clk);

	repeat (1000) begin
	   in = $random();
	   display_stimulus();
	   @(negedge clk);
	   @(negedge clk);
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
  	if(out !== out_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", out, out_netlist, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", out, out_netlist, $time);
endtask

task display_stimulus();
	$display ($time,," Test stimulus is: out=%0d out_netlist=%0d", out, out_netlist);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_design88_3_3_top);
end
endmodule