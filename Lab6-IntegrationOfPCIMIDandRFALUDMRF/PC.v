`timescale 1ns / 1ps
module PC( PCIn, clock, PCOut, AdderOut);
	input [63:0] PCIn;
	input clock;
	output [63:0] 	AdderOut;
	output [63:0] PCOut;
	
	assign PCOut=PCIn;
	//always @(posedge clock) begin
	assign AdderOut=PCOut+4;
	//end
		
		
	
	

endmodule
