// Testbench for 4-Bit Ripple Carry Adder.
module tb_ripple_carry_adder;
  reg [3:0]  a;
  reg [3:0]  b;
  reg        cin;
  wire [3:0] sum;
  wire       cout;
  
  // Instantiate Unit Under Test (uut).
  ripple_carry_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_ripple_carry_adder);
    
    $display("Time | Cin | A   B | Sum Cout | Decimal Verification");
    $display("--------------------------------------------------");
    $monitor("%4t  | %b  | %b %b | %b   %b | %0d + %0d + %0d = %0d", $time, cin, a, b, sum, cout, a, b, cin, {cout, sum});
             
             // Test 1: 0 + 0 + 0 = 0 (Minimum 4-Bit addition).
             a = 4'b0000; b = 4'b0000; cin = 1'b0; #10;
             
             // Test 2: 2 + 3 + 0 = 5 (No Carry).
             a = 4'b0010; b = 4'b0011; cin = 1'b0; #10;
             
             // Test 3: 5 + 2 + 1 = 8 (With Carry).
             a = 4'b0101; b = 4'b0010; cin = 1'b1; #10;
             
             // Test 4: 15 + 1 + 0 = 16 (Cout Generation).
             a = 4'b1111; b = 4'b0001; cin = 1'b0; #10;
             
             // Test 5: 15 + 15 + 1 = 31 (Maximum 4-Bit addition).
             a = 4'b1111; b = 4'b1111; cin = 1'b1; #10;
             
          $finish;
        end
endmodule
