`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:27 05/22/2017 
// Design Name: 	wpx
// Module Name:    mips_alu_32 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 32位加法器（行为描述）
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips_alu_32(A,B,F,CF,ZF,OF,clk);
	input clk;
	//input [2:0]ALU_OP;
	input [31:0]A,B;
	output F,CF,OF,ZF;
	wire [2:0]ALU_OP;
	reg [31:0]F;
	reg F32,CF,OF,ZF;//??????????????

	mips_reg(
	.R_Data_A(A[31:0]),
	.R_Data_B(B[31:0]));
	
	mips_control(
	.ALU_OP(ALU_OP[2:0]));

	//制定ALU的功能
	always@(*)
	begin
		case(ALU_OP)
			3'b000: F<=A&B;
			3'b001: F<=A|B;
			3'b010: F<=A^B;
			3'b011: F<=A~^B;
			3'b100: {F32,F}<=A+B;
			3'b101: {F32,F}<=A-B;
			3'b110: begin 
						if(A<B) 
							F<=32'h0000_0001;
						else 
							F<=32'h0000_0000;
					  end
			3'b111:F<=(B<<A);
			default:F<=32'h0000_0000;
		endcase
	end
	
	//CF，ZF，OF判断进位，置零，溢出???????????????????????
	always@(*)
	begin
		if(F==0)
		ZF<=1;
		else ZF<=0;
		if(F32==1)
		CF<=1;
		else CF<=0;
	end
	
	always@(clk)
	begin
	if(ALU_OP>3'b011 && ALU_OP<3'b110)
		OF<=F32^F[31]^A[31]^B[31];
	end
endmodule

