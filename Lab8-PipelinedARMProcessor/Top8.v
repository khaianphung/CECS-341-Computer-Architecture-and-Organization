`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:05:14 04/22/2017 
// Design Name: 
// Module Name:    Top8 
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
module Top8(PCIn, clock, AdderOut);
	input [63:0] PCIn;
	input clock;
	output [63:0] AdderOut;
	
	wire [4:0] Mux1Out;
	wire [63:0] PCOut, AdderOutToBranchMux, SEOut, Mux3Out, RFtoALU, RFtoMux2,Mux2toALU, ALUtoDM, DMtoMux3;
	wire [31:0] Instruction;
	wire Reg2Loc,RegWrite, Zero, MemRead, MemWrite, ALUSrc,MemtoReg;
	wire [1:0] ALUOp;
	wire [63:0] ShiftedValue, BranchAdderOut;
	wire [95:0] PR1Out;
	wire [280:0] PR2Out;
	wire	[202:0] PR3Out;
	wire [134:0] PR4Out;
	//Stage1: InstructionFetch
	PC PC(.PCIn(PCIn), .clock(clock), .PCOut(PCOut), .AdderOut(AdderOutToBranchMux));
	InstructionMemory IM(.Address(PCOut), .out(Instruction));
	//Between Stage Register 1
	IFID_PR PR1(.in({PCOut,Instruction}), .out(PR1Out), .clock(clock));
		
	//Stage2: InstructionDecoding, RegisterFetch, WriteBack
	InstructionDecoder ID(.Reg2Loc(Reg2Loc), .ALUSrc(ALUSrc), .MemtoReg(MemtoReg), .RegWrite(RegWrite),
	.MemRead(MemRead), .MemWrite(MemWrite), .Branch(Branch), .ALUOp(ALUOp), .Instruction(PR1Out[31:21]));
	Mux2to1 Mux1(.A(PR1Out[20:16]), .B(PR1Out[4:0]), .Sel(Reg2Loc), .Output(Mux1Out));
	SignedExtender SE(.SEin(PR1Out), .SEout(SEOut));
	registerfile	RF(.Read1(PR1Out[9:5]), .Read2(Mux1Out), .WriteReg(PR4Out[4:0]), .WriteData(Mux3Out), .RegWrite(PR4Out[134]),
	.clock(clock), .Data1(RFtoALU), .Data2(RFtoMux2));
	//Between Stage Register 2
	IDEX_PR PR2(.in({Reg2Loc,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,ALUOp, PR1Out[95:32], RFtoALU,RFtoMux2,SEOut,PR1Out[31:21],PR1Out[4:0]}),
	.out(PR2Out), .clock(clock));
	
	//Stage3: Execution
	Mux2to1	Mux2(.A(PR2Out[143:80]), .B(PR2Out[79:16]), .Sel(PR2Out[279]), .Output(Mux2toALU));
	assign ShiftedValue=(PR2Out[79:16])<<2;
	assign BranchAdderOut=ShiftedValue+AdderOutToBranchMux;
	ALUwithControl ALU(.ALUOp(PR2Out[273:272]),.Opcode(PR2Out[15:5]), .A(PR2Out[207:144]), .B(Mux2toALU), .Zero(Zero), .ALU_Result(ALUtoDM));
	//Between Stage Register 3
	EXMEM_PR PR3(.in({PR2Out[277],PR2Out[278],PR2Out[274],PR2Out[276],PR2Out[275],BranchAdderOut,Zero,ALUtoDM,RFtoMux2,PR2Out[4:0]}), 
	.out(PR3Out), .clock(clock));
	
	//Stage4: MemoryRead, MemoryWrite
	DataMemory DM(.Address(PR3Out[132:69]), .WriteData(PR3Out[68:5]), .MemRead(PR3Out[199]), .MemWrite(PR3Out[198]), .clock(clock), .ReadData(DMtoMux3));
	Mux2to1 Mux4(.A(AdderOutToBranchMux),.B(PR3Out[197:134]),.Sel((PR3Out[200]&PR3Out[133])),.Output(AdderOut));
	//Between Stage Register 4
	MEMWB_PR	PR4(.in({PR3Out[202],PR3Out[201],DMtoMux3, PR3Out[132:69],PR3Out[4:0]}), .out(PR4Out), .clock(clock));

	//Stage5: WriteBackToRegister
	Mux2to1 Mux3(.A(PR4Out[68:5]), .B(PR4Out[132:69]), .Sel(PR4Out[133]), .Output(Mux3Out));

		

	

endmodule
