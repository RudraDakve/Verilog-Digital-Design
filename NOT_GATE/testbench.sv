// Testbench for 2_Input NOR Gate.
module tb_NOR_Gate;
  reg a;
  reg b;
  wire y;

  // Instantiate Unit Under Test (UUT).
  NOR_Gate uut (.a(a), .b(b), .y(y));

  intial begin
    $dumpfile("dumpfile.vcd");
    $dumpfile(0, tb_NOR_Gate);

    // Test all possible combination of inputs.
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end
endmodule
