module add_1bit_1GE100_ES1();
initial begin 
  if($test$plusargs("add_1bit_1GE100_ES1")) begin add_1bit_1GE100_ES1(); end
  end
task add_1bit_1GE100_ES1();
  reg[31:0] error=0;
  bit a,b;
  reg c;
  reg clock0;

  `include "add_1bit_1GE100_ES1/PinMapping.v"
  `TB_TOP.load_bitstream("add_1bit_1GE100_ES1");
  assign clock0 = `TB_TOP.clk_i[0];
  
  a=0;
  b=0;
  repeat(2) @(posedge clock0);
  `uvm_info("add_1bit_1GE100_ES1 Design", $sformatf("a = %b, b = %b, c = %b",a,b,c), UVM_LOW)
  a=1;
  b=0;
  repeat(2) @(posedge clock0);
  `uvm_info("add_1bit_1GE100_ES1 Design", $sformatf("a = %b, b = %b, c = %b",a,b,c), UVM_HIGH)
  if(c !== 1)error+=1;
  #1;
  a=1;
  b=1;
  repeat(2) @(posedge clock0);
  `uvm_info("add_1bit_1GE100_ES1 Design", $sformatf("a = %b, b = %b, c = %b",a,b,c), UVM_HIGH)
  if(c !== 0)error+=1;
  #1;
  a=0;
  b=1;
  repeat(2) @(posedge clock0);
  `uvm_info("add_1bit_1GE100_ES1 Design", $sformatf("a = %b, b = %b, c = %b",a,b,c), UVM_HIGH)
  if(c !== 1)error+=1;

  `TB_TOP.test_status(error);
endtask
endmodule