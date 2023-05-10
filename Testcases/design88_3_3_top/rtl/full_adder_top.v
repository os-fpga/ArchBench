module full_adder_top #(parameter WIDTH=32) (clk,rst,data_in,data_out);
    input clk;
    input rst;
    input [WIDTH-1:0] data_in;
    output [WIDTH-1:0] data_out;

    reg cin;
    wire [WIDTH-1:0] d_out;
    wire cout;
    
        
    always @ (posedge clk) begin
        if (rst)
            cin <= 0;
        else
            cin <= 1;
    end

    full_adder #(.WIDTH(WIDTH)) full_adder_inst (.clk(clk),.rst(rst),.data_in(data_in),.data_out(d_out),.cin(cin),.cout(cout));


    assign data_out[30:16]=15'h0fff;
    assign data_out[15:0]=d_out;
    assign data_out[31]=cout;
endmodule

module full_adder #(parameter WIDTH=32)(
    input clk,
    input rst,
    input cin,
    input [WIDTH-1:0] data_in,
    output [WIDTH-1:0] data_out,
    output cout
    );
    
    reg [15:0] a,b;
    reg c;

    // assign cout = 0;
    // assign data_out = 0;
    
    always @(posedge clk) begin
        if (rst) begin
            a<=0;
            b<=0;
            c<=0;
        end else begin
            a <= data_in[15:0];
            b <= data_in[31:16];
            c <= cin;
        end  
    end

        assign data_out = a^b^c;
        assign cout = (a & b)|(c & b)|(a & c);
          
endmodule
