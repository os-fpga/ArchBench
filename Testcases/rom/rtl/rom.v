module rom (
input clk, 
input [7:0] address,
output reg [7:0] data
);

reg [7:0] mem [1023:0]; 

initial $readmemb("memory_file.mem", mem); 

always @(posedge clk) begin
   data <= mem[address];
end 

endmodule
