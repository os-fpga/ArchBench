module sim_route_dpram_36x1024;

  parameter AWIDTH          = 10;
  parameter DWIDTH          = 36;
  parameter SIZE            = 1024;
  parameter ITERATIONS 	    = 10;

  bit              clock0;
  bit              rce_a;
  bit [AWIDTH-1:0] addr_a;
  wire  [DWIDTH-1:0] rq_a,rq_a_netlist;
  bit              wce_a;
  bit [DWIDTH-1:0] wd_a;

  bit         			clock1;
  bit                   rce_b;
  bit      [AWIDTH-1:0] addr_b;
  wire  [DWIDTH-1:0] rq_b,rq_b_netlist;
  bit                   wce_b;
  bit      [DWIDTH-1:0] wd_b;

  integer mismatch=0;
  
  dpram_36x1024 golden (.clock0(clock0),.rce_a(rce_a),.addr_a(addr_a),.rq_a(rq_a),.wce_a(wce_a),.wd_a(wd_a),.clock1(clock1),.rce_b(rce_b),.addr_b(addr_b),.rq_b(rq_b),.wce_b(wce_b),.wd_b(wd_b));
  dpram_36x1024_post_route netlist(.clock0(clock0),.rce_a(rce_a),.addr_a(addr_a),.rq_a(rq_a_netlist),.wce_a(wce_a),.wd_a(wd_a),.clock1(clock1),.rce_b(rce_b),.addr_b(addr_b),.rq_b(rq_b_netlist),.wce_b(wce_b),.wd_b(wd_b));

  always #2 clock0 = !clock0;
  always #2 clock1 = !clock1;
  
  initial begin

		rce_a = 0;
		addr_a = 0;
		wce_a = 0;
		wd_a = 0;
		rce_b = 0;
		addr_b = 0;
		wce_b = 0;
		wd_b = 0;
		repeat(4) @(negedge clock0);

		@(negedge clock0);
		addr_a = 10'b0;
		wd_a = 'haaaaaaaaa;
		wce_a = 1;
		@(negedge clock0);
		wce_a = 0;
		@(negedge clock0);
		rce_a = 1;
		@(negedge clock0);
		rce_a = 0;
    compare_a();

		@(negedge clock1);
		addr_b = 10'b0;
		wd_b = 'hbbbbbbbbb;
		wce_b = 1;
		@(negedge clock1);
		wce_b = 0;
		@(negedge clock1);
		rce_b = 1;
		@(negedge clock1);
		rce_b = 0;
    compare_b();
	  
    fork
      begin
        for (int i=0;i<SIZE;i++) begin
		      @(negedge clock0);
		      addr_a = $urandom_range(0,(2**AWIDTH)-1);
		      wd_a = $urandom_range(0, (2**DWIDTH)-1);
		      wce_a = 1;
		      @(negedge clock0);
		      wce_a = 0;
		      @(negedge clock0);
		      rce_a = 1;
		      @(negedge clock0);
		      rce_a = 0;
          compare_a();
        end
      end
      begin
        for (int j=0;j<SIZE;j++) begin
          @(negedge clock1);
          addr_b = $urandom_range(0,(2**AWIDTH)-1);
          wd_b = $urandom_range(0, (2**DWIDTH)-1);
          wce_b = 1;
          @(negedge clock1);
          wce_b = 0;
          @(negedge clock1);
          rce_b = 1;
          @(negedge clock1);
          rce_b = 0;
          compare_b();
        end
      end
    join

  	if(mismatch == 0)
      $display("\n**** All Comparison Matched ***\nSimulation Passed\n");
    else
      $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
    repeat(20)@(negedge clock1);
    $finish;
  end

  task compare_a();
    $display("*** Comparing ***");
     if(rq_a !== rq_a_netlist) begin
       $display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", rq_a, rq_a_netlist, $time);
       mismatch = mismatch+1;
    end
     else
         $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", rq_a, rq_a_netlist, $time);
  endtask

  task compare_b();
    $display("*** Comparing ***");
     if(rq_b !== rq_b_netlist) begin
       $display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", rq_b, rq_b_netlist, $time);
       mismatch = mismatch+1;
    end
     else
         $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", rq_b, rq_b_netlist, $time);
  endtask
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, sim_route_dpram_36x1024);
  end

endmodule
