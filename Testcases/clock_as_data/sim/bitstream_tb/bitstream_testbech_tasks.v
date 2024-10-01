
    initial begin
        clk_ibuf <= 1'b0;
        while(1) begin
            #1
            clk_ibuf <= !clk_ibuf;
        end
    end

    assign expected_dout = din_ibuf & clk_ibuf;