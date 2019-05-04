`timescale 1ns / 1ps

module Top5B_Tester;

	// Inputs
	reg [63:0] PCIn;
	reg clock;

	// Outputs
	wire [63:0] AdderOut;
	wire [31:0] InstructionOut;

	// Instantiate the Unit Under Test (UUT)
	Top5B uut (
		.AdderOut(AdderOut), 
		.InstructionOut(InstructionOut), 
		.PCIn(PCIn), 
		.clock(clock)
	);

	initial begin
		// Initialize Inputs
		PCIn = 0;
		clock = 0;
		
		//Read Instruction 1
		#5;
		clock=1;
		#5
		clock=0;
		
		//Read Instruciton 2
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 3
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 4
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 5
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 6
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 7
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 8
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 9
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		
		//Read Instruciton 10
		#2.5;
		PCIn=AdderOut;
		#2.5;
		clock=1;
		#5;
		clock=0;
		

		
       $stop;

	end
      
endmodule

