//-------------------------------------------------------
//  Functionality: Detects an overlapping sequence of "110010"
//  Author:        Azfar
//-------------------------------------------------------
// `include "../clb_defines.v"


module sequence_detector_moore(
    input wire clock0, 
    input wire rst, 
    input wire in, 
    output wire detect);

parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5, S6 = 6;

reg [2:0] state;
reg [2:0] next_state;

assign detect = (state === S6);


always @(posedge clock0) begin
    if(rst)begin
        state <= S0;
    end else begin
        state <= next_state;
    end
end
// initial begin
//     $monitor("state = %d",state);    
// end


always @(state, in) begin
    case (state)
        S0: begin
            if (in) begin
                next_state = S1;
            end else begin
                next_state = S0;
            end
        end
        S1: begin
            if (in) begin
                next_state = S2;
            end else begin
                next_state = S0;
            end
        end
        S2: begin
            if (in) begin
                next_state = S2;
            end else begin
                next_state = S3;
            end
        end
        S3: begin
            if (in) begin
                next_state = S1;
            end else begin
                next_state = S4;
            end
        end
        S4: begin
            if (in) begin
                next_state = S5;
            end else begin
                next_state = S0;
            end
        end
        S5: begin   
            if (in) begin
                next_state = S2;
            end else begin
                next_state = S6;
            end
        end
        S6: begin
            if(in) begin
                next_state = S1;
            end else begin
                next_state = S0;
            end
        end
        default: begin
            next_state = S0;
        end

    endcase
end

endmodule
