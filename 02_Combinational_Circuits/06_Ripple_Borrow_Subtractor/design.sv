// Module for Full Subtractor.
module full_subtractor (
  input wire a,
  input wire b,
  input wire cin,
  output wire difference,
  output wire borrow
);
  assign difference = a ^ b ^ cin;
  assign borrow = (~a & b) | (~a & cin) | (b & cin);
endmodule

// Module for 4-Bit Ripple Borrow Subtractor.
module ripple_borrow_subtractor (
  input wire [3:0] a,
  input wire [3:0] b,
  input wire bin,
  output wire [3:0] diff,
  output wire bout
);
  
  // Intermediate wires to ripple the borrow from stage 0 to stage 3.
  wire b1, b2, b3;
  
  // Stage 0: Least Significant Bit (LSB).
  full_subtractor fs0 (.a(a[0]), .b(b[0]), .cin(bin), .difference(diff[0]), .borrow(b1));
  
  // Stage 1:
  full_subtractor fs1 (.a(a[1]), .b(b[1]), .cin(b1), .difference(diff[1]), .borrow(b1));
  
  // Stage 2:
  full_subtractor fs2 (.a(a[2]), .b(b[2]), .cin(b2), .difference(diff[2]), .borrow(b2));
  
  // Stage 3: Most Significant Bit (MSB).
  full_subtractor fs3 (.a(a[3]), .b(b[3]), .cin(b3), .difference(diff[3]), .borrow(b3));
endmodule
