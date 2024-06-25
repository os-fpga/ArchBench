module dpram_36x1024 (
	clock1,
	rce_a,
	addr_a,
	rq_a,
	wce_a,
	wd_a,

	clock0,
	rce_b,
	addr_b,
	rq_b,
	wce_b,
	wd_b
);

parameter AWIDTH = 10;
parameter DWIDTH = 36;

input					clock0;
input                   rce_a;
input      [AWIDTH-1:0] addr_a;
output reg [DWIDTH-1:0] rq_a;
input                   wce_a;
input      [DWIDTH-1:0] wd_a;

input					clock1;
input                   rce_b;
input      [AWIDTH-1:0] addr_b;
output reg [DWIDTH-1:0] rq_b;
input                   wce_b;
input      [DWIDTH-1:0] wd_b;

reg        [DWIDTH-1:0] memory[0:(2**AWIDTH)-1];

always @(posedge clock0) 
begin
	if (rce_a)
		rq_a <= memory[addr_a];

	else if (wce_a)
		memory[addr_a] <= wd_a;
end

always @(posedge clock1) 
begin
	if (rce_b)
		rq_b <= memory[addr_b];

	else if (wce_b)
		memory[addr_b] <= wd_b;
end

integer i;
initial
begin
	for(i = 0; i < ((2**AWIDTH)-1); i = i + 1)
		memory[i] = 0;
end

endmodule
