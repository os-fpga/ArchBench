
module sim_route_dffnsre_inst_8lut;
	bit C,E,R,S;
	bit D_in1,D_in2,D_in3,D_in4,D_in5,D_in6,D_in7,D_in8;
	bit sel;
	wire Q_1,Q_2,Q_3,Q_4,Q_5,Q_6,Q_7,Q_8;
	wire Q_1_rtl,Q_2_rtl,Q_3_rtl,Q_4_rtl,Q_5_rtl,Q_6_rtl,Q_7_rtl,Q_8_rtl;
	
	integer mismatch=0;

dffnsre_inst_8lut golden(.*,.Q_1(Q_1_rtl),.Q_2(Q_2_rtl),.Q_3(Q_3_rtl),.Q_4(Q_4_rtl),
						.Q_5(Q_5_rtl),.Q_6(Q_6_rtl),.Q_7(Q_7_rtl),.Q_8(Q_8_rtl));
dffnsre_inst_8lut_post_route netlist(.*);

always #1 C=~C;

initial begin
    C=0;
	D_in1=0;
	D_in2=0;
	D_in3=0;
	D_in4=0;
	D_in5=0;
	D_in6=0;
	D_in7=0;
	D_in8=0;
	E=0;
	R=0;
	S=1;
	sel=0;
	@(posedge C);
	R=1;
	sel=0;
	@(posedge C);
	// S=0;
	sel=1;
	@(posedge C);
	E=1;
	display_stimulus();
	@(posedge C);
	compare();
	repeat(10)@(posedge C) begin
		D_in1=$random;
		D_in2=$random;
		D_in3=$random;
		D_in4=$random;
		D_in5=$random;
		D_in6=$random;
		D_in7=$random;
		D_in8=$random;
		display_stimulus();
		@(posedge C);
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
  	if(Q_1_rtl !== Q_1) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_1_rtl, Q_1, $time);
    	mismatch = mismatch+1;
 	end
	else
		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_1_rtl, Q_1, $time);
	if(Q_2_rtl !== Q_2) begin
	   	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_2_rtl, Q_2, $time);
	   	mismatch = mismatch+1;
	end
	else
		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_2_rtl, Q_2, $time);
	if(Q_3_rtl !== Q_3) begin
	  	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_3_rtl, Q_3, $time);
	 	mismatch = mismatch+1;
   	end
	else
		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_3_rtl, Q_3, $time);
   	if(Q_4_rtl !== Q_4) begin
		$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_4_rtl, Q_4, $time);
		mismatch = mismatch+1;
  	end
	else
		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_4_rtl, Q_4, $time);
  	if(Q_5_rtl !== Q_5) begin
		$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_5_rtl, Q_5, $time);
		mismatch = mismatch+1;
 	end
	else
		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_5_rtl, Q_5, $time);
 	if(Q_6_rtl !== Q_6) begin
 	  	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_6_rtl, Q_6, $time);
 	  	mismatch = mismatch+1;
	end
	else
		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_6_rtl, Q_6, $time);
	if(Q_7_rtl !== Q_7) begin
	  	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_7_rtl, Q_7, $time);
	  	mismatch = mismatch+1;
	end
	else
		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_7_rtl, Q_7, $time);
	if(Q_8_rtl !== Q_8) begin
	  	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", Q_8_rtl, Q_8, $time);
	  	mismatch = mismatch+1;
	end
	else
		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", Q_8_rtl, Q_8, $time);
endtask

task display_stimulus();
	$display ($time,,"Test stimulus is: D_in1=%0d", D_in1);
	$display ($time,,"Test stimulus is: D_in2=%0d", D_in2);
	$display ($time,,"Test stimulus is: D_in3=%0d", D_in3);
	$display ($time,,"Test stimulus is: D_in4=%0d", D_in4);
	$display ($time,,"Test stimulus is: D_in5=%0d", D_in5);
	$display ($time,,"Test stimulus is: D_in6=%0d", D_in6);
	$display ($time,,"Test stimulus is: D_in7=%0d", D_in7);
	$display ($time,,"Test stimulus is: D_in8=%0d", D_in8);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end
endmodule