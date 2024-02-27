`include "../../rtl/infer_dual_port_rom.v"

module infer_dual_port_rom_tb;

  // Parameters
  localparam  DATA_WIDTH = 12;
  localparam  ADDR_WIDTH = 10;

  // Ports
  reg [ADDR_WIDTH-1:0] addr_a;
  reg [ADDR_WIDTH-1:0] addr_b;
  reg  clk;
  wire [DATA_WIDTH-1:0] q_a;
  wire [DATA_WIDTH-1:0] q_b;

  infer_dual_port_rom # (
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  )
  infer_dual_port_rom_inst (
    .addr_a(addr_a),
    .addr_b(addr_b),
    .clk(clk),
    .q_a(q_a),
    .q_b(q_b)
  );

  always #5  clk = !clk;

  initial begin
    clk <= 0;
    addr_a <= 0;
    addr_b <= 0;
    
    repeat(10)@(negedge clk);

    for(int i=0;i<=1024;i++) begin
        addr_a=i;
        addr_b=i;
        @(negedge clk);
        @(negedge clk);
    end

    repeat(100)@(negedge clk) begin
        addr_a=$random();
        addr_b=$random();
        @(negedge clk);
    end

    repeat(10)@(negedge clk);
    $finish;

  end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,infer_dual_port_rom_tb);
  end
endmodule
