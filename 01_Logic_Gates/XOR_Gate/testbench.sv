// Testbench for 2-Input XOR Gate.
module tb_XOR_Gate;
  reg a;
  reg b;
  wire y;
  
  // Instantiate Unit Under Test (UUT).
  XOR_Gate uut (.a(a), .b(b), .y(y));
  
  initial begin
      $dumpfile("dumpfile.vcd");
      $dumpvars(0, tb_XOR_Gate);
      
      // Test all possible combination of inputs.
      a = 0; b = 0; #10;
      a = 0; b = 1; #10;
      a = 1; b = 0; #10;
      a = 1; b = 1; #10;
      
      $finish;
    end
endmodule
