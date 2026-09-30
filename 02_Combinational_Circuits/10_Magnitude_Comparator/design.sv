// 4-Bit Magnitude Comparator Design
module magnitude_comparator_4bit (
  input logic [3:0] a,
  input logic [3:0] b,
  output logic a_gt_b, // a > b.
  output logic a_eq_b, // a = b.
  output logic a_lt_b  // a < b.
);
  
  always_comb begin
  a_gt_b = 1'b0;
  a_eq_b = 1'b0;
  a_lt_b = 1'b0;
  
  if (a > b)
    a_gt_b = 1'b1;
  else if (a == b)
    a_eq_b = 1'b1;
  else
    a_lt_b = 1'b1;
  
  end
endmodule
