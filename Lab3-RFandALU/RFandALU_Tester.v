`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:33 02/08/2017
// Design Name:   RFandALU
// Module Name:   D:/Workspace/CECS-341/Lab3-RFandALU/RFandALU_Tester.v
// Project Name:  Lab3-RFandALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RFandALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RFandALU_Tester;

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
	RFandALU uut (
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
		
		//Write the first value of 5 into register 5
		#3;
		WriteReg=5;
		WriteData=64'h5555555555555555;
		RegWrite=1;
		#2;
		clock=1;
		#5;
		clock=0;
		RegWrite=0;
		
		//Write the second value of A into register 10
		#3;
		WriteReg=10;
		WriteData=64'haaaaaaaaaaaaaaaa;
		RegWrite=1;
		#2
		clock=1;
		#5
		clock=0;
		RegWrite=0;
		
		//Read from register 5 and 10
		Read1=5;
		Read2=10;
		#10;
		
		//AND
		ALUOp = 2;
		Opcode = 11'b10001010000;
      #10;
		
		//OR
		ALUOp = 2;
		Opcode = 11'b10101010000;
		#10;
		
		//ADD
		ALUOp = 2;
		Opcode = 11'b10001011000;
		#10;
		
		//SUB
		ALUOp = 2;
		Opcode = 11'b11001011000;
		#10;
		
		//Pass B
		ALUOp = 2;
		Opcode = 11'b11111000010;
		#10;
		
		//NOR
		ALUOp = 2;
		Opcode = 11'b11101010000;
		#10;
		
		//Unknown
		ALUOp = 0;
		Opcode = 0;
		
		
		#10;
		$stop;
	end
      
endmodule

