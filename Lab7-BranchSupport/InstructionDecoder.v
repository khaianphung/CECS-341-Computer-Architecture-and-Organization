`timescale 1ns / 1ps

module InstructionDecoder( Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp, Instruction
    );
	input [31:0] Instruction;
	output reg Reg2Loc, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch;
	output reg [1:0] ALUOp;
		always @(Instruction[31:21]) begin
			if(Instruction[31:24]==180) begin
				Reg2Loc<=1; ALUSrc<=0; MemtoReg<=0;
				RegWrite<=0; MemRead<=0; MemWrite<=0; Branch<=1; ALUOp<=1;
			end
			else case(Instruction[31:21])
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
