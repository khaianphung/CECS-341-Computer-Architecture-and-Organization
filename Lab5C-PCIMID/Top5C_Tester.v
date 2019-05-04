`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:38:30 03/15/2017
// Design Name:   Top5C
// Module Name:   D:/Workspace/CECS-341/Lab5C-PCIMID/Top5C_Tester.v
// Project Name:  Lab5C-PCIMID
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top5C
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Top5C_Tester;

	// Inputs
	reg [63:0] PCIn;
	reg clock;

	// Outputs
	wire [63:0] AdderOut;
	wire [8:0] ControlSignals;

	// Instantiate the Unit Under Test (UUT)
	Top5C uut (
		.PCIn(PCIn), 
		.AdderOut(AdderOut), 
		.ControlSignals(ControlSignals), 
		.clock(clock)
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
		PCIn=AdderOut;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 9
		#5;
		PCIn=AdderOut;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 10
		#5;
		PCIn=AdderOut;
		clock=1;
		#5;
		clock=0;
		

		
       $stop;

	end
      
endmodule

