`timescale 1ns / 1ps

module DataMemory_tester;

	// Inputs
	reg [7:0] Address;
	reg [63:0] WriteData;
	reg MemRead;
	reg MemWrite;
	reg clock;

	// Outputs
	wire [63:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.Address(Address), 
		.WriteData(WriteData), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.clock(clock), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		Address = 0;
		WriteData = 0;
		MemRead = 0;
		MemWrite = 0;
		clock = 0;
		
		#5;
		//Testing Read
		MemRead=1;
		Address=40;
		#5;
		Address=80;
		#5;
		MemRead=0;
		//Testing Write
		#3;
		WriteData=64'haaaaaaaaaaaaaaaa;
		Address=40;
		MemWrite=1;
		#2
		clock=1;
		#5;
		clock=0;
		MemWrite=0;
		MemRead=1;
		#5;
		

       $stop;
		// Add stimulus here

	end
      
endmodule

