
    initial begin
        clock <= 1'b0;
        while(1) begin
            #1
            clock <= !clock;
        end
    end

    assign expected_dout = din & clk;