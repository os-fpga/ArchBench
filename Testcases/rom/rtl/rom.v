module rom (
input clk, 
input [5:0] address,
output reg [7:0] data
);

reg [7:0] mem [63:0];

initial $readmemb("/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/test3/ArchBench/Testcases/rom/rtl/memory_file.mem", mem); 

always @(posedge clk) begin
   data <= mem[address];
end 

endmodule
