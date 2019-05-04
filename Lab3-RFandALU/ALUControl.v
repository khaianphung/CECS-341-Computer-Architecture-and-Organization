`timescale 1ns / 1ps
module ALUControl(ALUOp, Opcode, ALU_Operation);

	input [1:0] ALUOp;
	input [10:0] Opcode;
	output reg [3:0] ALU_Operation;
	
	always @(ALUOp, Opcode)
	begin
		case({ALUOp, Opcode})
			13'b10_10001010000:ALU_Operation<=0; //AND
			13'b10_10101010000: ALU_Operation<=1; //OR
			13'b10_10001011000: ALU_Operation<=2; //ADD
			13'b10_11001011000: ALU_Operation<=6; //SUB
			13'b10_11111000010: ALU_Operation<=7; //Pass B
			13'b10_11101010000: ALU_Operation<=12; //NOR
			default: ALU_Operation<=4'bx;
		endcase
	end
endmodule
