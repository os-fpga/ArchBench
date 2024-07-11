
    reset = 1'b1;
    repeat(10)@(posedge clk);
    reset = 1'b0;

    for (int i=0; i<2**5; i=i+1)begin
        @(posedge clk);
        if (counter_model !== out_gfpga) begin
            $display("Status: Test Failed  =>  Model Output = %7b , Fabric Output  = %7b",counter_model,out_gfpga);
        end
        else begin
            $display("Status: Test Passed  =>  Model Output = %7b , Fabric Output  = %7b",counter_model,out_gfpga);	
        end
        counter_model = counter_model+1;
    end
