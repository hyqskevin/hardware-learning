`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:34:50 05/23/2017 
// Design Name: 	wpx
// Module Name:    mips_control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips_control(op_code,func,ALU_OP,Write_Reg);
	input [5:0]op_code;
	input [5:0]func;
	output [2:0]ALU_OP;
	output Write_Reg;
	reg Write_Reg,ALU_OP;//????????????????
	
	mips_decode(
	.op_code(op_code),
	.func(func));
	
	always@(*)
		begin
		if(op_code==6'b00_0000)
			begin
				Write_Reg <= 1;
			case(func)
			6'b10_0000: ALU_OP <= 3'b100;
			6'b10_0010: ALU_OP <= 3'b101;
			6'b10_0100: ALU_OP <= 3'b000;
			6'b10_0101: ALU_OP <= 3'b001;
			6'b10_0110: ALU_OP <= 3'b010;
			6'b10_0111: ALU_OP <= 3'b011;
			6'b10_1011: ALU_OP <= 3'b110;
			6'b00_0100: ALU_OP <= 3'b111;
			//default?
			endcase
			end
		end
endmodule
