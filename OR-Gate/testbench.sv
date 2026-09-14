// Testbench for 2-Input OR Gate.
module tb_OR_Gate;
  reg a;
  reg b;
  wire y;
  
  // Instantiate Unit Under Test (UUT).
  OR_Gate uut (.a(a), .b(b), .y(y));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_OR_Gate);
    
    // Test all inout combination.
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    
    $finish;
  end
endmodule
