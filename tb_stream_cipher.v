
module tb_stream_cipher();

  // Inputs
  reg clk;
  reg rst;
  reg [4:0] ogtxt;

  // Outputs
  wire [4:0] ciphertxt;
  wire [4:0] plaintxt;

  // Instantiate the stream_cipher
  stream_cipher uut (
    .clk(clk),
    .rst(rst),
    .ogtxt(ogtxt),
    .ciphertxt(ciphertxt),
    .plaintxt(plaintxt)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Reset
  initial begin
    rst = 1;
    #20; // Reset for 20 ns
    rst = 0;
  end

  initial begin
    // Test 1: Encryption
    ogtxt = 5'b10101; // Set original text input
    #30; // Wait for some time
    $display("Test 1: Encryption ");
    $display("Original Text: %b", ogtxt);
    $display("Ciphertext: %b", ciphertxt);
	 $display("Plaintext: %b", plaintxt);

    // Test 2: Decryption
    ogtxt = 5'b11010; // Set original text input
    #30; // Wait for some time
    $display("Test 2: Decryption");
    $display("Original text: %b", ogtxt);
    $display("Decrypted Text (plaintext): %b", plaintxt);
	 $display("Ciphertext: %b", ciphertxt);
	 
    #100;

  end

endmodule

