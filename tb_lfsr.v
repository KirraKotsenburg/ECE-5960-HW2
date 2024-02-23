
module tb_lfsr();

    // Inputs
    reg clk;
    reg rst;

    // Output
    wire [4:0] out;

    // Instantiate the LFSR module
    lfsr uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset pulse generation
    initial begin
        rst = 1;
        #10;
        rst = 0;
        #100;
    end

  always @(posedge clk) begin
    $display("Output: %b", out);
	 end
endmodule
