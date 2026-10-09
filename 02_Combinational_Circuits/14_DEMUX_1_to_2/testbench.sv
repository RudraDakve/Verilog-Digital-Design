// Testbench for 1-to-2 DEMUX.
module tb_demux1to2;
  reg in;
  reg sel;
  wire [1:0] out;
  
  // Instantiate Unit Under Test (UUT).
  demux1to2 uut (
    .in(in),
    .sel(sel),
    .out(out)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_demux1to2);
    
    $display("Time\t in\t sel\t out[1:0]");
    $display("--------------------------------");
    
    // Input = Low.
    in = 1'b0; sel = 1'b0; #10;
    $display("%0dt\t %b\t %b\t %b", $time, in, sel, out);
    
    in = 1'b0; sel = 1'b1; #10;
    $display("%0dt\t %b\t %b\t %b", $time, in, sel, out);
    
    // Input = High.
    in = 1'b1; sel = 1'b0; #10;
    $display("%0dt\t %b\t %b\t %b", $time, in, sel, out);
    
    in = 1'b1; sel = 1'b1; #10;
    $display("%0dt\t %b\t %b\t %b", $time, in, sel, out);
    
    $finish;
  end
endmodule
