module sim_route_design67_15_45_top;
    bit rst;
	bit [31:0] in;
    wire [31:0] out,out_netlist;

    reg clk;
	integer mismatch=0;

design67_15_45_top golden(clk, rst, in, out);
design67_15_45_top_post_route netlist(
				clk ,
				rst ,
				in[0],
				in[1],
				in[2],
				in[3],
				in[4],
				in[5],
				in[6],
				in[7],
				out_netlist[3],
				out_netlist[7],
				out_netlist[0],
				out_netlist[1],
				out_netlist[6],
				out_netlist[2],
				out_netlist[4],
				out_netlist[5],
				out_netlist[8],
				out_netlist[9],
				out_netlist[10],
				out_netlist[11],
				out_netlist[12],
				out_netlist[13],
				out_netlist[14],
				out_netlist[15],
				out_netlist[16],
				out_netlist[17],
				out_netlist[18],
				out_netlist[19],
				out_netlist[20],
				out_netlist[21],
				out_netlist[22],
				out_netlist[23],
				out_netlist[24],
				out_netlist[25],
				out_netlist[26],
				out_netlist[27],
				out_netlist[28],
				out_netlist[29],
				out_netlist[30],
				out_netlist[31]
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
    $dumpvars(0,sim_route_design67_15_45_top);
end
endmodule