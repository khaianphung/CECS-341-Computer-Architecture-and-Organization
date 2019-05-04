`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:56 03/15/2017 
// Design Name: 
// Module Name:    Top5B 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Top5B(AdderOut, InstructionOut, PCIn, clock
    );
	 input [63:0] PCIn;
	 input clock;
	 output [63:0] AdderOut;
	 output [31:0]InstructionOut;
	 
	 wire [63:0] PCToIM;
	 PC	PC(.PCIn(PCIn), .clock(clock), .PCOut(PCToIM), .AdderOut(AdderOut));
	 InstructionMemory IM(.Address(PCToIM), .out(InstructionOut));


endmodule
