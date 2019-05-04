`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:54:57 04/05/2017
// Design Name:   SignedExtender
// Module Name:   D:/Workspace/CECS-341/Lab7-BranchSupport/SE_Tester.v
// Project Name:  Lab7-BranchSupport
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignedExtender
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SE_Tester;

	// Inputs
	reg [31:0] SEin;

	// Outputs
	wire [63:0] SEout;

	// Instantiate the Unit Under Test (UUT)
	SignedExtender uut (
		.SEin(SEin), 
		.SEout(SEout)
	);

	initial begin
		// Initialize Inputs
		SEin = -5;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

