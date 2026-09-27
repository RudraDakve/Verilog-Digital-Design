// Testbench for 4-Bit Adder Subtractor.
module tb_adder_subtractor_4bit;
  reg [3:0] a;
  reg [3:0] b;
  reg mode;
  wire [3:0] result;
  wire carry_out;
  wire overflow;
  
  // Instantiate Unit Under Test (UUT).
  adder_subtractor_4bit uut (
    .a(a),
    .b(b),
    .mode(mode),
    .result(result),
    .carry_out(carry_out),
    .overflow(overflow)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_adder_subtractor_4bit);
    
    $display("Time | Mode | A B | Result Carry Overflow | Operation");
    $display("-----------------------------------------------------");
    $monitor("%4t | %b | %d (%b) %d (%b) | %d (%b) %b   %b   | %s", $time, mode, a, a, b, b, result, result, carry_out, overflow, (mode == 0) ? "ADD" : "SUB");
    
    // Some input combianation for Addition (mode = 0).
    mode = 1'b0;
    a = 4'd5; b = 4'd3; #10;
    a = 4'd7; b = 4'd2; #10;
    
    // Some input combination for Suntraction (mode = 1).
    mode = 1'b1;
    a = 4'd10; b = 4'd4; #10;
    a = 4'd4; b = 4'd6; #10;
    a = 4'd8; b = 4'd8; #10;
    
    $finish;
  end
endmodule