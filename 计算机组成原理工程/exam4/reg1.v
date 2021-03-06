`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:23 06/08/2017 
// Design Name: 
// Module Name:    reg1 
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
module REG(R_Addr_A,R_Addr_B,W_Addr,W_Data,R_Data_A,R_Data_B,Write_Reg,clk,reset);//���Ĵ���AB��д�Ĵ�����д���ݣ�������AB��ʱ�ӣ���ԭ
	input clk,reset,Write_Reg;
	input wire[4:0]R_Addr_A,R_Addr_B,W_Addr;//5λ�Ĵ����ŷ���
	input wire[31:0]W_Data;//32λ�Ĵ�����
	output wire[31:0]R_Data_A,R_Data_B;
	reg [31:0]REG_Files[31:0];//����Ĵ����ѱ���
	//wire Write_Reg;
	
	integer i=0;
	
	always@(posedge clk or posedge reset)//��������Ч
	begin
		if(reset)
		begin
			for(i=0;i<32;i=i+1)
			REG_Files[i]<=32'b0;
		end
		else 
		begin
			if(Write_Reg)//�ж�д���Ƶ��ź�
				REG_Files[W_Addr]<=W_Data;
		end
	end
	assign R_Data_A = REG_Files[R_Addr_A];
	assign R_Data_B = REG_Files[R_Addr_B];
endmodule
