// Testbench for 1-to-4 DEMUX.
module tb_demux1to4;
  reg in;
  reg [1:0] sel;
  wire [3:0] out;
  
  // Instantiate Unit Under Test (UUT).
  demux1to4 uut (
    .in(in),
    .sel(sel),
    .out(out)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_demux1to4);
    
    // Case 1: Input = 0.
    in = 0; sel = 2'b00; #10;
    in = 0; sel = 2'b01; #10;
    in = 0; sel = 2'b10; #10;
    in = 0; sel = 2'b11; #10;
    
    // Case 2: Input = 1.
    in = 1; sel = 2'b00; #10;
    in = 1; sel = 2'b01; #10;
    in = 1; sel = 2'b10; #10;
    in = 1; sel = 2'b11; #10;
    
    $finish;
  end
endmodule
