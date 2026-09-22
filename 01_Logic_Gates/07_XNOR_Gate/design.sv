// 2-Input XNOR Gate.
module XNOR_Gate (input wire a, input wire b, output wire y);
  assign y = ((~a) & (~b)) + (a & b);
endmodule
