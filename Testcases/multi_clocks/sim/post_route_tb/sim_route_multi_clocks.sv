`timescale 1ns/1ps

`define CLK_CNTR 8

module sim_route_multi_clocks;

	bit reset0;
	bit reset1;
	bit reset2;
	bit reset3;
	bit reset4;
	bit reset5;
	bit reset6;
	bit reset7;
	bit reset8;
	bit reset9;
	bit reset10;
	bit reset11;
	bit reset12;
	bit reset13;
	bit reset14;
	bit reset15;
	bit design_clk_0;
	bit design_clk_1;
	bit design_clk_2;
	bit design_clk_3;
	bit design_clk_4;
	bit design_clk_5;
	bit design_clk_6;
	bit design_clk_7;
	bit design_clk_8;
	bit design_clk_9;
	bit design_clk_10;
	bit design_clk_11;
	bit design_clk_12;
	bit design_clk_13;
	bit design_clk_14;
	bit design_clk_15;
	wire [`CLK_CNTR - 1:0] cnt0, cnt0_netlist;
	wire [`CLK_CNTR - 1:0] cnt1, cnt1_netlist;
	wire [`CLK_CNTR - 1:0] cnt2, cnt2_netlist;
	wire [`CLK_CNTR - 1:0] cnt3, cnt3_netlist;
	wire [`CLK_CNTR - 1:0] cnt4, cnt4_netlist;
	wire [`CLK_CNTR - 1:0] cnt5, cnt5_netlist;
	wire [`CLK_CNTR - 1:0] cnt6, cnt6_netlist;
	wire [`CLK_CNTR - 1:0] cnt7, cnt7_netlist;
	wire [`CLK_CNTR - 1:0] cnt8, cnt8_netlist;
	wire [`CLK_CNTR - 1:0] cnt9, cnt9_netlist;
	wire [`CLK_CNTR - 1:0] cnt10, cnt10_netlist;
	wire [`CLK_CNTR - 1:0] cnt11, cnt11_netlist;
	wire [`CLK_CNTR - 1:0] cnt12, cnt12_netlist;
	wire [`CLK_CNTR - 1:0] cnt13, cnt13_netlist;
	wire [`CLK_CNTR - 1:0] cnt14, cnt14_netlist;
	wire [`CLK_CNTR - 1:0] cnt15, cnt15_netlist;

	bit [15:0] reset;      // = ~(16'b0);
	bit [15:0] clk_i;
	reg [`CLK_CNTR - 1:0] cnt [0:15];

	integer mismatch=0;
	reg [31:0] error=0;

multi_clocks golden(.reset0(reset0),.reset1(reset1),.reset2(reset2),.reset3(reset3),.reset4(reset4),.reset5(reset5),.reset6(reset6),.reset7(reset7),.reset8(reset8),.reset9(reset9),.reset10(reset10),.reset11(reset11),.reset12(reset12),.reset13(reset13),.reset14(reset14),.reset15(reset15),.design_clk_0(design_clk_0),.design_clk_1(design_clk_1),.design_clk_2(design_clk_2),.design_clk_3(design_clk_3),.design_clk_4(design_clk_4),.design_clk_5(design_clk_5),.design_clk_6(design_clk_6),.design_clk_7(design_clk_7),.design_clk_8(design_clk_8),.design_clk_9(design_clk_9),.design_clk_10(design_clk_10),.design_clk_11(design_clk_11),.design_clk_12(design_clk_12),.design_clk_13(design_clk_13),.design_clk_14(design_clk_14),.design_clk_15(design_clk_15),.cnt0(cnt0),.cnt1(cnt1),.cnt2(cnt2),.cnt3(cnt3),.cnt4(cnt4),.cnt5(cnt5),.cnt6(cnt6),.cnt7(cnt7),.cnt8(cnt8),.cnt9(cnt9),.cnt10(cnt10),.cnt11(cnt11),.cnt12(cnt12),.cnt13(cnt13),.cnt14(cnt14),.cnt15(cnt15));
multi_clocks_post_route netlist(.reset0(reset0),.reset1(reset1),.reset2(reset2),.reset3(reset3),.reset4(reset4),.reset5(reset5),.reset6(reset6),.reset7(reset7),.reset8(reset8),.reset9(reset9),.reset10(reset10),.reset11(reset11),.reset12(reset12),.reset13(reset13),.reset14(reset14),.reset15(reset15),.design_clk_0(design_clk_0),.design_clk_1(design_clk_1),.design_clk_2(design_clk_2),.design_clk_3(design_clk_3),.design_clk_4(design_clk_4),.design_clk_5(design_clk_5),.design_clk_6(design_clk_6),.design_clk_7(design_clk_7),.design_clk_8(design_clk_8),.design_clk_9(design_clk_9),.design_clk_10(design_clk_10),.design_clk_11(design_clk_11),.design_clk_12(design_clk_12),.design_clk_13(design_clk_13),.design_clk_14(design_clk_14),.design_clk_15(design_clk_15),.cnt0(cnt0_netlist),.cnt1(cnt1_netlist),.cnt2(cnt2_netlist),.cnt3(cnt3_netlist),.cnt4(cnt4_netlist),.cnt5(cnt5_netlist),.cnt6(cnt6_netlist),.cnt7(cnt7_netlist),.cnt8(cnt8_netlist),.cnt9(cnt9_netlist),.cnt10(cnt10_netlist),.cnt11(cnt11_netlist),.cnt12(cnt12_netlist),.cnt13(cnt13_netlist),.cnt14(cnt14_netlist),.cnt15(cnt15_netlist));

	always #1 design_clk_0 = ~design_clk_0;
	always #1.1 design_clk_1 = ~design_clk_1;
	always #1.2 design_clk_2 = ~design_clk_2;
	always #1.3 design_clk_3 = ~design_clk_3;
	always #1.4 design_clk_4 = ~design_clk_4;
	always #1.5 design_clk_5 = ~design_clk_5;
	always #1.6 design_clk_6 = ~design_clk_6;
	always #1.7 design_clk_7 = ~design_clk_7;
	always #1.8 design_clk_8 = ~design_clk_8;
	always #1.9 design_clk_9 = ~design_clk_9;
	always #2 design_clk_10 = ~design_clk_10;
	always #2.1 design_clk_11 = ~design_clk_11;
	always #2.2 design_clk_12 = ~design_clk_12;
	always #2.3 design_clk_13 = ~design_clk_13;
	always #2.4 design_clk_14 = ~design_clk_14;
	always #2.5 design_clk_15 = ~design_clk_15;

	initial begin
		design_clk_0 = 1'b0;
		design_clk_1 = 1'b0;
		design_clk_2 = 1'b0;
		design_clk_3 = 1'b0;
		design_clk_4 = 1'b0;
		design_clk_5 = 1'b0;
		design_clk_6 = 1'b0;
		design_clk_7 = 1'b0;
		design_clk_8 = 1'b0;
		design_clk_9 = 1'b0;
		design_clk_10 = 1'b0;
		design_clk_11 = 1'b0;
		design_clk_12 = 1'b0;
		design_clk_13 = 1'b0;
		design_clk_14 = 1'b0;
		design_clk_15 = 1'b0;

		#10;

    fork
        begin
            // check_counter(0);
			reset0=0;
			@(negedge design_clk_0);
			compare();

			reset0=1;
			repeat(200)@(negedge design_clk_0) begin
				compare();
			end
        end
        begin
            // check_counter(1);
			reset1=0;
			@(negedge design_clk_1);
			compare_one();

			reset1=1;
			repeat(200)@(negedge design_clk_1) begin
				compare_one();
			end
        end
        begin
            // check_counter(2);
			reset2=0;
			@(negedge design_clk_2);
			compare_two();

			reset2=1;
			repeat(200)@(negedge design_clk_2) begin
				compare_two();
			end
        end
        begin
            // check_counter(3);
			reset3=0;
			@(negedge design_clk_3);
			compare_three();

			reset3=1;
			repeat(200)@(negedge design_clk_3) begin
				compare_three();
			end
        end
        begin
            // check_counter(4);
			reset4=0;
			@(negedge design_clk_4);
			compare_four();

			reset4=1;
			repeat(200)@(negedge design_clk_4) begin
				compare_four();
			end
        end
        begin
            // check_counter(5);
			reset5=0;
			@(negedge design_clk_5);
			compare_five();

			reset5=1;
			repeat(200)@(negedge design_clk_5) begin
				compare_five();
			end
        end
        begin
            // check_counter(6);
			reset6=0;
			@(negedge design_clk_6);
			compare_six();

			reset6=1;
			repeat(200)@(negedge design_clk_6) begin
				compare_six();
			end
        end
        begin
            // check_counter(7);
			reset7=0;
			@(negedge design_clk_7);
			compare_seven();

			reset7=1;
			repeat(200)@(negedge design_clk_7) begin
				compare_seven();
			end
        end
        begin
            // check_counter(8);
			reset8=0;
			@(negedge design_clk_8);
			compare_eight();

			reset8=1;
			repeat(200)@(negedge design_clk_8) begin
				compare_eight();
			end
        end
        begin
            // check_counter(9);
			reset9=0;
			@(negedge design_clk_9);
			compare_nine();

			reset9=1;
			repeat(200)@(negedge design_clk_9) begin
				compare_nine();
			end
        end
        begin
            // check_counter(10);
			reset10=0;
			@(negedge design_clk_10);
			compare_ten();

			reset10=1;
			repeat(200)@(negedge design_clk_10) begin
				compare_ten();
			end
        end
        begin
            // check_counter(11);
			reset11=0;
			@(negedge design_clk_11);
			compare_eleven();

			reset11=1;
			repeat(200)@(negedge design_clk_11) begin
				compare_eleven();
			end
        end
        begin
            // check_counter(12);
			reset12=0;
			@(negedge design_clk_12);
			compare_twelve();

			reset12=1;
			repeat(200)@(negedge design_clk_12) begin
				compare_twelve();
			end
        end
        begin
            // check_counter(13);
			reset13=0;
			@(negedge design_clk_13);
			compare_thirteen();

			reset13=1;
			repeat(200)@(negedge design_clk_13) begin
				compare_thirteen();
			end
        end
        begin
            // check_counter(14);
			reset14=0;
			@(negedge design_clk_14);
			compare_fourteen();

			reset14=1;
			repeat(200)@(negedge design_clk_14) begin
				compare_fourteen();
			end
        end
        begin
            // check_counter(15);
			reset15=0;
			@(negedge design_clk_15);
			compare_fifteen();

			reset15=1;
			repeat(200)@(negedge design_clk_15) begin
				compare_fifteen();
			end
        end
    join

	if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);

	#20;
	$finish;
end

task compare();
 	$display("*** Comparing ***");
  	if(cnt0 !== cnt0_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
endtask

task compare_one();
 	$display("*** Comparing ***");
  	if(cnt1 !== cnt1_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
endtask

task compare_two();
 	$display("*** Comparing ***");
  	if(cnt2 !== cnt2_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
endtask

task compare_three();
 	$display("*** Comparing ***");
  	if(cnt3 !== cnt3_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
endtask

task compare_four();
 	$display("*** Comparing ***");
  	if(cnt4 !== cnt4_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
endtask

task compare_five();
 	$display("*** Comparing ***");
  	if(cnt5 !== cnt5_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
endtask

task compare_six();
 	$display("*** Comparing ***");
  	if(cnt6 !== cnt6_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
endtask

task compare_seven();
 	$display("*** Comparing ***");
  	if(cnt7 !== cnt7_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
endtask

task compare_eight();
 	$display("*** Comparing ***");
  	if(cnt8 !== cnt8_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
endtask

task compare_nine();
 	$display("*** Comparing ***");
  	if(cnt9 !== cnt9_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
endtask

task compare_ten();
 	$display("*** Comparing ***");
  	if(cnt10 !== cnt10_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
endtask

task compare_eleven();
 	$display("*** Comparing ***");
  	if(cnt11 !== cnt11_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
endtask

task compare_twelve();
 	$display("*** Comparing ***");
  	if(cnt12 !== cnt12_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
endtask

task compare_thirteen();
 	$display("*** Comparing ***");
  	if(cnt13 !== cnt13_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
endtask

task compare_fourteen();
 	$display("*** Comparing ***");
  	if(cnt14 !== cnt14_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt0_netlist, cnt0, $time);
endtask

task compare_fifteen();
 	$display("*** Comparing ***");
  	if(cnt15 !== cnt15_netlist) begin
    	$display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
    	mismatch = mismatch+1;
 	end
  	else
  		$display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", cnt1_netlist, cnt1, $time);
endtask

initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0,sim_route_multi_clocks);
end
endmodule