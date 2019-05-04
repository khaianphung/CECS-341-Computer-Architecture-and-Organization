`timescale 1ns / 1ps

module RFandALUwithRTypeSupport(Read1, Read2, WriteReg, WriteData, RegWrite, clock, ALUOp, Opcode, Zero, ALU_Result);
	input [4:0] Read1, Read2, WriteReg;
	input RegWrite, clock;
	input [63:0] WriteData;
	input [1:0] ALUOp;
	input [10:0] Opcode;
	output Zero;
	output[63:0] ALU_Result;
	wire [63:0] A, B;

	ALUwithControl Lab2 (.ALUOp(ALUOp), .Opcode(Opcode), .A(A), .B(B), .Zero(Zero), .ALU_Result(ALU_Result));
	registerfile 	Lab3a (.Read1(Read1), .Read2(Read2), .WriteReg(WriteReg), .WriteData(WriteData), .RegWrite(RegWrite), .clock(clock), .Data1(A), .Data2(B));
	
	
endmodule
	