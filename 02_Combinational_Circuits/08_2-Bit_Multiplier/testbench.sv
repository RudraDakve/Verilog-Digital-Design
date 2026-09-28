// Testbench for 2-Bit x 2-Bit Multiplier.
module tb_multiplier;
  reg [1:0] a2;
  reg [1:0] b2;
  wire [3:0] p2;
  
  // Instantiate Unit Under Test (UUT).
  multiplier_2bit uut (
    .a(a2),
    .b(b2),
    .y(p2)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_multiplier);
    
    $display("--- 2-bit Multiplier Test ---");
    $display("Time | A2  B2 | P2 (Bin) | P2 (Dec)");
    $display("-----------------------------------");
    
    a2 = 2'd0; b2 = 2'd0; #10;
    $display("%4t | %d  %d |  %b  |  %d  |", $time, a2, b2, p2, p2);
    
    a2 = 2'd2; b2 = 2'd3; #10;
    $display("%4t | %d  %d |  %b  |  %d  |", $time, a2, b2, p2, p2);
    
    a2 = 2'd3; b2 = 2'd3; #10;
    $display("%4t | %d  %d |  %b  |  %d  |", $time, a2, b2, p2, p2);
    
    $finish;
  end
endmodule