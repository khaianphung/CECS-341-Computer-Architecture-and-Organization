`timescale 1ns / 1ps
module DataMemory(Address, WriteData, MemRead, MemWrite, clock, ReadData);
	input [7:0]	Address;
	input	[63:0] WriteData;
	input MemRead, MemWrite, clock;
	output reg [63:0] ReadData;
	
	reg [7:0] DM [0:225];	// DM
	
	//Read Memory
	always @(MemRead)
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
			DM[0]=8'h00; //beginning of 0th double word
			DM[1]=8'h00;
			DM[2]=8'h00;
			DM[3]=8'h00;
			DM[4]=8'h00;
			DM[5]=8'h00;
			DM[6]=8'h00;
			DM[7]=8'h00;
			//.....
			DM[40]=8'h55; //beginning of 5th double word
			DM[41]=8'h55;
			DM[42]=8'h55;
			DM[43]=8'h55;
			DM[44]=8'h55;
			DM[45]=8'h55;
			DM[46]=8'h55;
			DM[47]=8'h55;
			//.....
			DM[80]=8'haa; //beginning of 10th double word
			DM[81]=8'haa;
			DM[82]=8'haa;
			DM[83]=8'haa;
			DM[84]=8'haa;
			DM[85]=8'haa;
			DM[86]=8'haa;
			DM[87]=8'haa;
			//.....	
		end
endmodule
