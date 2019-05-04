`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:37:26 04/02/2017
// Design Name:   Top6
// Module Name:   D:/Workstation/CECS-341/Lab6-IntegrationOfPCIMIDandRFALUDMRF/Top6_Tester.v
// Project Name:  Lab6-IntegrationOfPCIMIDandRFALUDMRF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top6
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top6_Tester;

	// Inputs
	reg clock;
	reg [63:0] PCIn;

	// Outputs
	wire [63:0] AdderOut;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	Top6 uut (
		.clock(clock), 
		.PCIn(PCIn), 
		.AdderOut(AdderOut), 
		.Zero(Zero)
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
		#5;
		clock=0;
       $stop;

	end
      
endmodule

