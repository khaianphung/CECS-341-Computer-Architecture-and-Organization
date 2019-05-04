`timescale 1ns / 1ps

module ALUControl_Tester;

	// Inputs
	reg [1:0] ALUOp;
	reg [10:0] Opcode;

	// Outputs
	wire [3:0] ALU_Operation;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.ALUOp(ALUOp), 
		.Opcode(Opcode), 
		.ALU_Operation(ALU_Operation)
	);

	initial begin
		//AND
		ALUOp = 2;
		Opcode = 11'b10001010000;
		#10;
       
		//OR
		ALUOp = 2;
		Opcode = 11'b10101010000;
		#10;
		
		//ADD
		ALUOp = 2;
		Opcode = 11'b10001011000;
		#10;
		
		//SUB
		ALUOp = 2;
		Opcode = 11'b11001011000;
		#10;
		
		//Pass B
		ALUOp = 2;
		Opcode = 11'b11111000010;
		#10;
		
		//NOR
		ALUOp = 2;
		Opcode = 11'b11101010000;
		#10;
		
		//Unknown
		ALUOp = 0;
		Opcode = 0;
		#10;
		$stop;
		

	end
      
endmodule

