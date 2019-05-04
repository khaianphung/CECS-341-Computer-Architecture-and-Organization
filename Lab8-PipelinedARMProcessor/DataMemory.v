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
	end //This is "Big Endian", Higher significance byte is in lower address end.
	
	//Give memory some values
	initial
		begin
			{DM[0],DM[1],DM[2],DM[3],DM[4],DM[5],DM[6],DM[7]}=64'h0000000000000000;
			{DM[8],DM[9],DM[10],DM[11],DM[12],DM[13],DM[14],DM[15]}=64'h1111111111111111;
			{DM[16],DM[17],DM[18],DM[19],DM[20],DM[21],DM[22],DM[23]}=64'h2222222222222222;
			{DM[24],DM[25],DM[26],DM[27],DM[28],DM[29],DM[30],DM[31]}=64'h3333333333333333;
			{DM[32],DM[33],DM[34],DM[35],DM[36],DM[37],DM[38],DM[39]}=64'h4444444444444444;
			{DM[40],DM[41],DM[42],DM[43],DM[44],DM[45],DM[46],DM[47]}=64'h5555555555555555;
			{DM[48],DM[49],DM[50],DM[51],DM[52],DM[53],DM[54],DM[55]}=64'h6666666666666666;
			{DM[56],DM[57],DM[58],DM[59],DM[60],DM[61],DM[62],DM[63]}=64'h7777777777777777;
			{DM[64],DM[65],DM[66],DM[67],DM[68],DM[69],DM[70],DM[71]}=64'h8888888888888888;
			{DM[72],DM[73],DM[74],DM[75],DM[76],DM[77],DM[78],DM[79]}=64'h9999999999999999;
			{DM[80],DM[81],DM[82],DM[83],DM[84],DM[85],DM[86],DM[87]}=64'haaaaaaaaaaaaaaaa;
			{DM[88],DM[89],DM[90],DM[91],DM[92],DM[93],DM[94],DM[95]}=64'hbbbbbbbbbbbbbbbb;
			{DM[96],DM[97],DM[98],DM[99],DM[100],DM[101],DM[102],DM[103]}=64'hcccccccccccccccc;

		end
endmodule
