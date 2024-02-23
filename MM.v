
module MM(
  
  input [2:0] A,
  input [2:0] B,
  output [2:0] G
);

  // Polynomial P(x) = x^3 + x^2 + 1
  parameter [2:0] P = 3'b111;

  // Montgomery Reduction Algorithm
  wire [2:0] G_temp1;
  wire [2:0] G_temp2;
  wire [2:0] G_temp3;

  assign G_temp1 = {(A[2] & B), (A[1] & B), (A[0] & B)};
  assign G_temp2 = {(G_temp1[2] & P), (G_temp1[1] & P), (G_temp1[0] & P)};
  assign G_temp3 = {(G_temp2[2] & 3'b0), (G_temp2[1] & 3'b0), (G_temp2[0] & 3'b0)};

  assign G = G_temp3;

endmodule
