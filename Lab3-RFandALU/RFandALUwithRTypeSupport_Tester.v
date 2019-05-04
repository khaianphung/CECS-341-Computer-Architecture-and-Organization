`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:29 02/15/2017
// Design Name:   RFandALUwithRTypeSupport
// Module Name:   D:/Workspace/CECS-341/Lab3-RFandALU/RFandALUwithRTypeSupport_tester.v
// Project Name:  Lab3-RFandALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RFandALUwithRTypeSupport
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RFandALUwithRTypeSupport_tester;

	// Inputs
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [63:0] WriteData;
	reg RegWrite;
	reg clock;
	reg [1:0] ALUOp;
	reg [10:0] Opcode;

	// Outputs
	wire Zero;
	wire [63:0] ALU_Result;

	// Instantiate the Unit Under Test (UUT)
	RFandALUwithRTypeSupport uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.clock(clock), 
		.ALUOp(ALUOp), 
		.Opcode(Opcode), 
		.Zero(Zero), 
		.ALU_Result(ALU_Result)
	);

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 0;
		ALUOp = 0;
		Opcode = 0;


		#5;
		WriteReg=5;
		WriteData=64'h5555555555555555;
		RegWrite=1;
		#5;
		clock=1;
		#10;
		RegWrite=0;
		clock=0;
		
		#5;
		WriteReg=10;
		WriteData=64'haaaaaaaaaaaaaaaa;
		RegWrite=1;
		#5;
		clock=1;
		#10;
		RegWrite=0;
		clock=0;
		
		Read1=5;
		Read2=10;		
		
		#5;
		WriteReg=1;
		RegWrite=1;
		{ALUOp, Opcode}=13'b10_10001010000;
		#2;
		WriteData=ALU_Result;
		#3;
		clock=1;
		#10;
		RegWrite=0;
		clock=0;
		
		#5;
		WriteReg=2;
		RegWrite=1;
		{ALUOp, Opcode}=13'b10_10101010000;
		#2;
		WriteData=ALU_Result;
		#3;
		clock=1;
		#10;
		RegWrite=0;
		clock=0;
		
		#5;
		WriteReg=3;
		RegWrite=1;
		{ALUOp, Opcode}=13'b10_10001011000;
		#2;
		WriteData=ALU_Result;
		#3;
		clock=1;
		#10;
		RegWrite=0;
		clock=0;
		
		#5;
		WriteReg=4;
		RegWrite=1;
		{ALUOp, Opcode}=13'b10_11001011000;
		#2;
		WriteData=ALU_Result;
		#3;
		clock=1;
		#10;
		RegWrite=0;
		clock=0;
		
		$stop;
	end
      
endmodule

