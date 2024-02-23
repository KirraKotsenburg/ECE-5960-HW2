
module montgomery_multiplier(
    input [2:0] A,
    input [2:0] B,
    output [2:0] G
);

  wire [2:0] G1, G2, G3;
  wire [2:0] R;
  
  assign R = 3'b100; // x^3 as mentioned in the book
  
  wire [2:0] const = 3'b001; //As seen with last block in book

  // A*R = G1
  MM MM1(.A(A), .B(R), .G(G1));
  // B*R = G2
  MM MM2(.A(B), .B(R), .G(G2));
  
  // G1*G2 = G3
  MM MM3(.A(G1), .B(G2), .G(G3));
  // G3*1 = A*B (mod P)
  MM MM4(.A(G3), .B(const), .G(G));

endmodule
