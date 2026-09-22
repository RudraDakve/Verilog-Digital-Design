// Testbench for Full Adder.
module tb_full_adder;
  reg a;
  reg b;
  reg cin;
  wire sum;
  wire cout;
  
  // Instantiate Unit Under Test (UUT).
  full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars(0, tb_full_adder);
    
    $display("Time | A B Cin | Sum Carry");
    $display("--------------------------");
    $monitor("%4t | %b %b %b | %b   %b", $time, a, b, cin, sum, cout);
    
    // Test all possible combination of inputs.
    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;
    
    $finish;
  end
endmodule
