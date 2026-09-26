// Testbench for 4-Bit Ripple Borrow Subtractor.
module tb_ripple_borrow_subtractor;
  reg [3:0] a;
  reg [3:0] b;
  reg bin;
  wire [3:0] difference;
  wire bout;
  
  // Instantiate Unit Under Test (UUT).
  ripple_borrow_subtractor uut (
    .a(a),
    .b(b),
    .bin(bin),
    .diff(difference),
    .bout(bout)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_ripple_borrow_subtractor);
    
    $display("Time | A  B  Bin | Diff Bout");
    $display("----------------------------");
    $monitor("%4t  | %b %b %b  | %b   %b", $time, a, b, bin, difference, bout);
    
    // Test all different combination of inputs.
    // Case 1: Zero Subtraction (0 - 0 = 0).
    a = 4'd0; b = 4'd0; bin = 1'b0; #10;
    
    // Case 2: Without Borrow (12 - 5 = 7).
    a = 4'd12; b = 4'd5; bin = 1'b0; #10;
    
    // Case 3: With Borrow (15 - 9 - 1 = 8).
    a = 4'd15; b = 4'd9; bin = 1'b1; #10;
    
    // Case 4: Equal Numbers(9 - 9 = 0).
    a = 4'd9; b = 4'd9; bin = 1'b0; #10;
    
    // Case 5: Negative Number(5 - 10 = -5 => 1011 in 2's complement).
    a = 4'd5; b = 4'd10; bin = 1'b0; #10;
    
    // Case 6: Maximum value with borrow-in(15 - 15 - 1 = -1 => 1111 in 2's complement).
    a = 4'd15; b = 4'd15; bin = 1'b1; #10;
    
    $finish;
  end
endmodule
