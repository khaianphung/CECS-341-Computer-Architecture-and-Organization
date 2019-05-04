`timescale 1ns / 1ps
module ALUwithControl(ALUOp,Opcode, A, B, Zero, ALU_Result );
	input 	[1:0] 	ALUOp;
	input 	[10:0]	Opcode;
	input 	[63:0] 	A, B;
	output 	[63:0] 	ALU_Result;
	output 				Zero;
	wire 		[3:0]		ALU_Operation;
	
	ALUControl 	Lab2b(.ALUOp(ALUOp), .Opcode(Opcode), .ALU_Operation(ALU_Operation));
	LEGv8			Lab1a(.ALU_Operation(ALU_Operation), .A(A), .B(B), .ALU_Result(ALU_Result), .Zero(Zero));

endmodule
