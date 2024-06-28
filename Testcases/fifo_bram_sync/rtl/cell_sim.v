// True Dual-port RAM Core logic
// This module is written in a scalable way
// By default it is configured as 256x36 = 9k-bits
module tdpram_core (wclk_i,
                    bwen_ni,
                    wen_ni,
                    waddr_i,
                    data_i,
                    rclk_i,
                    ren_ni,
                    raddr_i,
                    q_o
                   );
// Parameters
parameter ADDR_WIDTH = 8;
parameter DEPTH = 2**ADDR_WIDTH;
parameter BYTE_WIDTH = 9;
parameter NUM_BYTES = 4;

input ren_ni;
input wen_ni;
// input [0:ADDR_WIDTH-1] raddr_i;
// input [0:ADDR_WIDTH-1] waddr_i;
// input [0:BYTE_WIDTH*NUM_BYTES-1] bwen_ni;
// input [0:BYTE_WIDTH*NUM_BYTES-1] data_i;
input [ADDR_WIDTH-1:0] raddr_i;
input [ADDR_WIDTH-1:0] waddr_i;
input [BYTE_WIDTH*NUM_BYTES-1:0] bwen_ni;
input [BYTE_WIDTH*NUM_BYTES-1:0] data_i;
input wclk_i;
input rclk_i;
// output [0:BYTE_WIDTH*NUM_BYTES-1] q_o;
output [BYTE_WIDTH*NUM_BYTES-1:0] q_o;

// reg [0:NUM_BYTES*BYTE_WIDTH-1] ram[0:DEPTH-1];
// reg [0:NUM_BYTES*BYTE_WIDTH-1] q_reg;
reg [NUM_BYTES*BYTE_WIDTH-1:0] ram[0:DEPTH-1];
reg [NUM_BYTES*BYTE_WIDTH-1:0] q_reg;

integer i;

assign q_o = q_reg;

always @(posedge wclk_i) begin
  if (~wen_ni) begin
    for (i = 0; i < NUM_BYTES * BYTE_WIDTH; i = i + 1) begin
      if (~bwen_ni[i]) begin
        ram[waddr_i][i] <= data_i[i];
      end
    end
  end
end

always @(posedge rclk_i) begin
  if (~ren_ni) begin
    q_reg <= ram[raddr_i];
  end
end

endmodule

//-------------------------------------------------
// True Dual-port RAM Core logic 256x36
module dpram256x36 (wclk_i,
                    bwen_ni,
                    wen_ni,
                    waddr_i,
                    data_i,
                    rclk_i,
                    ren_ni,
                    raddr_i,
                    q_o
                   );

input ren_ni;
input wen_ni;
// input [0:7] raddr_i;
// input [0:7] waddr_i;
// input [0:35] bwen_ni;
// input [0:35] data_i;
input [7:0] raddr_i;
input [7:0] waddr_i;
input [35:0] bwen_ni;
input [35:0] data_i;
input wclk_i;
input rclk_i;
// output [0:35] q_o;
output [35:0] q_o;

  tdpram_core #(
    .ADDR_WIDTH(8),
    .BYTE_WIDTH(9),
    .NUM_BYTES(4)
  ) tdpram_core (
    .rclk_i     (rclk_i),
    .wclk_i     (wclk_i),
    .bwen_ni    (bwen_ni),
    .wen_ni     (wen_ni),
    .waddr_i    (waddr_i),
    .data_i     (data_i),
    .ren_ni     (ren_ni),
    .raddr_i    (raddr_i),
    .q_o        (q_o) 
   );

endmodule