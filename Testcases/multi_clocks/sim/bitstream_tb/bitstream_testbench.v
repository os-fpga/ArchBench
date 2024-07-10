`timescale 1ns/1ps

`default_nettype none

`define CLK_CNTR 8

module fabric_multi_clocks_top_formal_verification_random_tb;

	reg [0:0] clock0;
	reg [0:0] clock1;
	reg [0:0] clock2;
	reg [0:0] clock3;
	reg [0:0] clock4;
	reg [0:0] clock5;
	reg [0:0] clock6;
	reg [0:0] clock7;
	reg [0:0] clock8;
	reg [0:0] clock9;
	reg [0:0] clock10;
	reg [0:0] clock11;
	reg [0:0] clock12;
	reg [0:0] clock13;
	reg [0:0] clock14;
	reg [0:0] clock15;

	reg [0:0] reset0;
	reg [0:0] reset1;
	reg [0:0] reset10;
	reg [0:0] reset11;
	reg [0:0] reset12;
	reg [0:0] reset13;
	reg [0:0] reset14;
	reg [0:0] reset15;
	reg [0:0] reset2;
	reg [0:0] reset3;
	reg [0:0] reset4;
	reg [0:0] reset5;
	reg [0:0] reset6;
	reg [0:0] reset7;
	reg [0:0] reset8;
	reg [0:0] reset9;

//Wires.

	wire [`CLK_CNTR - 1:0] cnt_reg0_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg1_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg2_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg3_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg4_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg5_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg6_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg7_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg8_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg9_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg10_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg11_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg12_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg13_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg14_gfpga;
	wire [`CLK_CNTR - 1:0] cnt_reg15_gfpga;

    reg [31:0] error=0;

	fabric_multi_clocks_top_formal_verification FPGA_DUT(
		clock0,
		clock1,
		clock2,
		clock3,
		clock4,
		clock5,
		clock6,
		clock7,
		clock8,
		clock9,
		clock10,
		clock11,
		clock12,
		clock13,
		clock14,
		clock15,
		reset0,
		reset1,
		reset10,
		reset11,
		reset12,
		reset13,
		reset14,
		reset15,
		reset2,
		reset3,
		reset4,
		reset5,
		reset6,
		reset7,
		reset8,
		reset9,
        //Wire_instance.
		cnt_reg0_gfpga,
		cnt_reg1_gfpga,
		cnt_reg10_gfpga,
		cnt_reg11_gfpga,
		cnt_reg12_gfpga,
		cnt_reg13_gfpga,
		cnt_reg14_gfpga,
		cnt_reg15_gfpga,
		cnt_reg2_gfpga,
		cnt_reg3_gfpga,
		cnt_reg4_gfpga,
		cnt_reg5_gfpga,
		cnt_reg6_gfpga,
		cnt_reg7_gfpga,
		cnt_reg8_gfpga,
		cnt_reg9_gfpga
	);

    always #1.1 clock0 = ~clock0;  
    always #1.2 clock1 = ~clock1;  
    always #1.3 clock2 = ~clock2;  
    always #1.6 clock3 = ~clock3;  
    always #1.5 clock4 = ~clock4;  
    always #1.4 clock5 = ~clock5;  
    always #1.9 clock6 = ~clock6;  
    always #1.8 clock7 = ~clock7;  
    always #1.7 clock8 = ~clock8;  
    always #2 clock9 = ~clock9;  
    always #2.1 clock10 = ~clock10;  
    always #2.3 clock11 = ~clock11;  
    always #2.2 clock12 = ~clock12;  
    always #2.5 clock13 = ~clock13;  
    always #2.4 clock14 = ~clock14;  
    always #2.6 clock15 = ~clock15;  

	initial begin
		$dumpfile("fabric_multi_clocks_formal.vcd");
		$dumpvars(1, fabric_multi_clocks_top_formal_verification_random_tb);
	end

initial begin
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");

	clock0 = 1'b0;
	clock1 = 1'b0;
	clock2 = 1'b0;
	clock3 = 1'b0;
	clock4 = 1'b0;
	clock5 = 1'b0;
	clock6 = 1'b0;
	clock7 = 1'b0;
	clock8 = 1'b0;
	clock9 = 1'b0;
	clock10 = 1'b0;
	clock11 = 1'b0;
	clock12 = 1'b0;
	clock13 = 1'b0;
	clock14 = 1'b0;
	clock15 = 1'b0;

    reset0 = 1;
    reset1 = 1;
    reset10 = 1;
    reset11 = 1;
    reset12 = 1;
    reset13 = 1;
    reset14 = 1;
    reset15 = 1;
    reset2 = 1;
    reset3 = 1;
    reset4 = 1;
    reset5 = 1;
    reset6 = 1;
    reset7 = 1;
    reset8 = 1;
    reset9 = 1;

    #10;

    fork
        begin
            reset0 = 1;
            @(negedge clock0);
            for (int i = 0; i < 1; i+=1 )begin
                reset0 = 0;
                #1 reset0 = 1;
                if(cnt_reg0_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 0: Reset Failed");
                end else $display("Status: Test Passed: Counter 0: Reset Sucessful!");
                repeat(200) @(negedge clock0);
                if(cnt_reg0_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 0: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg0_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 0: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg0_gfpga);
            end
        end
        begin
            reset1 = 1;
            @(negedge clock1);
            for (int i = 0; i < 1; i+=1 )begin
                reset1 = 0;
                #1 reset1 = 1;
                if(cnt_reg1_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 1: Reset Failed");
                end else $display("Status: Test Passed: Counter 1: Reset Sucessful!");
                repeat(200) @(negedge clock1);
                if(cnt_reg1_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 1: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg1_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 1: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg1_gfpga);
            end
        end
        begin
            reset2 = 1;
            @(negedge clock8);
            for (int i = 0; i < 1; i+=1 )begin
                reset2 = 0;
                #1 reset2 = 1;
                if(cnt_reg2_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 2: Reset Failed");
                end else $display("Status: Test Passed: Counter 2: Reset Sucessful!");
                repeat(200) @(negedge clock8);
                if(cnt_reg2_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 2: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg2_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 2: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg2_gfpga);
            end
        end
        begin
            reset3 = 1;
            @(negedge clock9);
            for (int i = 0; i < 1; i+=1 )begin
                reset3 = 0;
                #1 reset3 = 1;
                if(cnt_reg3_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 3: Reset Failed");
                end else $display("Status: Test Passed: Counter 3: Reset Sucessful!");
                repeat(200) @(negedge clock9);
                if(cnt_reg3_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 3: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg3_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 3: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg3_gfpga);
            end
        end
        begin
            reset4 = 1;
            @(negedge clock10);
            for (int i = 0; i < 1; i+=1 )begin
                reset4 = 0;
                #1 reset4 = 1;
                if(cnt_reg4_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 4: Reset Failed");
                end else $display("Status: Test Passed: Counter 4: Reset Sucessful!");
                repeat(200) @(negedge clock10);
                if(cnt_reg4_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 4: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg4_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 4: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg4_gfpga);
            end
        end
        begin
            reset5 = 1;
            @(negedge clock11);
            for (int i = 0; i < 1; i+=1 )begin
                reset5 = 0;
                #1 reset5 = 1;
                if(cnt_reg5_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 5: Reset Failed");
                end else $display("Status: Test Passed: Counter 5: Reset Sucessful!");
                repeat(200) @(negedge clock11);
                if(cnt_reg5_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 5: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg5_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 5: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg5_gfpga);
            end
        end
        begin
            reset6 = 1;
            @(negedge clock12);
            for (int i = 0; i < 1; i+=1 )begin
                reset6 = 0;
                #1 reset6 = 1;
                if(cnt_reg6_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 6: Reset Failed");
                end else $display("Status: Test Passed: Counter 6: Reset Sucessful!");
                repeat(200) @(negedge clock12);
                if(cnt_reg6_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 6: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg6_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 6: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg6_gfpga);
            end
        end
        begin
            reset7 = 1;
            @(negedge clock13);
            for (int i = 0; i < 1; i+=1 )begin
                reset7 = 0;
                #1 reset7 = 1;
                if(cnt_reg7_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 7: Reset Failed");
                end else $display("Status: Test Passed: Counter 7: Reset Sucessful!");
                repeat(200) @(negedge clock13);
                if(cnt_reg7_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 7: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg7_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 7: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg7_gfpga);
            end
        end
        begin
            reset8 = 1;
            @(negedge clock14);
            for (int i = 0; i < 1; i+=1 )begin
                reset8 = 0;
                #1 reset8 = 1;
                if(cnt_reg8_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 8: Reset Failed");
                end else $display("Status: Test Passed: Counter 8: Reset Sucessful!");
                repeat(200) @(negedge clock14);
                if(cnt_reg8_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 8: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg8_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 8: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg8_gfpga);
            end
        end
        begin
            reset9 = 1;
            @(negedge clock15);
            for (int i = 0; i < 1; i+=1 )begin
                reset9 = 0;
                #1 reset9 = 1;
                if(cnt_reg9_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 9: Reset Failed");
                end else $display("Status: Test Passed: Counter 9: Reset Sucessful!");
                repeat(200) @(negedge clock15);
                if(cnt_reg9_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 9: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg9_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 9: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg9_gfpga);
            end
        end
        begin
            reset10 = 1;
            @(negedge clock2);
            for (int i = 0; i < 1; i+=1 )begin
                reset10 = 0;
                #1 reset10 = 1;
                if(cnt_reg10_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 10: Reset Failed");
                end else $display("Status: Test Passed: Counter 10: Reset Sucessful!");
                repeat(200) @(negedge clock2);
                if(cnt_reg10_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 10: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg10_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 10: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg10_gfpga);
            end
        end
        begin
            reset11 = 1;
            @(negedge clock3);
            for (int i = 0; i < 1; i+=1 )begin
                reset11 = 0;
                #1 reset11 = 1;
                if(cnt_reg11_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 11: Reset Failed");
                end else $display("Status: Test Passed: Counter 11: Reset Sucessful!");
                repeat(200) @(negedge clock3);
                if(cnt_reg11_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 11: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg11_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 11: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg11_gfpga);
            end
        end
        begin
            reset12 = 1;
            @(negedge clock4);
            for (int i = 0; i < 1; i+=1 )begin
                reset12 = 0;
                #1 reset12 = 1;
                if(cnt_reg12_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 12: Reset Failed");
                end else $display("Status: Test Passed: Counter 12: Reset Sucessful!");
                repeat(200) @(negedge clock4);
                if(cnt_reg12_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 12: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg12_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 12: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg12_gfpga);
            end
        end
        begin
            reset13 = 1;
            @(negedge clock5);
            for (int i = 0; i < 1; i+=1 )begin
                reset13 = 0;
                #1 reset13 = 1;
                if(cnt_reg13_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 13: Reset Failed");
                end else $display("Status: Test Passed: Counter 13: Reset Sucessful!");
                repeat(200) @(negedge clock5);
                if(cnt_reg13_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 13: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg13_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 13: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg13_gfpga);
            end
        end
        begin
            reset14 = 1;
            @(negedge clock6);
            for (int i = 0; i < 1; i+=1 )begin
                reset14 = 0;
                #1 reset14 = 1;
                if(cnt_reg14_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 14: Reset Failed");
                end else $display("Status: Test Passed: Counter 14: Reset Sucessful!");
                repeat(200) @(negedge clock6);
                if(cnt_reg14_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 14: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg14_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 14: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg14_gfpga);
            end
        end
        begin
            reset15 = 1;
            @(negedge clock7);
            for (int i = 0; i < 1; i+=1 )begin
                reset15 = 0;
                #1 reset15 = 1;
                if(cnt_reg15_gfpga !== {`CLK_CNTR{1'b0}})begin
                    error+=1;
                    $display("Status: Test Failed: Counter 15: Reset Failed");
                end else $display("Status: Test Passed: Counter 15: Reset Sucessful!");
                repeat(200) @(negedge clock7);
                if(cnt_reg15_gfpga !== 200)begin
                    error+=1;
                    $display("Status: Test Failed:: Counter 15: Failed (Expected Output 200 Fabric Output = %d)",cnt_reg15_gfpga);
                end
                else
                    $display("Status: Test Passed:: Counter 15: Passed (Expected Output 200 Fabric Output = %d)",cnt_reg15_gfpga);
            end
        end
    join

	#20
	$finish;
end

endmodule

