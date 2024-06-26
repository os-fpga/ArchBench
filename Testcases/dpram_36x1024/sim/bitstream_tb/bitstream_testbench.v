`timescale 1ns / 1ps

`default_nettype none

module fabric_dpram_36x1024_top_formal_verification_random_tb;

    parameter AWIDTH          = 10;
    parameter DWIDTH          = 36;
    parameter SIZE            = 1024;
    parameter ITERATIONS 	  = 10;

    reg        clock0;
    reg        clock1;
    reg [9:0]  addr_a;
	reg [9:0]  addr_b;
	reg        rce_a;
	reg        rce_b;
	reg        wce_a;
	reg        wce_b;
	reg [35:0] wd_a;
	reg [35:0] wd_b;

//Wires.

	wire [35:0] rq_a;
	wire [35:0] rq_b;

	reg [DWIDTH-1:0] memory[0:SIZE-1];
	//bit [DWIDTH-1:0] memory[0:SIZE-1];
	bit [DWIDTH-1:0] wdata;
	reg [DWIDTH-1:0] rd_data;
    bit [AWIDTH-1:0]address;
	int error=0;
	int pass=0;
	// debug flag
	bit debug=0;

    fabric_dpram_36x1024_top_formal_verification FPGA_DUT(
		clock0,
		clock1,
	    addr_a,
	    addr_b,
		rce_a,
		rce_b,
		wce_a,
		wce_b,
	    wd_a,
	    wd_b,
        //Wire_instance.
	    rq_a,
	    rq_b
	);

	initial begin
		clock0 <= 1'b0;
		while(1) begin
			#2
			clock0 <= !clock0;
		end
	end

// ----- Clock 'clock0' Initialization -------
	initial begin
		clock1 <= 1'b0;
		while(1) begin
			#2
			clock1 <= !clock1;
		end
	end

    task init();
        rce_a = 0;
        addr_a = 0;
        wce_a = 0;
        wd_a = 0;
        rce_b = 0;
        addr_b = 0;
        wce_b = 0;
        wd_b = 0;
        repeat(4) @(negedge clock0);
    endtask

    task write(reg[AWIDTH-1:0] addr, reg[DWIDTH-1:0] data);
        @(negedge clock1);
        addr_b = addr;
        wd_b = data;
        wce_b = 1;
        rce_a = 0;
        @(negedge clock1);
        wce_b = 0;
    endtask

    task read(reg[AWIDTH-1:0] addr, output reg [DWIDTH-1:0] rd_data);
        @(negedge clock0);
        addr_a = addr;
        rce_a = 1;
        wce_b = 0;
        @(negedge clock0);
        rce_a = 0;
        rd_data = rq_a;
    endtask

    task readb(reg[AWIDTH-1:0] addr, output reg [DWIDTH-1:0] rd_data);
        @(negedge clock0);
        addr_b = addr;
        rce_b = 1;
        wce_b = 0;
        @(negedge clock0);
        rce_b = 0;
        rd_data = rq_b;
    endtask

    initial begin
        init();
        @(negedge clock0);

        for (int i = 0; i<ITERATIONS; i++) begin
            wdata = $urandom_range(0, ((2**DWIDTH)-1));
            address = $urandom_range(0, ((2**AWIDTH)-1));
            memory[address] = wdata;
            //write
            write(address, wdata);
            //Read
            read(address, rd_data);
            compare(address, rd_data);
        end
    
        $display("--------------------------------------------");
        foreach(memory[i]) memory[i] = 'hx;

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

        //write 1s
        wdata = '1;
        address = '0;
        write(address, wdata);
        memory[address] = wdata;
        address = '0; 
        write(address, wdata);
        memory[address] = wdata;

        //Read
        address = '0;
        read(address, rd_data);
        compare(address, rd_data);
        address = '0;
        read(address, rd_data);
        compare(address, rd_data);

        //write 0s
        wdata = 'h00000000;
        address = '0;
        write(address, wdata);
        memory[address] = wdata;

        //Read from Portb
        address = '0;
        readb(address, rd_data);
        compare(address, rd_data);

        //write 1s
        wdata = 'hffffffff;
        address = '0;
        write(address, wdata);
        memory[address] = wdata;

        //Read from Portb
        address = '0;
        readb(address, rd_data);
        compare(address, rd_data);

        //write 0s
        wdata = 'h00000000;
        address = '0;
        write(address, wdata);
        memory[address] = wdata;

        //Read from Portb
        address = '0;
        readb(address, rd_data);
        compare(address, rd_data);

		repeat(10)@(negedge clock0);
		$finish;
    end

	initial begin
		$dumpfile("fabric_dpram_36x1024_formal.vcd");
		$dumpvars(1, fabric_dpram_36x1024_top_formal_verification_random_tb);
	end

    function void compare(reg[AWIDTH-1:0] exp_addr, reg [DWIDTH-1:0] cap_data);
        if (cap_data !== memory[exp_addr]) begin
            $display("Status: Test Failed:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
            error++;
        end
        else begin
            $display("Status: Test Passed:: @%0t ADDR: %0d, Expected Data: %0h, Actual Data: %0h", $time, exp_addr, memory[exp_addr], cap_data); 
            pass++;
        end 
    endfunction

endmodule