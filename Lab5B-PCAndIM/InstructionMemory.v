`timescale 1ns / 1ps
module InstructionMemory(Address, out);
	input		[63:0] Address;
	output [31:0] out;
	
	reg	[7:0] IM	[0:225];
	
	assign out={IM[Address+0], IM[Address+1], IM[Address+2], IM[Address+3]};
	
	initial 
		begin
			//Load 1:Load from address 40 into $5
			IM[0]=8'hF8;
			IM[1]=8'h42;
			IM[2]=8'h80;
			IM[3]=8'h05;
			//Load 2:Load from address 80 into $10
			IM[4]=8'hF8;
			IM[5]=8'h45;
			IM[6]=8'h00;
			IM[7]=8'h0A;
			//AND $1, $5, $10
			IM[8]=8'h8A;
			IM[9]=8'h0A;
			IM[10]=8'h00;
			IM[11]=8'hA1;
			//Or	$2, $5, $10
			IM[12]=8'hAA;
			IM[13]=8'h0A;
			IM[14]=8'h00;
			IM[15]=8'hA2;
			//Add $3, $5, $10
			IM[16]=8'h8B;
			IM[17]=8'h0A;
			IM[18]=8'h00;
			IM[19]=8'hA3;
			//Sub $4, $5, $10
			IM[20]=8'hCB;
			IM[21]=8'h0A;
			IM[22]=8'h00;
			IM[23]=8'hA3;
			//Store 1: Store to address 0 from $1
			IM[24]=8'hF8;
			IM[25]=8'h00;
			IM[26]=8'h80;
			IM[27]=8'h01;
			//Store 2: Store to address 8 from $2
			IM[28]=8'hF8;
			IM[29]=8'h01;
			IM[30]=8'h00;
			IM[31]=8'h02;
			//Store 3: Store to address 16 from $3
			IM[32]=8'hF8;
			IM[33]=8'h01;
			IM[34]=8'h80;
			IM[35]=8'h03;
			//Store 4: Store to address 32 from $4
			IM[36]=8'hF8;
			IM[37]=8'h02;
			IM[38]=8'h00;
			IM[39]=8'h04;
		end
endmodule
