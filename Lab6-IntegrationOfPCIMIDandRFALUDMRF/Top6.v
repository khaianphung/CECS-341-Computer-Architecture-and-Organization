`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:47:32 04/02/2017 
// Design Name: 
// Module Name:    Top6 
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
module Top6(clock, PCIn, AdderOut, Zero
    );
	input clock;
	input [63:0] PCIn;
	output [63:0] AdderOut;
	output Zero;
	
	wire [8:0] ControlSignals;
	wire [31:0] Instruction;
	Top4C	RFALUDM(.Rn(Instruction[9:5]), .Rt(Instruction[4:0]), .Rm(Instruction[20:16]), .WriteReg(Instruction[4:0]), .RegWrite(ControlSignals[5]), 
						.Reg2Loc(ControlSignals[8]), .clock(clock),
						.BaseAddress(Instruction[20:12]), .ALUSrc(ControlSignals[7]), .Opcode(Instruction[31:21]), .ALUOp(ControlSignals[1:0]),
						.Zero(Zero), .MemWrite(ControlSignals[3]),
						.MemRead(ControlSignals[4]), .MemToReg(ControlSignals[6]));
	Top5C	PCIMID(.PCIn(PCIn), .AdderOut(AdderOut), .ControlSignals(ControlSignals), .clock(clock),.InstructionOut(Instruction));
endmodule
