
    reset = 0;
    A = 0;
    B = 0;
    // id = 0;

    #10;
    reset = 1;

    #10;
    reset = 0;

    repeat(10)@(negedge clock0);

    for (int i = 0; i < 100; i=i+1) begin
        @(negedge clock0);
        A = $urandom_range(2**19 -1,0);
        B = $urandom_range(2**17 -1,0);
        Y_pred = A*B;
        // @(negedge clock0);
        // for(int j = 0; j < `EIGHT_MULT_20x18_UNSIGNED_REGOUT; j+=1) begin
            // id = j;
            @(negedge clock0);
            if(Y_gfpga !== Y_pred) begin
                $display("Status: Test Failed:: Expected Output=%0h, Fabric Output=%0h",Y_pred,Y_gfpga);
                error = error + 1;
            end
            else
                $display("Status: Test Passed:: Expected Output=%0h, Fabric Output=%0h",Y_pred,Y_gfpga);
            // Y_pred = Y_gfpga[19:0] * Y_gfpga[37:20];  
        // end
      end
