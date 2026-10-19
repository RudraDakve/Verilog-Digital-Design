// Module for 4x4 Multiplier.
module multiplier_4x4 (
  input reg [3:0] a,
  input reg [3:0] b,
  output wire [7:0] product
);
  
  wire [3:0] p0, p1, p2, p3;
  
  assign p0 = a & {4{b[0]}};
  assign p1 = a & {4{b[1]}};
  assign p2 = a & {4{b[2]}};
  assign p3 = a & {4{b[3]}};
  
  assign product = p0 + (p1 << 1) + (p2 << 2) + (p3 << 3);
  
endmodule
