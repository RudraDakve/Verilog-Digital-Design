// Testbench for 1 : 8 DEMUX.
module tb_demux1to8;
  reg in;
  reg [2:0] sel;
  wire [7:0] out;
  
  // Instantiate Unit Under Test (UUT).
  demux1to8 uut (
    .in(in),
    .sel(sel),
    .out(out)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_demux1to8);
    
    // Case 1: Input = 0.
    in = 0; sel = 3'b000; #10;
    in = 0; sel = 3'b001; #10;
    in = 0; sel = 3'b010; #10;
    in = 0; sel = 3'b011; #10;
    in = 0; sel = 3'b100; #10;
    in = 0; sel = 3'b101; #10;
    in = 0; sel = 3'b110; #10;
    in = 0; sel = 3'b111; #10;
    
    // Case 1: Input = 1.
    in = 1; sel = 3'b000; #10;
    in = 1; sel = 3'b001; #10;
    in = 1; sel = 3'b010; #10;
    in = 1; sel = 3'b011; #10;
    in = 1; sel = 3'b100; #10;
    in = 1; sel = 3'b101; #10;
    in = 1; sel = 3'b110; #10;
    in = 1; sel = 3'b111; #10;
    
    $finish;
  end
endmodule
