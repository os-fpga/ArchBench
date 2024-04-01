

    i_Reset <= 1'b0;
    i_Enable <= 1'b0;
    i_D <= 1'b0;

    #20 i_Reset = 1;

    #20 i_Enable = 1;

    #10 i_D = 1;
    #10 i_D = 0;
    #10 i_D = 1;
    #10 i_D = 0;

    repeat(500) begin
        #10 i_D = $random;
    end

    #10 i_Reset <= 0;

    repeat(500) begin
        #10 i_D = $random;
    end

    #10 i_Reset <= 1;

    repeat(500) begin
        #10 i_D = $random;
    end

    #10 i_Enable = 0;

    #10 i_D = 1;
    #10 i_D = 0;

    #10 i_Enable = 1;

    #10 i_D = 1;
    #10 i_D = 0;
