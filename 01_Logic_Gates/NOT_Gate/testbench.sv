// Testbench for NOT Gate.
module tb_NOT_Gate;
    reg  a;
    wire y;

    // Instantiate Unit Under Test (UUT)
  NOT_Gate uut (.a(a), .y(y));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_NOT_Gate);

        // Test all possible input combination.
        a = 0; #10;
        a = 1; #10;

        $finish;
    end
endmodule
