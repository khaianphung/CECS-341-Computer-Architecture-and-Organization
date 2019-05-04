`timescale 1ns / 1ps
                                                                                                                                                                                                 module InstructionMemory(Address, out);
	input		[63:0] Address;
	output [31:0] out;
	
	reg	[7:0] IM	[0:225];
	
	assign out={IM[Address+0], IM[Address+1], IM[Address+2], IM[Address+3]};
	
	initial 
		begin
			//Load1:
			{IM[0],IM[1],IM[2],IM[3]}=32'b11111000010_000000000_00_11111_00000;
			//Load2:
			{IM[4],IM[5],IM[6],IM[7]}=32'b11111000010_000001000_00_11111_00001;
			//ALU: Sub
			{IM[8],IM[9],IM[10],IM[11]}=32'b11001011000_00001_000000_00000_00010;
			//ALU: AND
			{IM[12],IM[13],IM[14],IM[15]}=32'b10001010000_00001_000000_00000_00011;
			//ALU: OR
			{IM[16],IM[17],IM[18],IM[19]}=32'b10101010000_00001_000000_00000_00100;
			//Store:SUB
			{IM[20],IM[21],IM[22],IM[23]}=32'b11111000000_000010000_00_11111_00010;
			//Store:AND
			{IM[24],IM[25],IM[26],IM[27]}=32'b11111000000_000011000_00_11111_00011;
			//Store:OR
			{IM[28],IM[29],IM[30],IM[31]}=32'b11111000000_000100000_00_11111_00100;
			
		end
endmodule
