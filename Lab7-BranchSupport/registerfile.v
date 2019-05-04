`timescale 1ns / 1ps
module registerfile(Read1, Read2, WriteReg, WriteData, RegWrite, clock, Data1, Data2);
	input [4:0] Read1, Read2, WriteReg;
	input [63:0] WriteData;
	input RegWrite, clock;
	output [63:0] Data1, Data2;
	reg [63:0] RF[0:31];
	
	assign Data1 = RF[Read1];
	assign Data2 = RF[Read2];
	
	always @(posedge clock)
	if (RegWrite==1) RF[WriteReg]<=WriteData;
	
	initial begin
		RF[31]=0;
		RF[0]=0;
	end

endmodule
