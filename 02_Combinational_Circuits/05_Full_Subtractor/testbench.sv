// Testbench for Full Subtractor.
module tb_full_subtractor;
  reg a;
  reg b;
  reg cin;
  wire difference;
  wire borrow;
  
  // Instantiate Unit Under Test (UUT).
  full_subtractor uut (
    .a(a),
    .b(b),
    .cin(cin),
    .difference(difference),
    .borrow(borrow)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_full_subtractor);
    $display("Time | A   B  Cin | Difference Borrow  ");
    $display("---------------------------------------");
    $monitor("%4t  | %b  %b  %b   |   %b        %b   ", $time, a, b, cin, difference, borrow);
    
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
