// Module for 1-to-4 DEMUX.
module demux1to4 (
  input wire in,
  input wire [1:0] sel,
  output reg [3:0] out
);
  always @(*) begin
    // Default value to prevent latches.
    out = 4'b0000;
    
    case (sel)
    2'b00: out[0] = in;
    2'b01: out[1] = in;
    2'b10: out[2] = in;
    2'b11: out[3] = in;
    default: out = 1'b0;
    endcase
  end
endmodule
