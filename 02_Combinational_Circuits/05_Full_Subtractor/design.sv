// Module for Full Subtractor.
module full_subtractor(
  input wire a,
  input wire b,
  input wire cin,
  output wire difference,
  output wire borrow
);
  assign difference = a ^ b ^ cin;
  assign borrow = (~a & b) | (~a & cin) | (b & cin);
endmodule
