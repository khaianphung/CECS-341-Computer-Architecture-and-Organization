`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:38:23 04/17/2017
// Design Name:   Top7
// Module Name:   D:/Workspace/CECS-341/Lab7-BranchSupport/Top7_Tester.v
// Project Name:  Lab7-BranchSupport
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top7_Tester;

	// Inputs
	reg [63:0] PCIn;
	reg clock;

	// Outputs
	wire [63:0] AdderOut;

	// Instantiate the Unit Under Test (UUT)
	Top7 uut (
		.PCIn(PCIn), 
		.clock(clock), 
		.AdderOut(AdderOut)
	);

	initial begin
		// Initialize Inputs
		PCIn = 0;
		clock = 0;

		//Read Instruction 1
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		
		//Read Instruciton 2
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		
		//Read Instruciton 3
		#5;
		PCIn=AdderOut;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 4
		#5;
		PCIn=AdderOut;
		clock=1;
		#5;
		clock=0;
		//Read Instruciton 5
		#5;
		PCIn=AdderOut;
		clock=1;
		#5;
		clock=0;
			//Read Instruciton 6
		#5;
		PCIn=AdderOut;
		clock=1;
		#5;
		clock=0;
		//Read Instruciton 7
		#5;
		PCIn=AdderOut;
		clock=1;
		#5;
		clock=0;
		//Read Instruciton 8
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		//Read Instruciton 9
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
//Read Instruciton 9
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		//Writing clock
		#5;
		clock=1;
		#5;
		clock=0;
       $stop;

	end
      
endmodule

