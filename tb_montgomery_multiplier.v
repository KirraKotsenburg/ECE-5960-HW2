module tb_montgomery_multiplier;

  // Inputs
  reg [2:0] A;
  reg [2:0] B;

  // Outputs
  wire [2:0] G;

  // Instantiate the montgomery_multiplier module
  MM uut (
    .A(A),
    .B(B),
    .G(G)
  );

  // Clock generation
  reg clk;
  always #5 clk = ~clk;

  initial begin
    clk = 0;

    // Test 1: A = 3'b000, B = 3'b000
    #30;
    A = 3'b000;
    B = 3'b000; // Expected G = 3'b000
    #30;
    $display("Test 1: A = %b, B = %b, G = %b (Expected: 3'b000)", A, B, G);

    // Test 2: A = 3'b001, B = 3'b010
    #30;
    A = 3'b001;
    B = 3'b010; // Expected G = 3'b001
    #30;
    $display("Test 2: A = %b, B = %b, G = %b (Expected: 3'b001)", A, B, G);

    // Test 3: A = 3'b011, B = 3'b100
    #30;
    A = 3'b011;
    B = 3'b100; // Expected G = 3'b010
    #30;
    $display("Test 3: A = %b, B = %b, G = %b (Expected: 3'b010)", A, B, G);

    // Test 4: A = 3'b101, B = 3'b110
    #30;
    A = 3'b101;
    B = 3'b110; // Expected G = 3'b011
    #30;
    $display("Test 4: A = %b, B = %b, G = %b (Expected: 3'b011)", A, B, G);

    // Test 5: A = 3'b010, B = 3'b001
    #30;
    A = 3'b010;
    B = 3'b001; // Expected G = 3'b010
    #30;
    $display("Test 5: A = %b, B = %b, G = %b (Expected: 3'b010)", A, B, G);

    // Test 6: A = 3'b110, B = 3'b101
    #30;
    A = 3'b110;
    B = 3'b101; // Expected G = 3'b011
    #30;
    $display("Test 6: A = %b, B = %b, G = %b (Expected: 3'b011)", A, B, G);

    // Test 7: A = 3'b111, B = 3'b011
    #30;
    A = 3'b111;
    B = 3'b011; // Expected G = 3'b000
    #30;
    $display("Test 7: A = %b, B = %b, G = %b (Expected: 3'b000)", A, B, G);

    // Test 8: A = 3'b001, B = 3'b111
    #30;
    A = 3'b001;
    B = 3'b111; // Expected G = 3'b001
    #30;
    $display("Test 8: A = %b, B = %b, G = %b (Expected: 3'b001)", A, B, G);

    // Test 9: A = 3'b100, B = 3'b010
    #30;
    A = 3'b100;
    B = 3'b010; // Expected G = 3'b011
    #30;
    $display("Test 9: A = %b, B = %b, G = %b (Expected: 3'b011)", A, B, G);

    // Test 10: A = 3'b010, B = 3'b100
    #30;
    A = 3'b010;
    B = 3'b100; // Expected G = 3'b010
    #30;
    $display("Test 10: A = %b, B = %b, G = %b (Expected: 3'b010)", A, B, G);

  end

endmodule
