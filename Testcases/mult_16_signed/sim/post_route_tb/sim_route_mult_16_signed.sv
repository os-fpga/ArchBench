`timescale 1ns/1ps
`define MULT_16_SIGNED 1

module sim_route_mult_16_signed;
  bit [15:0] a; 
  bit [15:0] b;
  // bit id;
  wire [31:0] c,c_netlist;

  reg clk;

  integer mismatch=0;
  
  mult_16_signed golden (.out(c),.a(a),.b(b));
  mult_16_signed_post_route netlist(.out(c_netlist),.a(a),.b(b));

  always #2 clk = !clk;
  
  initial begin

    clk = 0;
    a = 0;
    b = 0;
    // id = 0;

    repeat(5) @(negedge clk);
    compare();

		for (int i = 0; i < 100; i=i+1) begin
			a = signed'($urandom_range(2**16 -1,0));
			b = signed'($urandom_range(2**16 -1,0));
			for(int j = 0; j < `MULT_16_SIGNED; j+=1) begin
				// id = j;
				repeat(2)@(negedge clk);
        compare();
			end
		end
	  
  	if(mismatch == 0)
      $display("\n**** All Comparison Matched ***\nSimulation Passed\n");
    else
      $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
    $finish;
  end

  task compare();
  $display("*** Comparing ***");
   if(c !== c_netlist) begin
     $display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", c, c_netlist, $time);
     mismatch = mismatch+1;
  end
   else
       $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", c, c_netlist, $time);
  endtask
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, sim_route_mult_16_signed);
  end

endmodule
