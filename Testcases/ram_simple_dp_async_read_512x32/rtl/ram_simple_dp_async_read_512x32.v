module ram_simple_dp_async_read_512x32 (clk, we, read_addr, write_addr, a,b,reset,out_en, dout);
    input clk, we, reset,out_en;
    input [8:0] read_addr, write_addr;
    input [31:0] a,b;
    output reg [31:0] dout;
    
    reg [31:0] ram [511:0];
    reg [8:0] read_addr_reg;
    reg [31:0] c;
    reg [31:0] c_l;
    reg [31:0] b_l;
    reg [31:0] dout_l;
    reg [31:0] dout_l1;

    always@(*) begin
        c = c_l + b_l;
    end

    always@(negedge clk) begin
        if (!reset)
            c_l <= 0;
        else
            c_l <= a;
    end
    always@(negedge clk) begin
        if (!reset)
            b_l <= 0;
        else
            b_l <= b;
    end

    always @(posedge clk)
    begin
        if (we) begin
            ram[write_addr] <= c;
        end
        else
            dout_l <= ram[read_addr];
        // read_addr_reg <= read_addr;
    end

    // assign dout_l = ram[read_addr_reg];

    always@(*) begin
        if (out_en) dout_l1 = dout_l;
    end

    always@(posedge clk) begin
        if(!reset)
            dout <= 0;
        else
            dout <= dout_l1;
    end

    integer i;
    initial
    begin
        for(i = 0; i < 512; i = i + 1)
            ram[i] = 0;
    end

endmodule