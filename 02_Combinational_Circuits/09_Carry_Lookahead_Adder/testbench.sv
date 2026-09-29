// Testbench for Carry Lookahead Adder.
module tb_cla_4bit;
  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  reg [3:0] sum;
  reg cout;
  
  cla_4bit uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_cla_4bit);
    
    $display("Time | A | B | Cin | Sum | Cout");
    $display("-------------------------------");
    
    // Case 1: 0 + 0 + 0= 0 (Minimum Possible value).
    a = 4'b0000; b = 4'b0000; cin = 0; #10;
    $display("%4t | %b | %b | %b | %b | %b", $time, a, b, cin, sum, cout);
    
    // Case 2: 2 + 3 + 0 = 5 (Without Cin).
    a = 4'b0010; b = 4'b0011; cin = 0; #10;
    $display("%4t | %b | %b | %b | %b | %b", $time, a, b, cin, sum, cout);
    
    // Case 3: 4 + 2 + 1 = 7 (With Cin).
    a = 4'b0100; b = 4'b0010; cin = 1; #10;
    $display("%4t | %b | %b | %b | %b | %b", $time, a, b, cin, sum, cout);
    
    // Case 4; 15 + 0 + 1 = 16.
    a = 4'b1111; b = 4'b0000; cin = 1; #10;
    $display("%4t | %b | %b | %b | %b | %b", $time, a, b, cin, sum, cout);
    
    // Case 5; 15 + 15 + 1 = 31 (Maximum Possible value).
    a = 4'b1111; b = 4'b1111; cin = 1; #10;
    $display("%4t | %b | %b | %b | %b | %b", $time, a, b, cin, sum, cout);
    
    $finish;
  end
endmodule