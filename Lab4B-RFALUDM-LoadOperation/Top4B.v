`timescale 1ns / 1ps
module Top4B(Rn, Rt, Rm, RegWrite, clock, BaseAddress, ALUSrc, Opcode, ALUOp, Zero, MemWrite, MemRead, MemToReg );
	input 	[4:0] Rn, Rm, Rt; //Rt=WriteReg
	input 	[1:0] 	ALUOp;
	input 	[10:0]	Opcode;
	input 	[8:0]		BaseAddress;
	input RegWrite, clock, ALUSrc, MemRead, MemWrite, MemToReg;
	output Zero;
	 
	wire [63:0] Mux2ToReg, RegToALU, RegToMux1, SEToMux1, Mux1ToALU, ALUToDMAndMux2, DMToMux2;
	registerfile	Register (.Read1(Rn), .Read2(Rm), .WriteReg(Rt), .WriteData(Mux2ToReg), 
										.RegWrite(RegWrite), .clock(clock), .Data1(RegToALU), .Data2(RegToMux1));
	SignedExtender	SE(.SEin(BaseAddress), .SEout(SEToMux1));
	Mux2to1			Mux1(.A(RegToMux1), .B(SEToMux1), .Sel(ALUSrc), .Output(Mux1ToALU));
	ALUwithControl	ALU	(.ALUOp(ALUOp), .Opcode(Opcode), .A(RegToALU), .B(Mux1ToALU), 
									.Zero(Zero), .ALU_Result(ALUToDMAndMux2));
	DataMemory		DM		(.Address(ALUToDMAndMux2), .WriteData(), .MemRead(MemRead), .MemWrite(MemWrite)
									, .clock(clock), .ReadData(DMToMux2));
	Mux2to1			Mux2(.A(ALUToDMAndMux2),.B(DMToMux2),.Sel(MemToReg),.Output(Mux2ToReg));
	
	
	

endmodule
