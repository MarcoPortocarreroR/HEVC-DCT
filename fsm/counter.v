module counter
#(	
	parameter WIDTH = 7
)
(
	input wire clk,rst,load,
	input wire [WIDTH-1:0] n,
	output reg [WIDTH-1:0] count,
	output reg last
);

	always@(posedge clk)
	begin
		if(rst || count>= n)
			count <= 0;
		else if (load)
			count <= count + 1;
	end
	
	always @(*)
	begin
		if (count == n-1)
			last = 1'b1;
		else
			last = 1'b0;
	end

endmodule 