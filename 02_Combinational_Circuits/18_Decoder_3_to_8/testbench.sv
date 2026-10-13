// Testbench for 3-to-8 Decoder.
module tb_decoder3to8;
  reg [2:0] a;
  wire [7:0] y;
  
  // Instantiate Unit Under Test (UUT).
  decoder3to8 uut (
    .a(a),
    .y(y)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_decoder3to8);
    
    // Test all possible combination of Inputs.
    a = 3'b000; #10;
    a = 3'b001; #10;
    a = 3'b010; #10;
    a = 3'b011; #10;
    a = 3'b100; #10;
    a = 3'b101; #10;
    a = 3'b110; #10;
    a = 3'b111; #10;
    
    $finish;
  end
endmodule
