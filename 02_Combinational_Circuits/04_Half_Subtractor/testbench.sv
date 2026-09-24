// Testbench for Half Subtractor.
module tb_half_subtractor;
  reg a;
  reg b;
  wire difference;
  wire borrow;
  
  // Instantiate Unit Under Test(UUT).
  half_subtractor uut(.a(a), .b(b), .difference(difference), .borrow(borrow));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_half_subtractor);
    
    $display("Time | A   B | Difference Borrow");
    $display("--------------------------------");
    $monitor(" %4t | %b %b | %b         %b", $time, a, b, difference, borrow);
    
    // Test all possible combination of inputs.
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    
    $finish;
  end
endmodule
