`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:17 02/06/2017
// Design Name:   registerfile
// Module Name:   D:/Workspace/CECS-341/Lab3-RFandALU/registerfile_Tester.v
// Project Name:  Lab3-RFandALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module registerfile_Tester;

	// Inputs
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [63:0] WriteData;
	reg RegWrite;
	reg clock;

	// Outputs
	wire [63:0] Data1;
	wire [63:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	registerfile uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.clock(clock), 
		.Data1(Data1), 
		.Data2(Data2)
	);
	always #50 clock=~clock;
	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 0;
		
		@(negedge clock)
		#25
		WriteData=64'h5555555555555555;
		RegWrite=1;
		WriteReg=5;
		#50
		RegWrite=0;
		
		@(negedge clock)
		#25;
		WriteData=64'haaaaaaaaaaaaaaaa;
		RegWrite=1;
		WriteReg=10;
		#50
		RegWrite=0;

		
		
		@(posedge clock)
		Read1=5;
		Read2=10;
		#100;
		
		$stop;
		
		
		
	
		//Read is clock indepnedent

	end
      
endmodule

