// Testbench for Half Adder.
module tb_half_adder;
  reg a;
  reg b;
  wire sum;
  wire carry;
  
  // Instantiate Unit Under Test (UUT).
  half_adder uut (.a(a), .b(b), .sum(sum), .carry(carry));
  
  initial begin
    // Setting up EPWave for displaying waveforms.
    $dumpfile("dumpfile.vcd");
    $dumpvars(0, tb_half_adder);

    // Display for the output.
    $display("Time | A B | Sum Carry");
    $display("----------------------");
    $monitor("%4t | %b %b | %b  %b", $time, a, b, sum, carry);
    
    // Test all possible combinaiton of inputs.
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    
    $finish;
  end
endmodule
