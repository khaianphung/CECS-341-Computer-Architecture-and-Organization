`timescale 1ns / 1ps
module SignedExtender(SEin, SEout);

	input [31:0] SEin;
	output reg [63:0] SEout;
	always @(SEin) begin
	if (SEin[31:24]==180)
		SEout= {{45{SEin[23]}},SEin[23:5]};
	else
		SEout= {{55{SEin[20]}},SEin[20:12]};
	end
endmodule
