
    reset = 0;
    a = 0;
    b = 0;

    repeat(5)@(posedge clock0);

    reset = 1;

    repeat(5)@(posedge clock0);

    reset = 0;

    repeat(10)@(negedge clock0);

    for (int i = 0; i < 100; i=i+1) begin
        a = signed'($urandom_range(2**15 -1,0));
        b = signed'($urandom_range(2**15 -1,0));
        out_pred = out_pred+(a*b);
        @(negedge clock0);
        if(out_gfpga !== out_pred) begin
            $display("Status: Test Failed:: a=%0h, b=%0h, Expected Output=%0h, Fabric Output=%0h",a,b,out_pred,out_gfpga);
            error = error + 1;
        end
        else
            $display("Status: Test Passed:: a=%0h, b=%0h, Expected Output=%0h, Fabric Output=%0h",a,b,out_pred,out_gfpga);
    end
