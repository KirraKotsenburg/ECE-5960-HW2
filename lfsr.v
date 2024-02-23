
  module lfsr(input clk, rst, output reg [4:0]out);
		
	always @ (posedge clk, posedge rst)
		if(rst) begin
			out <= 5'b00001; // Seed value
			end
		else begin
			out <= {out[4:0], out[4] ^ out[0]};
			end
		
endmodule

