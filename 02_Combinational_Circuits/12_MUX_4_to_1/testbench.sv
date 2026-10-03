// Testbench for 4:1 MUX.
module tb_mux4to1;
  reg [3:0] in;
  reg [1:0] sel;
  wire out;
  
  // Instantiate Unit Under Test (UUT).
  mux4to1 uut (
    .in(in),
    .sel(sel),
    .out(out)
  );
  
  integer i;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux4to1);
    
    // Display Monitor Output.
    $monitor("Time = %0t | sel = %b | in = %b -> out = %b", $time, sel, in, out);
    
    // Assign Test pattern to input bus: in[3] = 1, in[2] = 0, in[1] = 1, in[0] = 0.
    in = 4'b1010;
    
    // Iterate through all select line combinations.
    for(i = 0; i < 4; i++)
      begin
        sel = i[1:0];
        #10;
      end
    
    // Secondary Test Pattern.
    in = 4'b1100;
    for(i = 0; i < 4; i++)
      begin
        sel = i[1:0];
        #10;
        
      end
    $finish;
  end
endmodule
