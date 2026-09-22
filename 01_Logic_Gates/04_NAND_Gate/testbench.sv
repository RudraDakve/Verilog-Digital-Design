// Testbench for 2-Input NAND Gate.
module tb_NAND_Gate;
  reg a;
  reg b;
  wire y;
  
  // Instantiate Unit Under Test (UUT).
  NAND_Gate uut (.a(a), .b(b), .y(y));
  
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars(0, tb_NAND_Gate);
    
    // Test all possible combinations of NAND Gate.
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    
    $finish;
  end
endmodule
