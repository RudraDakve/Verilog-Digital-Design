// Testbench for 4 : 2 Encoder.
module tb_encoder4to2;
  reg [3:0] d;
  wire [1:0] y;
  
  // Instantiate Unit Under Test (UUt).
  encoder4to2 uut (
    .d(d),
    .y(y)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_encoder4to2);
    
    // Test all possible combination of Inputs.
    d = 4'b0001; #10;
    d = 4'b0010; #10;
    d = 4'b0100; #10;
    d = 4'b1000; #10;
    
    $finish;
  end
endmodule
