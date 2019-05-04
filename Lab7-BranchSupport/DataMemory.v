`timescale 1ns / 1ps

module DataMemory(Address, WriteData, MemRead, MemWrite, clock, ReadData);
	input [7:0]	Address;
	input	[63:0] WriteData;
	input MemRead, MemWrite, clock;
	output reg [63:0] ReadData;
	
	reg [7:0] DM [0:225];	// DM
	
	//Read Memory
	always @(*)
	begin
		if(MemRead==1)
			 ReadData = {DM[Address+0], DM[Address+1], DM[Address+2], DM[Address+3],
									DM[Address+4], DM[Address+5], DM[Address+6], DM[Address+7]};
	end // We are reading consecutive 8 bytes from the address and catenating them to form a double word.
	
	//Write Memory
	always @(posedge clock)
	begin
		if (MemWrite==1)
			begin
				DM[Address+0]=WriteData[63:56];
				DM[Address+1]=WriteData[55:48];
				DM[Address+2]=WriteData[47:40];
				DM[Address+3]=WriteData[39:32];
				DM[Address+4]=WriteData[31:24];
				DM[Address+5]=WriteData[23:16];
				DM[Address+6]=WriteData[15:08];
				DM[Address+7]=WriteData[07:00];
			end
	end //This is "Big Endian", Higher significance byete is in lower address end.
	
	//Give memory some values
	initial
		begin
			//{DM[16],DM[17],DM[18],DM[19],DM[20],DM[21],DM[22],DM[23]}=64'h2;
			//.....
			//{DM[24],DM[25],DM[26],DM[27],DM[28],DM[29],DM[30],DM[31]}=64'h3;
			//.....
			{DM[40],DM[41],DM[42],DM[43],DM[44],DM[45],DM[46],DM[47]}=64'h5555555555555555;
			
			{DM[80],DM[81],DM[82],DM[83],DM[84],DM[85],DM[86],DM[87]}=64'hAAAAAAAAAAAAAAAA;
		end
endmodule
