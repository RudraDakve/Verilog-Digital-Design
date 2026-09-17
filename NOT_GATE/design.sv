// 2-Input NOR Gate.
module NOR_Gate (input wire a, input wire b, output wire y);
  assign y = ~(a | b);
endmodule
