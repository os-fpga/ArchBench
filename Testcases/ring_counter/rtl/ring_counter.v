//-------------------------------------------------------
//  Functionality: An n-bit synchronous left-right shift ring counter 
//  Author:        Azfar
//-------------------------------------------------------
// `include "../clb_defines.v"
`define REGISTER_WIDTH 100

module ring_counter ( 
  input wire clock0,                  
  input wire reset,
  input wire lr,
	input wire loopback_en,
	input wire [`REGISTER_WIDTH - 1:0] counter_in,
	output wire loopback_error,
  output reg [`REGISTER_WIDTH - 1:0] out
);

  assign loopback_error = loopback_en? (~(counter_in == out)):1'b0;

  always @(posedge clock0) begin
    if(reset)begin
      out <= {1'b1,{(`REGISTER_WIDTH - 1){1'b0}}};
    end else begin
      if(lr == 1)begin // left shift
        out[0]                    <= out[`REGISTER_WIDTH - 1];
        out[`REGISTER_WIDTH - 1:1] <= out[`REGISTER_WIDTH - 2:0];
      end else if (lr == 0) begin // right shift
        out[`REGISTER_WIDTH - 1]   <= out[0];
        out[`REGISTER_WIDTH - 2:0] <= out[`REGISTER_WIDTH - 1:1];
      end else begin
        out <= out;
      end
    end
  end

	// always @(posedge clock0) begin
  //   if(reset)begin
  //     loopback_error <= 1'b0;
  //   end else begin
  //   	if(loopback_en == 1)begin // loopback_enable
  //   	  if (counter_in == out)
	// 				loopback_error = 1'b0;
	// 			else
	// 				loopback_error = 1'b1;	
  //   	end
	// 	end
	// end
      
endmodule  