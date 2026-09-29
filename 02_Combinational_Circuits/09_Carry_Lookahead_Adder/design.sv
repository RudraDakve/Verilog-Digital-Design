// Module for Carry Lookahead Adder (CLA).
module cla_4bit (
  input wire [3:0] a,
  input wire [3:0] b,
  input wire cin,
  output wire [3:0] sum,
  output wire cout
);
  wire [3:0] P, G;
  wire [4:0] C;
  
  assign C[0] = cin;
  
  assign G = a & b; // Carry Generator.
  assign P = a ^ b; // Carry Propagator.
  
  // Carry Lookahead Logic.
  assign C[1] = G[0] | (P[0] & C[0]);
  assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
  assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
  assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C[0]);
  
  // Sum Logic.
  assign sum = P ^ C[3:0];
  assign cout = C[4];
  
endmodule