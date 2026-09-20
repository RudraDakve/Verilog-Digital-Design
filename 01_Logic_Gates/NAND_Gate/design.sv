// 2-Input NAND Gate.
module NAND_Gate (input wire a, input wire b, output wire y);
  assign y = ~(a & b);
endmodule
