`timescale 1ns / 1ps
module IDEX_PR(in, out, clock);
	input clock;
	input [280:0] in;
	output [280:0] out;
	reg [280:0] RF[0:31];
	reg [4:0] Counter;
	
	initial begin
		Counter=0;
	end
	assign out=RF[Counter-1];
	always @(in) begin
		@(posedge clock)begin
			RF[Counter]=in;
			Counter=Counter+1;
			if (Counter>31)
				Counter=0;
		end
	end		

endmodule
