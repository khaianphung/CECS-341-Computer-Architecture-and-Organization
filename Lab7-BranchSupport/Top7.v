`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:49 04/05/2017 
// Design Name: 
// Module Name:    Top7 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Top7(PCIn, clock, AdderOut);
	input [63:0] PCIn;
	input clock;
	output [63:0] AdderOut;
	
	wire [4:0] Mux1Out;
	wire [63:0] PCOut, AdderOutToBranchMux, SEOut, Mux3Out, RFtoALU, RFtoMux2,Mux2toALU, ALUtoDM, DMtoMux3;
	wire [31:0] Instruction;
	wire Reg2Loc,RegWrite, Zero, MemRead, MemWrite, MemtoReg;
	wire [1:0] ALUOp;
	wire [63:0] ShiftedValue, BranchAdderOut;
	
	PC PC(.PCIn(PCIn), .clock(clock), .PCOut(PCOut), .AdderOut(AdderOutToBranchMux));
	InstructionMemory IM(.Address(PCOut), .out(Instruction));
	Mux2to1 Mux1(.A(Instruction[20:16]), .B(Instruction[4:0]), .Sel(Reg2Loc), .Output(Mux1Out));
	SignedExtender SE(.SEin(Instruction), .SEout(SEOut));
	registerfile	RF(.Read1(Instruction[9:5]), .Read2(Mux1Out), .WriteReg(Instruction[4:0]), .WriteData(Mux3Out), .RegWrite(RegWrite),
	.clock(clock), .Data1(RFtoALU), .Data2(RFtoMux2));
	Mux2to1	Mux2(.A(RFtoMux2), .B(SEOut), .Sel(ALUSrc), .Output(Mux2toALU));
	ALUwithControl ALU(.ALUOp(ALUOp),.Opcode(Instruction[31:21]), .A(RFtoALU), .B(Mux2toALU), .Zero(Zero), .ALU_Result(ALUtoDM));
	
	DataMemory DM(.Address(ALUtoDM), .WriteData(RFtoMux2), .MemRead(MemRead), .MemWrite(MemWrite), .clock(clock), .ReadData(DMtoMux3));
	
	Mux2to1 Mux3(.A(ALUtoDM), .B(DMtoMux3), .Sel(MemtoReg), .Output(Mux3Out));
	
	InstructionDecoder ID(.Reg2Loc(Reg2Loc), .ALUSrc(ALUSrc), .MemtoReg(MemtoReg), .RegWrite(RegWrite),
	.MemRead(MemRead), .MemWrite(MemWrite), .Branch(Branch), .ALUOp(ALUOp), .Instruction(Instruction));
	
	assign ShiftedValue=SEOut<<2;
	
	assign BranchAdderOut=ShiftedValue+AdderOutToBranchMux;
	
	Mux2to1 Mux4(.A(AdderOutToBranchMux),.B(BranchAdderOut),.Sel((Branch&Zero)),.Output(AdderOut));
	
	
	

endmodule
