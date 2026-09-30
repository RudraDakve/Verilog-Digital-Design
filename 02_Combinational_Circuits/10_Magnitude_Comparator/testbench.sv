// Testbench for 4-Bit Magnitude Comparator.
module tb_magnitude_comparator_4bit;
  reg [3:0] a;
  reg [3:0] b;
  wire a_gt_b;
  wire a_eq_b;
  wire a_lt_b;
  
  // Instantiate Unit Under Test (UUT).
  magnitude_comparator_4bit uut (
    .a(a),
    .b(b),
    .a_gt_b(a_gt_b),
    .a_eq_b(a_eq_b),
    .a_lt_b(a_lt_b)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_magnitude_comparator_4bit);
    
    $display("A     B    | A > B | A == B | A < B");
    
    // Case 1: A == B.
    a = 4'd10; b = 4'd10; #10;
    $display("%b  %b |   %b   |   %b    |  %b ", a, b, a_gt_b, a_eq_b, a_lt_b);
    
    // Case 2: A > B.
    a = 4'd5; b = 4'd3; #10;
    $display("%b  %b |   %b   |   %b    |  %b ", a, b, a_gt_b, a_eq_b, a_lt_b);
    
    // Case 3: A < B.
    a = 4'd7; b = 4'd14; #10;
    $display("%b  %b |   %b   |   %b    |  %b ", a, b, a_gt_b, a_eq_b, a_lt_b);
    
    $finish;
  end
endmodule
