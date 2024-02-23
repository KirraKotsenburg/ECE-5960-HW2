module tb_MM;

  // Inputs
  reg [2:0] A;
  reg [2:0] B;

  // Outputs
  wire [2:0] G;

  // Instantiate the MM module
  MM uut (
    .A(A),
    .B(B),
    .G(G)
  );


  initial begin
    // Test 1: A = 3'b000, B = 3'b000
    A = 3'b000;
    B = 3'b000; // Expected G = 3'b000
    #10;
    $display("Test 1: A = %b, B = %b, G = %b (Expected: 3'b000)", A, B, G);

    // Test 2: A = 3'b001, B = 3'b010
    A = 3'b001;
    B = 3'b010; // Expected G = 3'b001
    #10;
    $display("Test 2: A = %b, B = %b, G = %b (Expected: 3'b001)", A, B, G);

    // Test 3: A = 3'b011, B = 3'b100
    A = 3'b011;
    B = 3'b100; // Expected G = 3'b010
    #10;
    $display("Test 3: A = %b, B = %b, G = %b (Expected: 3'b010)", A, B, G);

    // Test 4: A = 3'b101, B = 3'b110
    A = 3'b101;
    B = 3'b110; // Expected G = 3'b011
    #10;
    $display("Test 4: A = %b, B = %b, G = %b (Expected: 3'b011)", A, B, G);

    // Test 5: A = 3'b010, B = 3'b001
    A = 3'b010;
    B = 3'b001; // Expected G = 3'b010
    #10;
    $display("Test 5: A = %b, B = %b, G = %b (Expected: 3'b010)", A, B, G);


  end

endmodule
