`include "../../rtl/up5bit_counter_dual_clock.v"

module up5bit_counter_dual_clock_post_resturctured_tb;

// Parameters

//Ports
wire [4:0] out0;
wire [4:0] out1;
reg  clk0;
reg   clk1;
reg   reset;
    
reg [4:0] counter_model=5'b00001;
reg [4:0] counter_model_two=5'b00001;
reg[31:0] error=0;
reg[31:0] error_two=0;

up5bit_counter_dual_clock  up5bit_counter_dual_clock_inst (
  .out0(out0),
  .out1(out1),
  .clk0(clk0),
  .clk1(clk1),
  .reset(reset)
);

always #5  clk0 = ! clk0 ;
always #3  clk1 = ! clk1 ;

task up_counter_one;
begin
        
	for (int i=0; i<2**5; i=i+1)begin
        @(posedge clk1);
        if (counter_model !== out1) begin
            error = error+1;
            $display("Status: Test Failed  =>  Model Output = %7b , Fabric Output  = %7b , clk1",counter_model,out1);
        end
        else begin
            $display("Status: Test Passed  =>  Model Output = %7b , Fabric Output  = %7b , clk1",counter_model,out1);	
        end
        counter_model = counter_model+1;
end
            end
endtask

task up_counter_two;
    begin
    for (int i=0; i<2**5; i=i+1)begin
        @(posedge clk0);
        if (counter_model_two !== out0) begin
            error_two = error_two+1;
            $display("Status: Test Failed  =>  Model Output = %7b , Fabric Output  = %7b , clk0",counter_model_two,out0);
        end
        else begin
            $display("Status: Test Passed  =>  Model Output = %7b , Fabric Output  = %7b , clk0",counter_model_two,out0);	
        end
        counter_model_two = counter_model_two+1;
    end
end
endtask

initial begin
    clk0 <= 1'b0;
    clk1 <= 1'b0;
    reset = 1'b1;
    repeat(2)@(posedge clk0);
    reset = 1'b0;
        fork 
            up_counter_one;
            up_counter_two;
        join

        $finish;
    end

initial begin
    $dumpfile("up5bit_counter.vcd");
    $dumpvars();
end

endmodule
