// `define EIGHT_MULT_20x18_UNSIGNED_REGOUT 2

module sim_route_eight_mult_20x18_unsigned_regout;
  bit clk;
  bit reset;
  // bit id;
  bit [19:0] A;
  bit [17:0] B;
  wire [37:0] Y,Y_netlist;

  integer mismatch=0;
  integer i=0;
  
  eight_mult_20x18_unsigned_regout golden (.clock0(clk),.reset(reset),.A(A),.B(B),.Y(Y));
  eight_mult_20x18_unsigned_regout_post_route netlist(.clock0(clk),.reset(reset),.A(A),.B(B),.Y(Y_netlist));

  always #2 clk = !clk;
  
  initial begin

    reset = 0;
    // id = 0;
    A = 0;
    B = 0;

    #50;
    @(negedge clk);
    $display("Counter reset asserted for 1 clock cycle!");
    reset = 1;
    @(negedge clk);
    compare();
    @(negedge clk);
    reset = 0;
    @(negedge clk);
    compare();
    @(negedge clk);

    for (int i = 0; i < 50; i=i+1) begin
      A = $urandom_range(2**20 -1,0);
      B = $urandom_range(2**18 -1,0);
      @(posedge clk);
      // for(int j = 0; j < `EIGHT_MULT_20x18_UNSIGNED_REGOUT; j+=1) begin
				// id = j;
				@(posedge clk);
        compare(); 
      // end
    end
	  
  	if(mismatch == 0)
      $display("\n**** All Comparison Matched ***\nSimulation Passed\n");
    else
      $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
    $finish;
  end

  task compare();
  $display("*** Comparing ***");
   if(Y !== Y_netlist) begin
     $display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Y, Y_netlist, $time);
     mismatch = mismatch+1;
  end
   else
       $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Y, Y_netlist, $time);
  endtask
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, sim_route_eight_mult_20x18_unsigned_regout);
  end

endmodule
