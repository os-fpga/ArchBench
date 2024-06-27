`include "../../rtl/spram_9x4096.v"
`timescale 1ns/1ps
`default_nettype none

module fabric_spram_9x4096_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	parameter AWIDTH = 2;
	parameter DWIDTH = 2;
	parameter SIZE = 4096;
	reg [0:0] clock0;

    reg [DWIDTH-1:0] memory[0:SIZE-1];
	reg [0:0] id;
	bit [DWIDTH-1:0] wdata;
	reg [1:0] ra;
	reg [0:0] rce;
	reg [DWIDTH-1:0] rd_data;
	reg [1:0] wa;
	reg [0:0] wce;
	bit [AWIDTH-1:0]address;
	reg [1:0] wd;

	int error=0;
	int pass=0;
	wire [1:0] rq_gfpga;

// ----- FPGA fabric instanciation -------
	spram_9x4096 DUT(
		.clock0(clock0),
        .rce(rce),
        .ra(ra),
        .rq(rq_gfpga),
        .wce(wce),
        .wa(wa),
        .wd(wd),
        .id(id)
	);
// ----- End FPGA Fabric Instanication -------

// ----- Clock 'genblk1[0].spram_9x4096_submodule.clock0' Initialization -------
	initial begin
		clock0[0] <= 1'b0;
		while(1) begin
			#1
			clock0[0] <= !clock0[0];
		end
	end

	initial begin
		$dumpfile("tb.vcd");
		$dumpvars(0, fabric_spram_9x4096_top_formal_verification_random_tb);
	end

    task init();
    rd_data = 0;
    wce = 0;
    wa  = 0;
    wd  = 0;
    rce = 0;
    ra  = 0;
    id  = 0;
    repeat(4) @(negedge clock0);
    endtask

    task write(reg[AWIDTH-1:0] addr, reg[DWIDTH-1:0] data);
    @(negedge clock0);
    wa = addr;
    wd = data;
    wce = 1;
    rce = 0;
    @(negedge clock0);
    wce = 0;
    endtask

    task read(reg[AWIDTH-1:0] addr, output reg [DWIDTH-1:0] rd_data);
    @(negedge clock0);
    ra = addr;
    rce = 1;
    wce = 0;
    @(negedge clock0);
    rce = 0;
    @(negedge clock0);
    rd_data = rq_gfpga;
    endtask

    function void compare(reg[AWIDTH-1:0] exp_addr, reg [DWIDTH-1:0] cap_data);
    if (cap_data !== memory[exp_addr]) begin
        $display("FAIL:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
        error++;
    end
    else begin
        $display("PASS:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
        pass++;
    end 
    endfunction



initial begin
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");
// ----- Can be changed by the user for his/her need -------

    init();
    @(negedge clock0);

    for (int j=0; j<2;j++) begin
        id = j;
        // Random Write Read
        //for (bit[AWIDTH-1:0] i = 0; i<50; i++) begin
        for (int i = 0; i<10; i++) begin
            wdata = $urandom_range(0, ((2**DWIDTH)-1));
            address = $urandom_range(0, ((2**AWIDTH)-1));
            memory[address] = wdata;
            //write
            write(address, wdata);
            //Read
            read(address, rd_data);
            compare(address, rd_data);
        end
        //Corner_Cases
        //write 1s
        wdata = '1;
        address = '0;
        write(address, wdata);
        memory[address] = wdata;
        address = '1; 
        write(address, wdata);
        memory[address] = wdata;
        
        //Read
        address = '0;
        read(address, rd_data);
        compare(address, rd_data);
        address = '1;
        read(address, rd_data);
        compare(address, rd_data);

        //write 0s
        wdata = '0;
        address = '0;
        write(address, wdata);
        memory[address] = wdata;
        address = '1; 
        write(address, wdata);
        memory[address] = wdata;

        //Read
        address = '0;
        read(address, rd_data);
        compare(address, rd_data);
        address = '1;
        read(address, rd_data);
        compare(address, rd_data);
    end


	#20
	// $display("Simulation Succeed");
	$finish;
end

endmodule
// ----- END Verilog module for fabric_spram_9x4096_top_formal_verification_random_tb -----

 
