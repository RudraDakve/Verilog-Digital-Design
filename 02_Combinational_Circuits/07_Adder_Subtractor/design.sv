// Module for 4-Bit Full Adder.
module full_adder (
  input wire a,
  input wire b,
  input wire cin,
  output wire sum,
  output wire cout
);
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

// Module for 4-Bit Adder Subtractor.
module adder_subtractor_4bit (
  input wire [3:0] a,
  input wire [3:0] b,
  input wire mode,
  output wire [3:0] result,
  output wire carry_out,
  output wire overflow
);
  wire [3:0] b_sub;
  wire [4:0] c;
  
  assign c[0] = mode;
  
  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : ADD_SUB_STAGE
      assign b_sub[i] = b[i] ^ mode;
      full_adder fa_inst (
        .a(a[i]),
        .b(b[b_sub[i]]),
        .cin(c[i]),
        .sum(result[i]),
        .cout(c[i + 1])
      );
    end
  endgenerate
  
  assign carry_out = c[4];
  
  assign overflow = c[4] ^ c[3];
endmodule