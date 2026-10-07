// Testbench for 8-to-1 MUX.
module tb_mux8to1;
  reg [7:0] in;
  reg [2:0] sel;
  wire out;
  
  // Instantiate Unit Under Test (UUT).
  mux8to1 uut (
    .in(in),
    .sel(sel),
    .out(out)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux8to1);
    
    $display("Time\t sel\t in\t\t out");
    $display("------------------------------------");
    
    in = 8'b10101100;
    
    for(integer i = 0; i < 8; i = i + 1)
      begin
        sel = i;
        #10;
        $display("%0dt\t %b\t %b\t %b", $time, sel, in, out);
      end
    $finish;
  end
endmodule
