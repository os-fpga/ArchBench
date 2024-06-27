
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
