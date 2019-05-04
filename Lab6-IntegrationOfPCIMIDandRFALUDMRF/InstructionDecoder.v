`timescale 1ns / 1ps

module InstructionDecoder( Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Opcode
    );
	input [10:0] Opcode;
	output reg Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch;
	output reg [1:0] ALUOp;
	
	always @(Opcode) begin
		case(Opcode)
			//Load
			11'b11111000010: begin
			Reg2Loc<=0; ALUSrc<=1; MemtoReg<=1;
			RegWrite<=1; MemRead<=1; MemWrite<=0; Branch<=0; ALUOp<=0;
			end
			
			//Store
			11'b11111000000: begin
			Reg2Loc<=1; ALUSrc<=1; MemtoReg<=0;
			RegWrite<=0; MemRead<=0; MemWrite<=1; Branch<=0; ALUOp<=0;
			end
			
			//And
			11'b10001010000: begin
			Reg2Loc<=0; ALUSrc<=0; MemtoReg<=0;
			RegWrite<=1; MemRead<=0; MemWrite<=0;  Branch<=0; ALUOp<=2;
			end
			
			//Or
			11'b10101010000: begin
			Reg2Loc<=0; ALUSrc<=0; MemtoReg<=0;
			RegWrite<=1; MemRead<=0; MemWrite<=0; Branch<=0;  ALUOp<=2;
			end
			
			//Add
			11'b10001011000: begin
			Reg2Loc<=0; ALUSrc<=0; MemtoReg<=0;
			RegWrite<=1; MemRead<=0; MemWrite<=0; Branch<=0; ALUOp<=2;
			end
			
			//Sub
			11'b11001011000: begin
			Reg2Loc<=0; ALUSrc<=0; MemtoReg<=0;
			RegWrite<=1; MemRead<=0; MemWrite<=0; Branch<=0; ALUOp<=2;
			end
			endcase
		end


endmodule
