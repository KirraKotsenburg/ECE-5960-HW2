module mastrovito_multiplier(
    input [2:0] A,
    input [2:0] B,
    output reg [2:0] Z
);

// Temporary reg
reg [5:0] S;

always @(*) begin
	// Multiply A and B
	S[0] = A[0] & B[0];
	S[1] = (A[1] & B[0]) ^ (A[0] & B[1]);
	S[2] = (A[2] & B[0]) ^ (A[1] & B[1]) ^ (A[0] & B[2]);
	S[3] = (A[2] & B[1]) ^ (A[1] & B[2]);
	S[4] = A[2] & B[2];
	
	//Modulo operation With P(x) = x^3 + x^2 + 1
	Z[0] = S[0] ^ S[3] ^ S[4];
	Z[1] = S[1] ^ S[4];
	Z[2] = S[2] ^ S[3] ^ S[4];
	
end

endmodule

