// Testbench for 4 : 2 Priority Encoder.
module tb_priority_encoder_4to2;
  reg [3:0] in;
  wire [1:0] out;
  
  // Instantiate Unit Under Test (UUT).
  priority_encoder_4to2 uut (
    .in(in),
    .out(out)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_priority_encoder_4to2);
    
    // Test all possible combination of Inputs.
    in = 4'b0000; #10; // No High Bits.
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0100; #10;
    in = 4'b1000; #10;
    in = 4'b0110; #10; // Priority Test.
    
    $finish;
  end
endmodule
