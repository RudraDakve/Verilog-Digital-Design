// TestBench for 2 : 1 MUX (Multiplexer).
module tb_mux2to1;
  reg a ;
  reg b;
  reg sel;
  wire y;
  
  // Instantiate Unit Under Test (UUT).
  mux2to1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux2to1);
    $monitor("Time = %0t | sel = %b | a = %b | b = %b -> y = %b", $time, sel, a, b, y);
    
    // Case 1: Select Line = 0.
    a = 0; b = 0; sel = 0; #10;
    a = 0; b = 1; sel = 0; #10;
    a = 1; b = 0; sel = 0; #10;
    a = 1; b = 1; sel = 0; #10;
    
    // Case 2: Select Line = 1.
    a = 0; b = 0; sel = 1; #10;
    a = 0; b = 1; sel = 1; #10;
    a = 1; b = 0; sel = 1; #10;
    a = 1; b = 1; sel = 1; #10;
    
    $finish;
  end
endmodule
