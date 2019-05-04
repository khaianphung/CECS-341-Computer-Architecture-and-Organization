`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:51 03/08/2017
// Design Name:   PC
// Module Name:   D:/Workspace/CECS-341/Lab5A-PC/PC_Tester.v
// Project Name:  Lab5A-PC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_Tester;

	// Inputs
	reg [63:0] PCIn;
	reg clock;

	// Outputs
	wire [63:0] PCOut;
	wire [63:0] AdderOut;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.PCIn(PCIn), 
		.clock(clock), 
		.PCOut(PCOut), 
		.AdderOut(AdderOut)
	);
	
	always #5 clock=~clock;
	initial begin
		// Initialize Inputs
		PCIn = 0;
		clock = 0;
		#6;
		assign PCIn=AdderOut;
		// Wait 100 ns for global reset to finish
		#100;
       $stop;
		// Add stimulus here

	end
      
endmodule

