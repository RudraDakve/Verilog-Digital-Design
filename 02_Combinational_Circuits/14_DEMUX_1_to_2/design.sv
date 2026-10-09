// Module for 1-to-2 DEMUX.
module demux1to2(
  input wire in,
  input wire sel,
  output reg [1:0] out
);
  
  always @(*) begin
    out = 2'b00; // Default output as 0.
    
    case (sel)
      1'b0: out[0] = in;
      1'b1: out[1] = in;
      default: out = 2'b00;
    endcase
  end
endmodule
