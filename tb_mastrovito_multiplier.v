module tb_mastrovito_multiplier;
  
  // Inputs
  reg [2:0] A;
  reg [2:0] B;
  
  // Outputs
  wire [2:0] Z;
  
  // Instantiate the mastrovito_multiplier
  mastrovito_multiplier uut (
    .A(A),
    .B(B),
    .Z(Z)
  );
  
  // Clock set up
  reg clk;
  always #5 clk = ~clk;
  
  // Test stimulus
  initial begin
    // Initialize inputs
    A = 3'b000;
    B = 3'b000;
    
    // Apply inputs
    #10 A = 3'b001; B = 3'b001;
	 #20;
	 $display(" Test 1: A = %b, B = %b, Z = %b", A, B, Z);
    #10 A = 3'b010; B = 3'b011;
	 #20;
	 $display(" Test 2: A = %b, B = %b, Z = %b", A, B, Z);
    #10 A = 3'b101; B = 3'b110;
	 #20;
	 $display(" Test 3: A = %b, B = %b, Z = %b", A, B, Z);
    #10 A = 3'b111; B = 3'b000;
	 #20;
	 $display(" Test 4: A = %b, B = %b, Z = %b", A, B, Z);
	 #10 A = 3'b100; B = 3'b110;
	 #20;
	 $display(" Test 5: A = %b, B = %b, Z = %b", A, B, Z);
	 #10 A = 3'b110; B = 3'b010;
	 #20;
	 $display(" Test 6: A = %b, B = %b, Z = %b", A, B, Z);
	 #10 A = 3'b011; B = 3'b111;
	 #20;
	 $display(" Test 7: A = %b, B = %b, Z = %b", A, B, Z);
	 #10 A = 3'b110; B = 3'b001;
	 #20;
	 $display(" Test 8: A = %b, B = %b, Z = %b", A, B, Z);
	 
    // Wait for a few clock cycles
    #10;
    
    // Display results
  
    
  end
  
  
endmodule
