// Testbench for 4x4 Multiplier.
module tb_multiplier_4x4;
  reg [3:0] a;
  reg [3:0] b;
  wire [7:0] product;
  
  // Instantiate Unit Under Test (UUT).
  multiplier_4x4 uut (
    .a(a),
    .b(b),
    .product(product)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_multiplier_4x4);
    
    // Case 1 : Basic Multiplication.
    a = 4'd3; b = 4'd5; #10;
    
    // Case 2 : Max Multiplication (15 x 15 = 225).
    a = 4'd15; b = 4'd15; #10;
    
    // Case 3 : Zero Multiplication.
    a = 4'd9; b = 4'd0; #10;
    
    // Case 4 : Random Multiplication.
    a = 4'd4; b = 4'd1; #10;
    a = 4'd1; b = 4'd1; #10;
    a = 4'd7; b = 4'd7; #10;
    
    $finish;
  end
endmodule
