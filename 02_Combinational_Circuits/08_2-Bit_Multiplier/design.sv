// Module for 2-Bit Multiplier.
module half_adder (
  input wire a,
  input wire b,
  output wire sum,
  output wire carry
);
  assign sum = a ^ b;
  assign carry = a & b;
endmodule

// Module for 2-Bit x 2-Bit Multiplier.
module multiplier_2bit (
  input wire [1:0] a,
  input wire [1:0] b,
  output wire [3:0] y
);
  
  // Partial Products.
  wire m0 =a[0] & b[0];
  wire m1 =a[1] & b[0];
  wire m2 =a[0] & b[1];
  wire m3 =a[1] & b[1];
  
  wire c1;
  
  // Bit 0 outpu(LSB).
  assign y[0] = m0;
  
  // First HA stage for Bit 1.
  half_adder ha1 (
    .a(m1),
    .b(m2),
    .sum(y[1]),
    .carry(c1)
  );
  
  // Second HA stage for Bit 2 and Bit 3 (MSB).
  half_adder ha2 (
    .a(m3),
    .b(c1),
    .sum(y[2]),
    .carry(y[3])
  );
    
endmodule