// Testbench for Tri-State Buffer.
module tb_tristate_buffer;
  reg in;
  reg enable;
  wire out;
  
  // Instantiate Unit Under Test (UUT).
  tristate_buffer uut (.in(in), .enable(enable), .out(out));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_tristate_buffer);
    
    $monitor("Time=%0t | Enable=%b | In=%b | Out=%b", $time, enable, in, out);
    
    // Test case 1: Disabled (High Impedance Output).
    enable = 0; in = 0; #10;
    enable = 0; in = 1; #10;
    
    // Test Case 2: Enabled (Data Passes Through).
    enable = 1; in = 0; #10;
    enable = 1; in = 1; #10;
    
    $finish;
  end
endmodule