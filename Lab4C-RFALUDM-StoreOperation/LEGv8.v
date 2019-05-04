`timescale 1ns / 1ps
module LEGv8(ALU_Operation, A, B, ALU_Result, Zero);
	input [63:0] A, B;
	input	[3:0]	ALU_Operation;
	output reg[63:0] ALU_Result;
	output Zero;
	
	assign Zero= (ALU_Result==0);
	always @(ALU_Operation, A, B)
	begin
		case(ALU_Operation)
			0:ALU_Result<= A&B;
			1:ALU_Result<= A|B;
			2:ALU_Result<= A+B;
			6:ALU_Result<= A-B;
			7: ALU_Result<= B;
			12: ALU_Result<= ~(A|B);
			default: ALU_Result <=64'bx;
		endcase
	end
endmodule
