`include "rom.v"

module rom_post_route_tb;
  bit clk;
  bit [7:0] address;
  wire [7:0] data;

  integer i=0;
  
  rom golden (.*);

  always
  #1  clk = !clk;
  
  initial begin
    for (i = 0; i <1023; i = i +1 )begin
        @(negedge clk); 
        address = i;
        $display("Data Mismatch. Address: %0d, data: %0d, Time: %0t", data, address, $time);
      end
      
    $finish;
  end
  
  initial begin
    $dumpfile("rom_formal.vcd");
    $dumpvars(1, rom_post_route_tb);
end

endmodule
