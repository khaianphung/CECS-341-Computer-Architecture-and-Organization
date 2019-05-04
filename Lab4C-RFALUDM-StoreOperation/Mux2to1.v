`timescale 1ns / 1ps
module Mux2to1( A, B, Sel, Output);
	input [63:0] A, B;
	input Sel;
	output reg [63:0] Output;
	
	always @(A,B,Sel) begin
		if (Sel==0)
			Output=A;
		else
			Output=B;
	
	end


endmodule
