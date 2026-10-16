// Module for 4 : 2 Priority Encoder.
module priority_encoder_4to2 (
  input reg [3:0] in,
  output reg [1:0] out
);
  
  always_comb begin
    // Default assignment.
    out = 2'b00;
    
    // Highest Bit has Highest Priority.
    if (in[3]) begin
      out = 2'b11;
    end else if (in[2]) begin
      out = 2'b10;
    end else if (in[1]) begin
      out = 2'b01;
    end else if (in[0]) begin
      out = 2'b00;
    end
  end
endmodule
