// Testbench for 2-Input NOR Gate
module tb_NOR_Gate;
    reg  a;
    reg  b;
    wire y;

    // Instantiate Unit Under Test (UUT)
  NOR_Gate uut (.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_NOR_Gate);

        // Test all combination of Input.
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
