`timescale 1ns / 1ps

module LEGv8_Tester;

	// Inputs
	reg [3:0] ALU_Operation;
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] ALU_Result;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	LEGv8 uut (
		.ALU_Operation(ALU_Operation), 
		.A(A), 
		.B(B), 
		.ALU_Result(ALU_Result), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALU_Operation = 0;
		A = 64'h5555555555555555;
		B = 64'hAAAAAAAAAAAAAAAA;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      ALU_Operation=4'b0;
		#100;
		ALU_Operation=4'b0001;
		#100;
		ALU_Operation=4'b0010;
		#100;
		ALU_Operation=4'b0110;
		#100;
		ALU_Operation=4'b0111;
		#100;
		ALU_Operation=4'b1100;
		#100;
		ALU_Operation=4'b1111;
		#100;
	$stop;
	end
      
endmodule

