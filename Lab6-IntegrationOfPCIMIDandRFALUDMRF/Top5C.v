`timescale 1ns / 1ps
module Top5C( PCIn, AdderOut, ControlSignals, clock, InstructionOut);
	input clock;
	input [63:0] PCIn;
	output [63:0] AdderOut;
	output [8:0] ControlSignals;
	output [31:0] InstructionOut;
	
	wire [63:0] PCtoIM;
	wire [31:0] IMtoID;
	PC PC(.PCIn(PCIn), .clock(clock), .PCOut(PCtoIM), .AdderOut(AdderOut));
	InstructionDecoder ID	(.Reg2Loc(ControlSignals[8]), .ALUSrc(ControlSignals[7]), 
									.MemtoReg(ControlSignals[6]), .RegWrite(ControlSignals[5]), .MemRead(ControlSignals[4]),
									.MemWrite(ControlSignals[3]), .Branch(ControlSignals[2]), .ALUOp(ControlSignals[1:0]), .Opcode(IMtoID[31:21]));
	InstructionMemory	IM(.Address(PCtoIM), .out(IMtoID));
	
	assign InstructionOut=IMtoID;
	
endmodule
