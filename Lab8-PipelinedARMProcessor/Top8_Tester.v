`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:45:10 04/22/2017
// Design Name:   Top8
// Module Name:   D:/Workstation/CECS-341/Lab8-PipelinedARMProcessor/Top8_Tester.v
// Project Name:  Lab8-PipelinedARMProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top8_Tester;

	// Inputs
	reg [63:0] PCIn;
	reg clock;

	// Outputs
	wire [63:0] AdderOut;

	// Instantiate the Unit Under Test (UUT)
	Top8 uut (
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
		//Read Instruciton 10
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		//Read Instruciton 11
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		//Read Instruciton 12
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		//Read Instruciton 13
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		//Read Instruciton 14
		#5;
		clock=1;
		PCIn=AdderOut;
		#5;
		clock=0;
		//Read Instruciton 15
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
		//Writing clock
		#5;
		clock=1;
		#5;
		clock=0;
		//Writing clock
		#5;
		clock=1;
		#5;
		clock=0;
		//Writing clock
		#5;
		clock=1;
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

