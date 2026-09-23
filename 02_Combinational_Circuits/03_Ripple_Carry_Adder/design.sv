// Sub-Module: 1-Bit Full Adder.
module full_adder (
  input wire a,
  input wire b,
  input wire cin,
  output wire sum,
  output wire cout
 );
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

// Top-Module: 4-Bit Ripple Carry Adder via Structural Instantiation.
module ripple_carry_adder (
  input wire [3:0] a,
  input wire [3:0] b,
  input wire cin,
  output wire [3:0] sum,
  output wire cout
);
  
  // Internal carry interconnect wires.
  wire [2:0] c;
  
  // Instantiate FA0 (LSB).
  full_adder fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c[0]));
  
  // Instantiate FA1.
  full_adder fa1 (.a(a[1]), .b(b[1]), .cin(c[0]), .sum(sum[1]), .cout(c[1]));
  
  // Instantiate FA2.
  full_adder fa2 (.a(a[2]), .b(b[2]), .cin(c[1]), .sum(sum[2]), .cout(c[2]));
   
  // Instantiate FA3 (MSB).
  full_adder fa3 (.a(a[3]), .b(b[3]), .cin(c[2]), .sum(sum[3]), .cout(cout));
  
endmodule
