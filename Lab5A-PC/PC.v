`timescale 1ns / 1ps
module PC( PCIn, clock, PCOut, AdderOut);
	input [63:0] PCIn;
	input clock;
	output [63:0] 	AdderOut;
	output reg[63:0] PCOut;
	
	always @(posedge clock) begin
		PCOut=PCIn;	
	end
	assign AdderOut=PCOut+4;
		
	
	

endmodule
