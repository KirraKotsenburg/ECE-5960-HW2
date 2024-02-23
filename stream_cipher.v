
module stream_cipher(input clk, rst,
	 input [4:0]ogtxt,
	 output wire [4:0]ciphertxt,
	 output wire [4:0]plaintxt);

	wire [4:0]key;

	lfsr LFSR(.clk(clk), .rst(rst), .out(key));
	
	// Encrypt original text
	assign ciphertxt = ogtxt ^ key;
	
	// Decrypt the cipher text to get original plaintext
	assign plaintxt = ciphertxt ^ key;

endmodule
