`timescale 1ps/1ps

`define CQ #100
`define QO #100
`define XO #100

module dma8 (in_dat, rd_dat, chain_msb, dma8ad_in, io_addr, 
	dma8_dma_ctl, 

	sys_clk, sys_rstN, dreqN_in, dma8_regs_rdN, 
	dma8_regs_wrN, dma8_gntN, dma8_actN, rdceN, last_rdceN, 
	dma8_ackN, xclk_syncN,

        dma8_addr, dma8_dat, dma8_out_datN, dma8_out, dma8_doneN,

        dma8_rdN, dma8_wrN, dma8_reqN, dma8_rwN, dma8_oeN,
        dackN_out);

    input [31:0] in_dat, rd_dat;
    input [12:0] chain_msb;
    input [7:0] dma8ad_in;
    input [3:0] dma8_dma_ctl;
    input [2:0] io_addr;
    input sys_clk, sys_rstN, dreqN_in, dma8_regs_rdN, dma8_regs_wrN,
        dma8_gntN, dma8_actN, rdceN, last_rdceN, dma8_ackN, xclk_syncN;

    output [33:0] dma8_addr;
    output [32:0] dma8_dat;
    output [31:0] dma8_out_datN;
    output [7:0] dma8_out;
    output [2:0] dma8_doneN;
    output dma8_rdN, dma8_wrN, dma8_reqN, dma8_rwN, dma8_oeN,
        dackN_out;

    wire [31:0] chain_rec, fifo_in, fifo_out, ch_out_datN;
    wire [30:0] dma_addr;
    wire [28:0] mem_start;
    wire [26:0] current_addr;
    wire [19:0] tim_parm;
    wire [15:0] byte_cnt, cnt_start;
    wire [11:0] chain_lsb;
    wire [7:0] branch_cnt;
    wire [3:0] beN_fin, beN_fout;
    wire [2:0] port_fifo_addr, polarity;
    wire [1:0] chain_cnt, icnt, ocnt, pack_byte_addr;
    wire rdouble, wdouble; // not used.

    slv_regs slv_regs (.in_dat(in_dat), .chain_dat(rd_dat), 
	.current_addr(current_addr), .byte_cnt(byte_cnt),
        .branch_cnt(branch_cnt), .io_addr(io_addr), 
	.chain_cnt(chain_cnt), .pack_byte_addr(pack_byte_addr), 
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), 
	.regs_rdN(dma8_regs_rdN), .regs_wrN(dma8_regs_wrN), 
	.chain_wrN(chain_wrN), 

        .out_datN(dma8_out_datN), .chain_rec(chain_rec), 
	.mem_start(mem_start), .tim_parm(tim_parm),
	.cnt_start(cnt_start), .polarity(polarity), 
	.dma_dir(rd_portN), .xclk_ena(xclk_ena));

    dma_sm dma_sm (.dma_ctl(dma8_dma_ctl), .sys_clk(sys_clk), 
	.sys_rstN(sys_rstN), .band_doneN(band_doneN), 
	.next_chainN(next_chainN), .chain_doneN(rd_doneN), 
	.acc_doneN(acc_doneN),

        .dma_doneN(dma8_doneN), .band_loadN(band_loadN), 
	.chain_reqN(chain_reqN), .dma_accN(dma_accN));

    chain_sm chain_sm (.chain_rec(chain_rec),

        .sys_clk(sys_clk), .sys_rstN(sys_rstN), 
	.chain_wrN(chain_wrN), .chain_reqN(chain_reqN), 
	.dma_ena(dma8_dma_ctl[0]), .band_doneN(band_doneN), 
	.band_loadN(band_loadN),

        .chain_lsb(chain_lsb), .branch_cnt(branch_cnt), 
	.chain_cnt(chain_cnt), .next_chainN(next_chainN));

    read_sm read_sm (.dma_addr({dram, 1'b0, burst_reg, dma_addr}),
	.chain_msb(chain_msb), .chain_lsb(chain_lsb),

        .sys_clk(sys_clk), .sys_rstN(sys_rstN), .rd_actN(dma8_actN), 
	.rdceN(rdceN), .last_rdceN(last_rdceN), .chain_reqN(chain_reqN),
        .rd_reqN(rd_reqN), .big_end(1'b0),

        .rd_addr({dma8_addr[33:32], rdouble, dma8_addr[31:0]}), 
	.rdN(dma8_rdN), .fifo_wrN(mem2fifo_wrN), 
	.chain_wrN(chain_wrN), .rd_doneN(rd_doneN));

    write_sm write_sm (.dma_addr({dram, rd_doneN, burst_reg, dma_addr}),
	.fifo_dat(fifo_out),

        .sys_clk(sys_clk), .sys_rstN(sys_rstN), .wr_ackN(dma8_ackN), 
	.wr_reqN(wr_reqN),

        .wr_dat({dma8_dat[32], wdouble, dma8_dat[31:0]}), 
	.wrN(dma8_wrN), .addr_ackN(addr_ackN), .dat_ackN(dat_ackN), 
	.wr_doneN(wr_doneN));

    ch_arb ch_arb (.sys_clk(sys_clk), .sys_rstN(sys_rstN), 
	.rd_portN(rd_portN), .dma2port_reqN(dma2port_reqN), 
	.port_gntN(dma8_gntN), .dma_accN(dma_accN), 
	.band_doneN(band_doneN), .rearbN(rearbN), 
	.timed_outN(timed_outN), .dma_ena(dma8_dma_ctl[0]), 
	.fifo_emptyN(fifo_emptyN), .pack_idleN(pack_idleN),   
	.dma_tim_idleN(dma_tim_idleN),

        .dma_reqN(dma8_reqN), .arb_gntN(arb_gntN), 
	.acc_doneN(acc_doneN), .timeout_cnt_enN(timeout_cnt_enN), 
	.flushN(flushN), .restoreN(restoreN));

    mem_acc mem_acc (.mem_start(mem_start[3:0]), 
	.port_fifo_addr(port_fifo_addr), .mem_fifo_addr(dma_addr[2:0]), 
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .rd_portN(rd_portN), 
	.band_loadN(band_loadN),
	.inc_mem_fifo_addrN(inc_mem_fifo_addrN), .flushN(flushN),
	.addr_ackN(addr_ackN), .rd_doneN(rd_doneN),
	.wr_doneN(wr_doneN), .dma_accN(dma_accN), 

        .icnt(icnt), .ocnt(ocnt), .fifo_emptyN(fifo_emptyN), 
	.fifo_fullN(fifo_fullN), .burst_reg(burst_reg), 
	.wr_reqN(wr_reqN), .rd_reqN(rd_reqN));

    mem_addr mem_addr (.current_addr(current_addr), 
	.mem_start(mem_start[28:2]), .beN_fout(beN_fout), 
	.sys_clk(sys_clk), .sys_rstN(sys_rstN),
        .rd_portN(rd_portN), .band_loadN(band_loadN), 
	.dat_ackN(dat_ackN), .mem2fifo_wrN(mem2fifo_wrN), 
	.burst_reg(burst_reg), .restoreN(restoreN), 

        .mem_addr(dma_addr), .inc_mem_fifo_addrN(inc_mem_fifo_addrN),
	.dram(dram));

    port_addr port_addr (.mem_start(mem_start[28:0]),
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .rd_portN(rd_portN), 
	.band_loadN(band_loadN), .pack2fifo_wrN(pack2fifo_wrN),
	.fifo2pack_wrN(fifo2pack_wrN), .dma2port_stb1N(dma2port_stb1N),
	.restoreN(restoreN), 

        .current_addr(current_addr), .port_fifo_addr(port_fifo_addr), 
	.pack_byte_addr(pack_byte_addr), .word_doneN(word_doneN), 
	.rearbN(rearbN));

    port_ctl port_ctl (.sys_clk(sys_clk), .sys_rstN(sys_rstN), 
	.rd_portN(rd_portN), .dma_ena(dma8_dma_ctl[0]), 
	.dma_accN(dma_accN), .arb_gntN(arb_gntN), 
	.fifo_emptyN(fifo_emptyN), .fifo_fullN(fifo_fullN), 
	.mem2fifo_wrN(mem2fifo_wrN), .dma2port_stb1N(dma2port_stb1N), 
	.pack_stb1N(pack_stb1N), .word_doneN(word_doneN), 
	.last_byteN(last_byteN), .band_doneN(band_doneN), 
	.flushN(flushN), 

        .fifo_wrN(fifo_wrN), .pack_reg_wrN(pack_reg_wrN), 
	.pack2fifo_wrN(pack2fifo_wrN), .fifo2pack_wrN(fifo2pack_wrN), 
	.pack_idleN(pack_idleN), .pack_rdyN(pack_rdyN));

    dma_tim dma_tim (.tim_parm(tim_parm[19:8]), .polarity(polarity), 
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), .rd_portN(rd_portN), 
	.dma_ena(dma8_dma_ctl[0]), .arb_gntN(arb_gntN), 
	.pack_rdyN(pack_rdyN), .dreqN_in(dreqN_in), 
	.last_byteN(last_byteN), .word_doneN(word_doneN), 
	.xclk_ena(xclk_ena), .xclk_syncN(xclk_syncN), 

        .pack_stb1N(pack_stb1N), .dma2port_stb1N(dma2port_stb1N), 
	.dma2port_strobeN(dma8_rwN), .dma2port_ackN(dackN_out), 
	.dma2port_oeN(dma8_oeN), .dma2port_reqN(dma2port_reqN), 
	.dma_tim_idleN(dma_tim_idleN));

    count count (.cnt_start(cnt_start), .tim_parm(tim_parm[7:0]), 
	.sys_clk(sys_clk), .sys_rstN(sys_rstN), 
	.band_loadN(band_loadN), .dma2port_reqN(dma2port_reqN), 
	.dma2port_stb1N(dma2port_stb1N),
	.timeout_cnt_enN(timeout_cnt_enN), 

        .byte_cnt(byte_cnt), .last_byteN(last_byteN),
	.band_doneN(band_doneN), .timed_outN(timed_outN));

    pack8 pack8 (.pack_word_in(fifo_out), .rd_dat(rd_dat), 
	.pack_byte_in(dma8ad_in), .pack_byte_addr(pack_byte_addr),
        .sys_clk(sys_clk), .rd_portN(rd_portN), 
	.band_loadN(band_loadN), .pack_reg_wrN(pack_reg_wrN), 
	.pack2fifo_wrN(pack2fifo_wrN),

        .fifo_in(fifo_in), .pack_byte_out(dma8_out), 
	.beN_fin(beN_fin));

    be be (.icnt(icnt), .ocnt(ocnt), .beN_fin(beN_fin), 
	.sys_clk(sys_clk), .band_loadN(band_loadN), 
	.pack2fifo_wrN(pack2fifo_wrN),

        .beN_fout(beN_fout));

    fifo4 fifo4 (.fin(fifo_in), .icnt(icnt), .ocnt(ocnt), 
	.sys_clk(sys_clk), .wrN(fifo_wrN), 

	.fout(fifo_out));

endmodule

module slv_regs (in_dat, chain_dat, current_addr, byte_cnt, branch_cnt,
	io_addr, chain_cnt, pack_byte_addr, 

	sys_clk, sys_rstN, regs_rdN, regs_wrN, chain_wrN,

	out_datN, chain_rec, mem_start, tim_parm, cnt_start, polarity,
	dma_dir, xclk_ena);

    input [31:0] in_dat, chain_dat;
    input [26:0] current_addr;
    input [15:0] byte_cnt;
    input [7:0] branch_cnt;
    input [2:0] io_addr;
    input [1:0] chain_cnt, pack_byte_addr;
    input sys_clk, sys_rstN, regs_rdN, regs_wrN, chain_wrN;

    output [31:0] out_datN, chain_rec;
    output [28:0] mem_start;
    output [19:0] tim_parm;
    output [15:0] cnt_start;
    output [2:0] polarity;
    output dma_dir, xclk_ena;

    reg [101:0] creg;
    reg [31:0] out_datN;

// io_addr is really io_addr[2:0]. Ex. 000 is 280, 001 is 284.

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    creg <= `CQ 102'h3fffffc000_00000000_00000000;
	else if (~regs_wrN)
	    case (io_addr) // synopsys parallel_case full_case
                3'b000: creg[28:0] <= `CQ in_dat[28:0];
                3'b001: creg[44:29] <= `CQ in_dat[15:0];
                3'b010: creg[69:45] <= `CQ in_dat[24:0];
                3'b011: creg[101:70] <= `CQ in_dat;
		default:;
	    endcase
	else if (~chain_wrN)
	    case (chain_cnt) // synopsys parallel_case full_case
		2'b00: creg[28:0] <= `CQ chain_dat[28:0];
		2'b01: creg[44:29] <= `CQ chain_dat[15:0];
		2'b10: creg[69:45] <= `CQ chain_dat[24:0];
		2'b11: creg[101:70] <= `CQ chain_dat;
	    endcase

    always @(regs_rdN or io_addr or creg or current_addr or 
	    pack_byte_addr or byte_cnt or branch_cnt)
	if (regs_rdN)
	    out_datN = 32'hffffffff;
	else case (io_addr) // synopsys parallel_case full_case
	    3'b000: out_datN = {3'h7, ~creg[28:0]};
	    3'b001: out_datN = {16'hffff, ~creg[44:29]};
	    3'b010: out_datN = {11'h7ff, ~creg[69:45]};
	    3'b011: out_datN = ~creg[101:70];
            3'b100: out_datN = {3'h7, ~current_addr, ~pack_byte_addr};
            3'b101: out_datN = {16'hffff, ~byte_cnt};
            3'b111: out_datN = {24'hffffff, ~branch_cnt};
	    default: out_datN = 32'hffffffff;
	endcase

    assign mem_start = creg[28:0];
    assign cnt_start = creg[44:29];
    assign tim_parm = creg[64:45];
    assign polarity = creg[67:65];
    assign dma_dir = creg[68];
    assign xclk_ena = creg[69];
    assign chain_rec = creg[101:70];

endmodule

module dma_sm (dma_ctl, sys_clk, sys_rstN, band_doneN, next_chainN,
	chain_doneN, acc_doneN,

	dma_doneN, band_loadN, chain_reqN, dma_accN);

    input [3:0] dma_ctl;
    input sys_clk, sys_rstN, band_doneN, next_chainN, chain_doneN,
	acc_doneN;
    output [2:0] dma_doneN;
    output band_loadN, chain_reqN, dma_accN;

    wire dma_ena, band_pauseN, acc_pauseN, next_band, band_ctlN;

    reg [2:0] state;
    reg load_delayN, band_doneN_reg, acc_doneN_reg;

    `define DMA_IDLE	3'b000
    `define BAND_LOAD	3'b001
    `define BAND_PAUSE	3'b011
    `define BAND_CTL	3'b010
    `define DMA_DONE	3'b110
    `define DMA_CHAIN	3'b111
    `define DMA_ACCESS	3'b101

    assign dma_ena = dma_ctl[0];
    assign band_pauseN = dma_ctl[1];
    assign acc_pauseN = dma_ctl[2];
    assign next_band = dma_ctl[3];

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    state <= `CQ `DMA_IDLE;
	else case (state) // synopsys parallel_case full_case
	    `DMA_IDLE:
		if (dma_ena)
		    state <= `CQ `BAND_LOAD;
	    `BAND_LOAD:
		if (~load_delayN);
		else if (~band_pauseN)
		    state <= `CQ `BAND_PAUSE;
		else state <= `CQ `BAND_CTL;
	    `BAND_PAUSE:
		if (~dma_ena)
		    state <= `CQ `DMA_DONE;
		else if (band_pauseN)
		    state <= `CQ `BAND_CTL;
	    `BAND_CTL:
		if (~dma_ena)
		    state <= `CQ `DMA_DONE;
		else if (~band_doneN & ~next_chainN)
		    state <= `CQ `DMA_CHAIN;
		else if (~band_doneN & next_band)
		    state <= `CQ `BAND_LOAD;
		else if (~band_doneN)
		    state <= `CQ `DMA_DONE;
		else if (acc_pauseN)
		    state <= `CQ `DMA_ACCESS;
	    `DMA_DONE:
		if (~dma_ena)
		    state <= `CQ `DMA_IDLE;
	    `DMA_CHAIN:
		if (~chain_doneN)
		    state <= `CQ `BAND_LOAD;
	    `DMA_ACCESS:
		if (~acc_doneN)
		    state <= `CQ `BAND_CTL;
	endcase

    assign band_loadN = ~(state == `BAND_LOAD);
    assign band_ctlN = ~(state == `BAND_CTL);
    assign chain_reqN = ~(state == `DMA_CHAIN);
    assign dma_accN = ~(state == `DMA_ACCESS);

    always @(posedge sys_clk)
	if (band_loadN)
	    load_delayN <= `CQ 0;
	else load_delayN <= `CQ 1;

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    band_doneN_reg <= `CQ 1;
	else if (~dma_ena)
	    band_doneN_reg <= `CQ 1;
	else if (~band_ctlN)
	    band_doneN_reg <= `CQ band_doneN;

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    acc_doneN_reg <= `CQ 1;
	else if (~dma_ena)
	    acc_doneN_reg <= `CQ 1;
	else if (~dma_accN & ~acc_doneN)
	    acc_doneN_reg <= `CQ 0;
	else if (~band_ctlN & acc_pauseN)
	    acc_doneN_reg <= `CQ 1;

    assign dma_doneN[0] = ~(state == `DMA_DONE);
    assign dma_doneN[1] = band_doneN_reg;
    assign dma_doneN[2] = acc_doneN_reg;

endmodule

module chain_sm (chain_rec,

	sys_clk, sys_rstN, chain_wrN, chain_reqN, dma_ena,
	band_doneN, band_loadN,

	chain_lsb, branch_cnt, chain_cnt, next_chainN);

    input [31:0] chain_rec;
    input sys_clk, sys_rstN, chain_wrN, chain_reqN, dma_ena,
	band_doneN, band_loadN;
    output [11:0] chain_lsb;
    output [7:0] branch_cnt;
    output [1:0] chain_cnt;
    output next_chainN;

    wire band_endN;

    reg [11:0] next_lsb, branch_lsb, chain_lsb;
    reg [7:0] branch_cnt, threshold;
    reg [1:0] chain_cnt;
    reg next_chainN, band_doneN_reg, branchN;

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    chain_cnt <= `CQ 2'h0;
	else if (chain_reqN)
	    chain_cnt <= `CQ 2'h0;
	else if (~chain_wrN)
	    chain_cnt <= `CQ chain_cnt + 2'h1;

    always @(posedge sys_clk)
	band_doneN_reg <= `CQ band_doneN;
    assign band_endN = ~(~band_doneN & band_doneN_reg);
    always @(posedge sys_clk)
	if (~dma_ena)
	    branch_cnt <= `CQ 0;
	else if (~band_endN)
	    branch_cnt <= `CQ branch_cnt + 1;

    always @(posedge sys_clk)
	if (~band_loadN)
	    begin
		threshold <= `CQ chain_rec[7:0];
		next_lsb <= `CQ chain_rec[19:8];
		branch_lsb <= `CQ chain_rec[31:20];
	    end

    always @(posedge sys_clk)
	branchN <= `CQ ~(branch_cnt >= threshold);
    always @(posedge sys_clk)
	if (next_chainN & chain_reqN)
	    chain_lsb <= `CQ (~branchN)? branch_lsb : next_lsb;

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    next_chainN <= `CQ 1;
	else if (~band_endN)
	    next_chainN <= `CQ &chain_lsb;
	else if (~dma_ena | ~chain_reqN)
	    next_chainN <= `CQ 1;

endmodule

module read_sm (dma_addr, chain_msb, chain_lsb,

	sys_clk, sys_rstN, rd_actN, rdceN, last_rdceN, chain_reqN,
	rd_reqN, big_end,

	rd_addr, rdN, fifo_wrN, chain_wrN, rd_doneN);

    input [33:0] dma_addr;
    input [12:0] chain_msb;
    input [11:0] chain_lsb;
    input sys_clk, sys_rstN, rd_actN, rdceN, last_rdceN, chain_reqN,
	rd_reqN, big_end;
    output [34:0] rd_addr;
    output rdN, fifo_wrN, chain_wrN, rd_doneN;

    wire fifo_dataN, chain_dataN;

    reg [2:0] state;

    `define READ_IDLE	3'b000
    `define CHAIN_ADDR	3'b001
    `define CHAIN_DATA	3'b010
    `define FIFO_ADDR	3'b101
    `define FIFO_DATA	3'b110

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    state <= `CQ `READ_IDLE;
	else case (state) // synopsys parallel_case full_case
	    `READ_IDLE:
		if (~chain_reqN)
		    state <= `CQ `CHAIN_ADDR;
		else if (~rd_reqN)
		    state <= `CQ `FIFO_ADDR;
	    `CHAIN_ADDR:
		if (~rd_actN)
		    state <= `CQ `CHAIN_DATA;
	    `CHAIN_DATA:
		if (~last_rdceN)
		    state <= `CQ `READ_IDLE;
	    `FIFO_ADDR:
		if (~rd_actN)
		    state <= `CQ `FIFO_DATA;
	    `FIFO_DATA:
		if (~last_rdceN)
		    state <= `CQ `READ_IDLE;
	endcase

    assign fifo_dataN = ~(state[2:1] == 2'b11);
    assign chain_dataN = ~(state[2:1] == 2'b01);
    assign rdN = ~(state[0]);

    assign fifo_wrN = ~(~fifo_dataN & ~rdceN);
    assign chain_wrN = ~(~chain_dataN & ~rdceN);
    assign rd_doneN = ~(state[1] & ~last_rdceN);

    assign rd_addr[34] = (~chain_reqN)? 1'b0 : big_end;
    assign rd_addr[33] = (~chain_reqN)? ~&chain_msb[12:10] :
	dma_addr[33];
    assign rd_addr[32] = (~chain_reqN)? 1'b0 : dma_addr[32];
    assign rd_addr[31:27] = (~chain_reqN)? 5'b10000 : dma_addr[31:27];
    assign rd_addr[26:2] = (~chain_reqN)? {chain_msb, chain_lsb} :
	dma_addr[26:2];
    assign rd_addr[1:0] = (~chain_reqN)? 2'b00 : dma_addr[1:0];
 
endmodule

module write_sm (dma_addr, fifo_dat,

	sys_clk, sys_rstN, wr_ackN, wr_reqN,

	wr_dat, wrN, addr_ackN, dat_ackN, wr_doneN);

    input [33:0] dma_addr;
    input [31:0] fifo_dat;
    input sys_clk, sys_rstN, wr_ackN, wr_reqN;
    output [33:0] wr_dat;
    output wrN, addr_ackN, dat_ackN, wr_doneN;

    reg [33:0] wr_dat;
    reg [2:0] nword;
    reg [1:0] state;

    `define WRITE_IDLE	2'b00
    `define WRITE_ADDR	2'b01
    `define BURST_DATA	2'b11
    `define LAST_DATA	2'b10

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    state <= `CQ `WRITE_IDLE;
	else case (state) // synopsys parallel_case full_case
	    `WRITE_IDLE:
		if (~wr_reqN)
		    state <= `CQ `WRITE_ADDR;
	    `WRITE_ADDR:
		if (~wr_ackN)
		    state <= `CQ (wr_dat[31])? `BURST_DATA :
			`LAST_DATA;
	    `BURST_DATA:
		if (~wr_ackN & (nword == 1))
		    state <= `CQ `LAST_DATA;
	    `LAST_DATA:
		if (~wr_ackN)
		    state <= `CQ (~wr_reqN)? `WRITE_ADDR :
			`WRITE_IDLE;
	endcase

    assign wrN = ~(state == `WRITE_ADDR);

    assign addr_ackN = ~(~wr_ackN & ~wrN);
    assign dat_ackN = ~(~wr_ackN & state[0]);
    assign wr_doneN = ~(~wr_ackN & wr_reqN &
	(state == `LAST_DATA));

    always @(posedge sys_clk)
	if (~state[0] & (~state[1] | ~wr_ackN))
	    wr_dat <= `CQ dma_addr;
	else if (~wr_ackN)
	    wr_dat[31:0] <= `CQ fifo_dat;
    always @(posedge sys_clk)
	if (~wrN)
	    begin
		if (&wr_dat[32:31])
		    nword <= `CQ 3'h7;
		else if (wr_dat[31])
		    nword <= `CQ 3'h3;
		else nword <= `CQ 3'h0;
	    end
	else if (~wr_ackN)
	    nword <= `CQ nword - 1;

endmodule

module ch_arb (sys_clk, sys_rstN, rd_portN, dma2port_reqN, port_gntN, 
	dma_accN, band_doneN, rearbN, timed_outN, dma_ena, 
	fifo_emptyN, pack_idleN, dma_tim_idleN,

	dma_reqN, arb_gntN, acc_doneN, timeout_cnt_enN, flushN, 
	restoreN);

    input sys_clk, sys_rstN, rd_portN, dma2port_reqN, port_gntN, 
	dma_accN, band_doneN, rearbN, timed_outN, dma_ena, 
	fifo_emptyN, pack_idleN, dma_tim_idleN; 

    output dma_reqN, arb_gntN, acc_doneN, timeout_cnt_enN, flushN, 
	restoreN;

    reg [4:0] state;

    `define CH_ARB_IDLE		5'b00000
    `define PORT_REQ		5'b00001
    `define ARB_GNT		5'b10011
    `define ARB_GNT_WAIT	5'b10001
    `define FLUSH		5'b01001
    `define NON_FLUSH		5'b11001
    `define RESTORE_ACC_DONE	5'b01101
    `define ACC_DONE		5'b11101

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            state <= `CQ `CH_ARB_IDLE;
        else case (state) // synopsys parallel_case full_case
            `CH_ARB_IDLE:
                if (~dma2port_reqN & ~dma_accN)
                    state <= `CQ `PORT_REQ;
                else if (~dma_ena & ~dma_accN)
                    state <= `CQ `ACC_DONE;
            `PORT_REQ:
                if (~dma_ena)
                    state <= `CQ `ACC_DONE;
                else if (~port_gntN)
                    state <= `CQ `ARB_GNT;
            `ARB_GNT:
                if (~band_doneN | ~timed_outN | ~dma_ena)
		    state <= `CQ ~rd_portN ? `FLUSH : `NON_FLUSH;
                else if (~rearbN)
                    state <= `CQ `NON_FLUSH;
                else if (dma2port_reqN)
                    state <= `CQ `ARB_GNT_WAIT;
            `ARB_GNT_WAIT:
                if (~band_doneN | ~timed_outN | ~dma_ena)
		    state <= `CQ ~rd_portN ? `FLUSH : `NON_FLUSH;
                else if (~rearbN)
                    state <= `CQ `NON_FLUSH;
                else if (~dma2port_reqN)
                    state <= `CQ `ARB_GNT;
            `FLUSH:
                if (~fifo_emptyN & ~pack_idleN & ~dma_tim_idleN)
                    state <= `CQ `RESTORE_ACC_DONE;
            `NON_FLUSH:
                if (~dma_tim_idleN)
                    state <= `CQ `ACC_DONE;
            `RESTORE_ACC_DONE:
		state <= `CQ `CH_ARB_IDLE;
            `ACC_DONE:
		state <= `CQ `CH_ARB_IDLE;
	endcase

    assign dma_reqN = ~state[0];
    assign arb_gntN = ~state[1];
    assign acc_doneN = ~state[2];
    assign restoreN = ~(state == `RESTORE_ACC_DONE);
    assign timeout_cnt_enN = ~|state;		// not idle
    assign flushN = ~(state == `FLUSH); 

// Handshake steps:
//	request port (dma_reqN).
//	get port_gntN from the main arbiter.
//	port_gntN will be asserted until dma_reqN goes away.
// At least one byte will be sent/received for each request.
// If dma_ena is deasserted, a new band_loadN will happen when it is
// reasserted.
// If writing the port and dma_ena deasserted, the addresses and counts
// will be reloaded by software later due to band_loadN.
// If writing the port and timed_outN, the addresses and counts
// "freeze".
// In idle we could have ~dma_accN and be waiting for ~dma2port_reqN. 
// when dma_ena could go away, so then send ~acc_doneN. 

endmodule

module mem_acc (mem_start, port_fifo_addr, mem_fifo_addr, sys_clk, 
	sys_rstN, rd_portN, band_loadN, inc_mem_fifo_addrN,
	flushN, addr_ackN, rd_doneN, wr_doneN, dma_accN, 

	icnt, ocnt, fifo_emptyN, fifo_fullN, burst_reg, 
	wr_reqN, rd_reqN);

    input [3:0] mem_start;
    input [2:0] port_fifo_addr, mem_fifo_addr;
    input sys_clk, sys_rstN, rd_portN, band_loadN, inc_mem_fifo_addrN, 
	flushN, addr_ackN, rd_doneN, wr_doneN, dma_accN;

    output [1:0] icnt, ocnt;
    output fifo_emptyN, fifo_fullN, burst_reg, wr_reqN, rd_reqN;

    wire mem_zeroN, single, burst, mem_acc_idleN, do_access;

    reg [1:0] state;
    reg odd_startN, burst_reg;

    `define MEM_ACC_IDLE	2'b00
    `define WR_REQ		2'b01
    `define RD_REQ		2'b10
    `define WR_DONE_WAIT	2'b11

// Fifo pointers select. 

    assign icnt = ~rd_portN ? port_fifo_addr[1:0] : mem_fifo_addr[1:0];
    assign ocnt = ~rd_portN ? mem_fifo_addr[1:0] : port_fifo_addr[1:0];

// Memory access control. 

    always @(posedge sys_clk)
	if (~band_loadN)
	    odd_startN <= `CQ ~|mem_start[3:0];
	else if (~inc_mem_fifo_addrN & (&mem_fifo_addr[1:0]))
	    odd_startN <= `CQ 1'b1;

    assign fifo_emptyN = |(mem_fifo_addr ^ port_fifo_addr);
    assign fifo_fullN = ~( (mem_fifo_addr[2] ^ port_fifo_addr[2]) &
        (~|(mem_fifo_addr[1:0] ^ port_fifo_addr[1:0])) );
    assign mem_zeroN = |mem_fifo_addr[1:0];
 
    assign single = ~rd_portN ? (fifo_emptyN & ~odd_startN) |
	(fifo_emptyN & ~flushN) : 
	(fifo_fullN & flushN & ~odd_startN);

    assign burst = ~rd_portN ? 
	(~fifo_fullN & ~mem_zeroN & odd_startN & flushN) :
	(~fifo_emptyN & ~mem_zeroN & odd_startN & flushN);

    assign do_access = burst | single;

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            state <= `CQ `MEM_ACC_IDLE;
        else case (state) // synopsys parallel_case full_case
            `MEM_ACC_IDLE:
		if (~rd_portN & do_access & ~dma_accN) 
                    state <= `CQ `WR_REQ;
		else if (rd_portN & do_access & ~dma_accN)
                    state <= `CQ `RD_REQ;
            `RD_REQ:
                if (~rd_doneN)
                    state <= `CQ `MEM_ACC_IDLE;
            `WR_REQ:
                if (~addr_ackN)
                    state <= `CQ `WR_DONE_WAIT;
            `WR_DONE_WAIT:
                if (~wr_doneN)
                    state <= `CQ `MEM_ACC_IDLE;
        endcase

    assign mem_acc_idleN = ~(state == `MEM_ACC_IDLE);
    assign wr_reqN = ~(state == `WR_REQ);
    assign rd_reqN = ~(state == `RD_REQ);

    always @(posedge sys_clk)
	if (~mem_acc_idleN)
	    burst_reg <= `CQ burst;

endmodule

module mem_addr (current_addr, mem_start, beN_fout, sys_clk, 
	sys_rstN, rd_portN, band_loadN, dat_ackN, mem2fifo_wrN, 
	burst_reg, restoreN, 

	mem_addr, inc_mem_fifo_addrN, dram);

    input [26:0] mem_start, current_addr;
    input [3:0] beN_fout;
    input sys_clk, sys_rstN, rd_portN, band_loadN, dat_ackN, 
	mem2fifo_wrN, burst_reg, restoreN;

    output [30:0] mem_addr;
    output inc_mem_fifo_addrN, dram;

    wire [3:0] beN;

    reg [11:0] base_msb, base_lsb;
    reg [2:0] mem_fifo_addr;
    reg inc_lsbN, inc_msbN, dram;

// Lower (fifo) address for 4x32 fifo. 

    assign inc_mem_fifo_addrN = ~(~dat_ackN | ~mem2fifo_wrN);

    always @(posedge sys_clk)
	if (~band_loadN)
	    mem_fifo_addr <= `CQ mem_start[2:0];
	else if (~inc_mem_fifo_addrN)
	    mem_fifo_addr <= `CQ mem_fifo_addr + 1;
	else if (~restoreN) 		// after flush
	    mem_fifo_addr <= `CQ current_addr[2:0];

// Base address.

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            inc_lsbN <= `CQ 1;
	else
	    inc_lsbN <= `CQ ~(&mem_fifo_addr & ~inc_mem_fifo_addrN); 

    always @(posedge sys_clk)
        if (~band_loadN)
            base_lsb <= `CQ mem_start[14:3];
        else if (~restoreN)
            base_lsb <= `CQ current_addr[14:3];
        else if (~inc_lsbN)
            base_lsb <= `CQ base_lsb + 1;

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            inc_msbN <= `CQ 1;
        else 
	    inc_msbN <= `CQ ~(&base_lsb & ~inc_lsbN);

    always @(posedge sys_clk)
        if (~band_loadN)
            base_msb <= `CQ mem_start[26:15];
        else if (~restoreN)
            base_msb <= `CQ current_addr[26:15];
        else if (~inc_msbN)
            base_msb <= `CQ base_msb + 1;

// Other address bits ...

    assign beN = rd_portN ? 4'b0 : burst_reg ? 4'b0 : beN_fout;

    always @(posedge sys_clk)
        if (~band_loadN)
	    dram  <= `CQ ~(&mem_start[26:24]);	// SRAM is '111'

// Memory address output.

    assign mem_addr = {beN, base_msb, base_lsb, mem_fifo_addr};

// mem_start[26:0] here is really mem_start[28:2].
// mem_addr[32:31] is {dram, burst}.
// current_addr is the word address of the current byte in the packer.
// No bytes done here, bytes are handled in the pack8.v.
// dat_ackN is the mem write ackN. mem2fifo_wrN is the mem read rdceN.
// Either dat_ackN OR mem2fifo_wrN will be active since only
// rd_actN to the read_sm defines when the mem_addr is captured.

endmodule

module port_addr (mem_start, sys_clk, sys_rstN, rd_portN, band_loadN,
	pack2fifo_wrN, fifo2pack_wrN, dma2port_stb1N, restoreN,  

	current_addr, port_fifo_addr, pack_byte_addr, word_doneN, 
	rearbN);

    input [28:0] mem_start;
    input sys_clk, sys_rstN, rd_portN, band_loadN, pack2fifo_wrN, 
	fifo2pack_wrN, dma2port_stb1N, restoreN; 

    output [26:0] current_addr;
    output [2:0] port_fifo_addr;
    output [1:0] pack_byte_addr;
    output word_doneN, rearbN;

    wire inc_port_fifo_addr;

    reg [13:0] pack_word_msb;
    reg [12:0] pack_word_lsb;
    reg [2:0] port_fifo_addr;
    reg [1:0] pack_byte_addr;
    reg inc_lsbN, inc_msbN, rearbN;

// Port fifo address.

    assign inc_port_fifo_addr = ~(~pack2fifo_wrN | ~fifo2pack_wrN);
 
    always @(posedge sys_clk)
	if (~band_loadN)
	    port_fifo_addr <= `CQ mem_start[4:2];
	else if (~inc_port_fifo_addr)
	    port_fifo_addr <= `CQ port_fifo_addr + 1;
	else if (~restoreN)		// after flush
	    port_fifo_addr <= `CQ pack_word_lsb[2:0];
 
// Packer (current) address.

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            pack_byte_addr <= `CQ 0;
        else if (~band_loadN)
            pack_byte_addr <= `CQ mem_start[1:0];
        else if (~dma2port_stb1N)
            pack_byte_addr <= `CQ pack_byte_addr + 1;

    assign word_doneN = ~&pack_byte_addr;

    always @(posedge sys_clk)
        rearbN <= `CQ ~rd_portN ? 
	    ~(~dma2port_stb1N & ~word_doneN & (&port_fifo_addr[1:0])) :
	    ~(~dma2port_stb1N & ~word_doneN & (~|port_fifo_addr[1:0]));

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            inc_lsbN <= `CQ 1;
        else
            inc_lsbN <= `CQ ~(&pack_byte_addr & ~dma2port_stb1N); 

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            pack_word_lsb <= `CQ 0;
        else if (~band_loadN)
            pack_word_lsb <= `CQ mem_start[14:2];
        else if (~inc_lsbN)
            pack_word_lsb <= `CQ pack_word_lsb + 1;

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            inc_msbN <= `CQ 1;
        else
            inc_msbN <= `CQ ~(&pack_word_lsb & ~inc_lsbN); 

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            pack_word_msb <= `CQ 0;
        else if (~band_loadN)
            pack_word_msb <= `CQ mem_start[28:15];
        else if (~inc_msbN)
            pack_word_msb <= `CQ pack_word_msb + 1;

    assign current_addr = {pack_word_msb, pack_word_lsb}; 

// current_addr address holds the next address the packer will output.
// rearbN will force acc_doneN every 16 bytes, except if starting at
// an odd boundary. This prevents port lockout and allows pausing
// in dma_sm.

endmodule

module port_ctl (sys_clk, sys_rstN, rd_portN, dma_ena, dma_accN, 
	arb_gntN, fifo_emptyN, fifo_fullN, mem2fifo_wrN, 
	dma2port_stb1N, pack_stb1N, word_doneN, last_byteN,
	band_doneN, flushN,

	fifo_wrN, pack_reg_wrN, pack2fifo_wrN, fifo2pack_wrN, 
	pack_idleN, pack_rdyN);

    input sys_clk, sys_rstN, rd_portN, dma_ena, dma_accN, arb_gntN, 
	fifo_emptyN, fifo_fullN, mem2fifo_wrN, dma2port_stb1N, 
	pack_stb1N, word_doneN, last_byteN, band_doneN, flushN; 

    output fifo_wrN, pack_reg_wrN, pack2fifo_wrN, fifo2pack_wrN, 
	pack_idleN, pack_rdyN;

    reg [2:0] state_u, state_p;

    wire fifo2pack_wrN, pack2fifo_wrN;

    `define PORT_WR_IDLE	3'b000	// unpack
    `define FIFO2PACK_WR	3'b011
    `define PACK2PORT_WR	3'b010
    `define ACC_DONE_WAIT	3'b110

    `define PORT_RD_IDLE	3'b000	// pack
    `define PACK2PORT_RD	3'b101
    `define FIFO_CK		3'b010
    `define PACK2FIFO_WR	3'b110

// Unpack. Packer write control.

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            state_u <= `CQ `PORT_WR_IDLE;
        else case (state_u) // synopsys parallel_case full_case
            `PORT_WR_IDLE:
                if (rd_portN & fifo_emptyN & band_doneN & ~dma_accN)
                    state_u <= `CQ `FIFO2PACK_WR;
	    `FIFO2PACK_WR:
		state_u <= `CQ `PACK2PORT_WR;
	    `PACK2PORT_WR:
		if (~dma2port_stb1N & (~word_doneN | ~last_byteN))
		    state_u <= `CQ `PORT_WR_IDLE;
		else if (~dma_ena)
		    state_u <= `CQ `ACC_DONE_WAIT;
	    `ACC_DONE_WAIT:
		if (dma_accN)
		    state_u <= `CQ `PORT_WR_IDLE;
	endcase

    assign fifo2pack_wrN = ~state_u[0];

// Pack. Packer read control.

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            state_p <= `CQ `PORT_RD_IDLE;
        else case (state_p) // synopsys parallel_case full_case
            `PORT_RD_IDLE:
                if (~rd_portN & ~arb_gntN)
		    state_p <= `CQ `PACK2PORT_RD;
	    `PACK2PORT_RD:
                if (~dma2port_stb1N & (~word_doneN | ~last_byteN))
                    state_p <= `CQ `FIFO_CK;
		else if (~flushN)
		    state_p <= `CQ `FIFO_CK;
	    `FIFO_CK:
                if (fifo_fullN)
                    state_p <= `CQ `PACK2FIFO_WR;
            `PACK2FIFO_WR:
                state_p <= `CQ `PORT_RD_IDLE;
	endcase

    assign pack_reg_wrN = ~rd_portN ? pack_stb1N : fifo2pack_wrN;
    assign pack2fifo_wrN = ~&state_p[2:1];
    assign pack_idleN = ~((~|state_u) & (~|state_p)); 
    assign pack_rdyN = ~rd_portN ? state_p[1] : ~state_u[1];
    assign fifo_wrN = ~rd_portN ? pack2fifo_wrN : mem2fifo_wrN;

// Unpack:
// Go back to idle only if band is done, dma disabled, or word done
// since this may write a new word to the packer. Timeout causes
// the packer to keep it's present state. 
// DMA disable: Use dma_ena to go to idle, but use dma_accN to come out 
// of idle to wait for the band load. Don't use dma_accN
// to go to idle since it could be a timeout. The wait is needed
// since it takes some clocks to deassert dma_accN after dma disabled.

endmodule

module dma_tim (tim_parm, polarity, sys_clk, sys_rstN, rd_portN, 
	dma_ena, arb_gntN, pack_rdyN, dreqN_in, last_byteN, word_doneN, 
	xclk_ena, xclk_syncN,

	pack_stb1N, dma2port_stb1N, dma2port_strobeN, dma2port_ackN, 
	dma2port_oeN, dma2port_reqN, dma_tim_idleN);

    input [11:0] tim_parm;	// tim_parm is really tim_parm[19:8].
    input [2:0] polarity;
    input sys_clk, sys_rstN, rd_portN, dma_ena, arb_gntN, pack_rdyN, 
	dreqN_in, last_byteN, word_doneN, xclk_ena, xclk_syncN;

    output pack_stb1N, dma2port_stb1N, dma2port_strobeN, dma2port_ackN, 
	dma2port_oeN, dma2port_reqN, dma_tim_idleN;

    reg [3:0] state, ack2stb_ctr, stb_wid_ctr, stb2stb_ctr;

    wire [3:0] ack2stb_cnt, stb_wid_cnt, stb2stb_cnt;
    wire ack2stb_doneN, stb_wid_doneN, stb2stb_doneN, xclk_valid;

    `define TIM_IDLE		4'b0000
    `define ACK1		4'b1010
    `define STROBE		4'b1100
    `define STB2STB		4'b1000
    `define ACK2		4'b1001
    `define TIM_WAIT		4'b0011

    assign dma2port_reqN = polarity[0] ^ dreqN_in;

    always @(posedge sys_clk or negedge sys_rstN)
        if (~sys_rstN)
            state <= `CQ `TIM_IDLE;
        else case (state) // synopsys parallel_case full_case
            `TIM_IDLE:
                if (~arb_gntN & ~pack_rdyN & xclk_valid)
		    state <= `CQ (|ack2stb_cnt) ? `ACK1 : `STROBE;
            `ACK1:
		if (~ack2stb_doneN)
		    state <= `CQ `STROBE;
            `STROBE:
		if (~stb_wid_doneN & (~last_byteN | ~word_doneN | 
			dma2port_reqN | ~dma_ena))
		    state <= `CQ (|stb2stb_cnt) ? `ACK2 : `TIM_WAIT;
		else if (~stb_wid_doneN & (|stb2stb_cnt))
			state <= `CQ `STB2STB;
            `STB2STB:
		if (~stb2stb_doneN)
                    if (dma2port_reqN | ~dma_ena)
			state <= `CQ `TIM_WAIT;
                    else
                        state <= `CQ `STROBE;
            `ACK2:
		if (~stb2stb_doneN)
		    state <= `CQ `TIM_WAIT;
            `TIM_WAIT:
		state <= `CQ `TIM_IDLE;	// wait for rearbN, arb_gntN 
	endcase

    assign dma2port_ackN = polarity[1] ^ ~state[3];
    assign dma2port_strobeN = polarity[2] ^ ~state[2];
    assign dma2port_stb1N = ~(state[2] & ~stb_wid_doneN);
    assign pack_stb1N = xclk_ena ? ~(~dma2port_strobeN & dma2port_stb1N)
	: dma2port_stb1N;
    assign dma2port_oeN = ~(rd_portN & state[3]);
    assign dma_tim_idleN = |state;

    assign ack2stb_cnt = tim_parm[3:0];
    assign stb_wid_cnt = tim_parm[7:4];
    assign stb2stb_cnt = tim_parm[11:8];
    assign xclk_valid = ~xclk_ena | ~xclk_syncN; 

    always @(posedge sys_clk)
	if (~state[3])
	    ack2stb_ctr <= `CQ ack2stb_cnt;		// load
	else if (ack2stb_ctr == 3'b001)
	    ack2stb_ctr <= `CQ ack2stb_ctr;		// hold
	else 
	    ack2stb_ctr <= `CQ ack2stb_ctr - 1;		// count
    assign ack2stb_doneN = ~(xclk_valid & (ack2stb_ctr == 3'b001));

    always @(posedge sys_clk)
	if (~state[2])
	    stb_wid_ctr <= `CQ stb_wid_cnt;		// load
	else if (~stb_wid_doneN)
	    stb_wid_ctr <= `CQ stb_wid_cnt;		// reload
	else if (~|stb_wid_ctr)
	    stb_wid_ctr <= `CQ stb_wid_ctr;		// hold
	else
	    stb_wid_ctr <= `CQ stb_wid_ctr - 1;		// count
    assign stb_wid_doneN = ~(xclk_valid & (~|stb_wid_ctr));

    always @(posedge sys_clk)
	if (state[2])
	    stb2stb_ctr <= `CQ stb2stb_cnt;		// load
	else if (stb2stb_ctr == 3'b001)
	    stb2stb_ctr <= `CQ stb2stb_ctr;		// hold
	else
	    stb2stb_ctr <= `CQ stb2stb_ctr - 1;		// count
    assign stb2stb_doneN = ~(xclk_valid & (stb2stb_ctr == 3'b001));

// pack_reg_wrN is (~fifo2pack_wrN | ~pack2port_rdN).
// dma2port_strobeN is x8ad_rwN which goes to the x8 port.
// stb_wid_cnt is 0 = 1 clk, 1 = 2 clks, etc.
// all others are 0 = 0 clk, 1 = 1 clks, etc (0 clks are no interval).
// If xclk is enabled and ~rd_portN, the packer has to grab the data
// early - before the xclk rising edge changes it. So we can`t use 
// xclk_syncN. pack_stb1N is only used in the packer to clk data in.

endmodule

module count (cnt_start, tim_parm, sys_clk, sys_rstN, band_loadN, 
	dma2port_reqN, dma2port_stb1N, timeout_cnt_enN, 

	byte_cnt, last_byteN, band_doneN, timed_outN);

    input [15:0] cnt_start;
    input [7:0] tim_parm;
    input sys_clk, sys_rstN, band_loadN, dma2port_reqN, dma2port_stb1N,
	timeout_cnt_enN;

    output [15:0] byte_cnt;
    output last_byteN, band_doneN, timed_outN;

    reg [15:0] byte_cnt;
    reg [6:0] timeout_ctr;
    reg band_doneN, timed_outN;

    wire [6:0] timeout_cnt;
    wire timeout_ena;

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    byte_cnt <= `CQ 0;
	else if (~band_loadN)
	    byte_cnt <= `CQ cnt_start;
	else if (~dma2port_stb1N)
	    byte_cnt <= `CQ byte_cnt - 1;	// stays at 0.

    assign last_byteN = ~(byte_cnt == 16'h0001);

    always @(posedge sys_clk or negedge sys_rstN)
	if (~sys_rstN)
	    band_doneN <= `CQ 1;
	else if (~band_loadN)
	    band_doneN <= `CQ 1'b1;
	else if (~dma2port_stb1N & ~last_byteN)
	    band_doneN <= `CQ 1'b0;

    assign timeout_cnt = tim_parm[6:0];
    assign timeout_ena = tim_parm[7];
 
    always @(posedge sys_clk)
        if (~dma2port_reqN)
            timeout_ctr <= `CQ timeout_cnt;	// load
        else if (~|timeout_ctr)
            timeout_ctr <= `CQ timeout_ctr;	// hold at zero.
        else if (dma2port_reqN & ~timeout_cnt_enN)
            timeout_ctr <= `CQ timeout_ctr - 1;	// count

    always @(posedge sys_clk)
	timed_outN <= `CQ ~(timeout_ena & (~|timeout_ctr) & 
	    dma2port_reqN); 

// acc_doneN kicks the dma_sm back to band control and stops dma.
// band_doneN is active when byte_cnt is exhausted.
// Counting the bytes as they are output will cause extra
// bytes to be written into the fifo, but the byte count will
// cut off reading the extra bytes at the real last one.
// timeout_cnt of 0 = 1 clk, 1 = 2 clks, etc.
// timeout_cnt_enN is 0 when the ch_arb is not in idle.

endmodule

module pack8 (pack_word_in, rd_dat, pack_byte_in, pack_byte_addr, 
	sys_clk, rd_portN, band_loadN, pack_reg_wrN, pack2fifo_wrN, 

	fifo_in, pack_byte_out, beN_fin);

    input [31:0] pack_word_in, rd_dat;
    input [7:0] pack_byte_in;
    input [1:0] pack_byte_addr;
    input sys_clk, rd_portN, band_loadN, pack_reg_wrN, pack2fifo_wrN;

    output [31:0] fifo_in;
    output [7:0] pack_byte_out;
    output [3:0] beN_fin;

    reg [31:0] pack_word_out;
    reg [7:0] pack_byte_out;
    reg [3:0] beN_fin;

    always @(posedge sys_clk)
	if (~pack_reg_wrN)
	    if (~rd_portN)
		case (pack_byte_addr)//synopsys parallel_case full_case
		    2'b00: pack_word_out[7:0] <= `CQ pack_byte_in;
		    2'b01: pack_word_out[15:8] <= `CQ pack_byte_in;
		    2'b10: pack_word_out[23:16] <= `CQ pack_byte_in;
		    2'b11: pack_word_out[31:24] <= `CQ pack_byte_in;
		endcase
	    else
		pack_word_out <= `CQ pack_word_in;

//    assign select = {rd_portN, dma2port_oeN, pack_byte_addr};

    always @(pack_byte_addr or pack_word_out)
	case (pack_byte_addr) // synopsys parallel_case full_case
	    2'b00: pack_byte_out  = pack_word_out[7:0];
	    2'b01: pack_byte_out  = pack_word_out[15:8];
	    2'b10: pack_byte_out  = pack_word_out[23:16];
	    2'b11: pack_byte_out  = pack_word_out[31:24];
	endcase

    always @(posedge sys_clk)
	if (~band_loadN | ~pack2fifo_wrN)
	    beN_fin <= `CQ 4'hf;
	else if (~pack_reg_wrN)
            case (pack_byte_addr) // synopsys parallel_case full_case
                2'b00: beN_fin[0] <= `CQ 1'b0;
                2'b01: beN_fin[1] <= `CQ 1'b0;
                2'b10: beN_fin[2] <= `CQ 1'b0;
                2'b11: beN_fin[3] <= `CQ 1'b0;
	    endcase

    assign fifo_in = ~rd_portN ? pack_word_out : rd_dat;

// Packer register input can be pack_byte_in or pack_word_in.
// Packer data output can be pack_byte_out or pack_word_out.
// beN_fin register collects the beN's for the beN fifo.
// Only used when ~rd_portN, reading the port, see mem_addr.v.

endmodule

module be (icnt, ocnt, beN_fin, sys_clk, band_loadN, pack2fifo_wrN, 

	beN_fout);

    input [1:0] icnt, ocnt; 
    input [3:0] beN_fin;
    input sys_clk, band_loadN, pack2fifo_wrN;

    output [3:0] beN_fout;

    reg [15:0] be_fifo;
    reg [3:0] beN_fout;

    always @(posedge sys_clk)
        if (~band_loadN)
            be_fifo <= `CQ 16'hffff;
        else if (~pack2fifo_wrN)
	    case (icnt) // synopsys parallel_case full_case
		2'b00: be_fifo[3:0] <= `CQ beN_fin;
		2'b01: be_fifo[7:4] <= `CQ beN_fin;
		2'b10: be_fifo[11:8] <= `CQ beN_fin;
		2'b11: be_fifo[15:12] <= `CQ beN_fin;
	    endcase

    always @(ocnt or be_fifo)
        case (ocnt) // synopsys parallel_case full_case
            2'b00: beN_fout = be_fifo[3:0];
            2'b01: beN_fout = be_fifo[7:4];
            2'b10: beN_fout = be_fifo[11:8];
            2'b11: beN_fout = be_fifo[15:12];
        endcase

// It is little endian, byte 0 is data[7:0] and addr 00.
// The be_fifo is used only port->mem (~dma_dir). During mem->port
// the packer will start at the mem_start byte address
// and continue outputting bytes until the count reaches the last byte.

endmodule

module fifo4 (fin, icnt, ocnt, sys_clk, wrN, fout);

    input [31:0] fin;
    input [1:0] icnt, ocnt;
    input sys_clk, wrN;
    output [31:0] fout;

    reg [127:0] wreg;
    reg [31:0] fout;

    always @(posedge sys_clk)
	if (~wrN)
	    case (icnt) // synopsys parallel_case full_case
		2'b00: wreg[31:0] <= `CQ fin;
		2'b01: wreg[63:32] <= `CQ fin;
		2'b10: wreg[95:64] <= `CQ fin;
		2'b11: wreg[127:96] <= `CQ fin;
	    endcase

    always @(ocnt or wreg)
	case (ocnt) // synopsys parallel_case full_case
	    2'b00: fout = wreg[31:0];
	    2'b01: fout = wreg[63:32];
	    2'b10: fout = wreg[95:64];
	    2'b11: fout = wreg[127:96];
	endcase

endmodule

