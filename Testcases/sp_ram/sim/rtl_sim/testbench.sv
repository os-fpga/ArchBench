
`include "../../rtl/sp_ram.v"
module sp_ram_tb;

  localparam  DATA_WIDTH = 32;
  localparam  ADDR_WIDTH = 10;
  localparam  SIZE = 1024;

  reg [(DATA_WIDTH-1):0] data;
  reg [(ADDR_WIDTH-1):0] addr;
  reg  we;
  reg  clk;
  wire [(DATA_WIDTH-1):0] q;

  reg [DATA_WIDTH-1:0] memory[0:SIZE-1];
  bit [DATA_WIDTH-1:0] wdata;
  reg [DATA_WIDTH-1:0] rd_data;
  bit [ADDR_WIDTH-1:0]address;
  int error=0;
  int pass=0;

  sp_ram # (
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH)
  )
  sp_ram_inst (
    .data(data),
    .addr(addr),
    .we(we),
    .clk(clk),
    .q(q)
  );

  always #1  clk = ! clk;

	initial begin
        clk = 0;
		data = 0;
		addr = 0;
		we=0;
		repeat(10) @(negedge clk);
		// we=1;
		
		for (int i = 0; i<SIZE; i++) begin
			wdata = $urandom_range(0, ((2**DATA_WIDTH)-1));
			address = $urandom_range(0, ((2**DATA_WIDTH)-1));
			memory[address] = wdata;
			//write
			write(address, wdata);
			//Read
			read(address, rd_data);
			compare(address, rd_data);
		end

		$finish;
	end

	task write(reg[ADDR_WIDTH-1:0] address, reg[DATA_WIDTH-1:0] w_data);
		@(negedge clk);
		addr = address;
		data = w_data;
		we = 1;
		@(negedge clk);
		we = 0;
	endtask
	
	task read(reg[ADDR_WIDTH-1:0] address, output reg [DATA_WIDTH-1:0] rd_data);
		@(negedge clk);
		we = 0;
		addr = address;
		@(negedge clk);
		rd_data = q;
	endtask
	
    function void compare(reg[ADDR_WIDTH-1:0] exp_addr, reg [DATA_WIDTH-1:0] cap_data);
		if (cap_data !== memory[exp_addr]) begin
			$display("FAIL:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
			error++;
		end
		else begin
			$display("TEST PASSED: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
			pass++;
		end 
	endfunction

	initial begin
		$dumpfile("wave.vcd");
		$dumpvars(1, sp_ram_tb);
	end

endmodule
