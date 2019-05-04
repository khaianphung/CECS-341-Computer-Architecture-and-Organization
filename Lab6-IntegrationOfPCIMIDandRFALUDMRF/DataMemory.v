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
			{DM[0],DM[1],DM[2],DM[3],DM[4],DM[5],DM[6],DM[7]}=64'h6666666666666666;
			//.....
			{DM[8],DM[9],DM[10],DM[11],DM[12],DM[13],DM[14],DM[15]}=64'h9999999999999999;
			//.....	
		end
endmodule
