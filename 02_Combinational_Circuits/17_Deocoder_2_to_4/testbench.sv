// Testbench for 2 : 4 Decoder.
module tb_decoder2to4;
  reg [1:0] a;
  wire [3:0] y;
  decoder2to4 uut (
    .a(a),
    .y(y)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_decoder2to4);
    
    // Test all possible combination of Inputs.
    a = 2'b00; #10;
    a = 2'b01; #10;
    a = 2'b10; #10;
    a = 2'b11; #10;
    
    $finish;
  end
endmodule
