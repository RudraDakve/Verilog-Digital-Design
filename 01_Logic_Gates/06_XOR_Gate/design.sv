// 2-Input XOR Gate.
module XOR_Gate (input wire a, input wire b, output wire y);
  assign y = ((~a) & b) + (a & (~b));
endmodule
