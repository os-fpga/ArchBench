`include "../../rtl/infer_dual_port_rom.v"

module infer_dual_port_rom_tb;

  // Parameters
  localparam  DATA_WIDTH = 12;
  localparam  ADDR_WIDTH = 10;

  // Ports
  reg [ADDR_WIDTH-1:0] addr_a;
  reg [ADDR_WIDTH-1:0] addr_b;
  reg  clock0;
  wire [DATA_WIDTH-1:0] q_a;
  wire [DATA_WIDTH-1:0] q_b;

	reg [DATA_WIDTH-1:0] expected_data [0:(1<<ADDR_WIDTH)-1];

  infer_dual_port_rom # (
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  )
  infer_dual_port_rom_inst (
    .addr_a(addr_a),
    .addr_b(addr_b),
    .clk(clock0),
    .q_a(q_a),
    .q_b(q_b)
  );

  always #5  clock0 = !clock0;

	initial begin
		$readmemh("../../rtl/memory_test.mem", expected_data);
	end

  initial begin
    clock0 <= 0;
    addr_a <= 0;
    addr_b <= 0;
    
    repeat(10)@(negedge clock0);

		for(int i=0;i<=1024;i++) begin
			@(negedge clock0);
			addr_a=i;
			addr_b=i;
			@(negedge clock0);
			// @(negedge clock0);
			if (q_a !== expected_data[addr_a] || q_b !== expected_data[addr_b]) begin
				$display("Status: Test Failed. Data Mismatch at addr_a %0d: Expected %h, Actual %h", addr_a, expected_data[addr_a], q_a);
			end
			else begin
				$display("Status: Test Passed. Data Match at addr_b %0d: Expected %h, Actual %h", addr_b, expected_data[addr_b], q_b);
			end
		end

		repeat(2048)@(negedge clock0) begin
			addr_a=$random();
			addr_b=$random();
			@(negedge clock0);
			if (q_a !== expected_data[addr_a] || q_b !== expected_data[addr_b]) begin
				$display("Status: Test Failed. Data Mismatch at addr_a %0d: Expected %h, Actual %h", addr_a, expected_data[addr_a], q_a);
			end
			else begin
				$display("Status: Test Passed. Data Match at addr_b %0d: Expected %h, Actual %h", addr_b, expected_data[addr_b], q_b);
			end
		end

		repeat(10)@(negedge clock0);
		$finish;

  end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,infer_dual_port_rom_tb);
  end
endmodule
