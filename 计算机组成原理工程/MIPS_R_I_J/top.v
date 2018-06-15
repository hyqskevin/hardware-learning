`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: kevin_W
// 
// Create Date:    13:16:07 06/03/2017 
// Design Name: 	MIPS R_I_J
// Module Name:    top 
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

module top(clk,rst,PC,PC_new,PC_s,Inst_code,
				rs,rt,rd,address,imm_s,imm_offset,imm_data,wr_data_s,
				R_Data_A,R_Data_B,Write_Reg,W_Addr,W_Data,w_r_s,
				rt_imm_s,ALU_OP,B,ZF,OF,F,
				Mem_Write,M_R_Data);

input wire clk;
input rst;
output [31:0] PC;
output [31:0] PC_new;
output [1:0] PC_s;//PCѡ����
output [31:0] Inst_code;//ָ����

output [25:0] address;//��ַ��������
output [4:0] rs;    //rs��ַ
output [4:0] rt;    //rt��ַ
output [4:0] rd;    //rd��ַ
output [15:0] imm_offset; //������
output [31:0] imm_data;//����չ��������
output imm_s;//�Ƿ���Ҫ��չ

output [31:0] R_Data_A;  //rs����
output [31:0] R_Data_B;  //rt����
output [4:0]W_Addr;//Ŀ�Ĳ�������ַ  Mem_Write;
output [31:0] W_Data;
output Write_Reg;         //�Ƿ�д��
output [1:0] w_r_s;
output [1:0] wr_data_s;

output rt_imm_s;    //rt������immѡ��
output [2:0] ALU_OP;    //������
//output [31:0] A;  
output [31:0] B;   
output [31:0] F;
output [31:0] ZF;
output [31:0] OF;

output Mem_Write;
//output [31:0]Mem_Addr;
//output [31:0] M_W_Data;
output [31:0]M_R_Data;//������ram������������



//��ָ��
   pc pc (
  .clka(clk), 
  .Inst(Inst_code[31:0]), 
  .rsta(rst),
  .PC(PC[31:0]),
  .PC_new(PC_new[31:0]),
  .PC_s(PC_s[1:0]),
  .R_Data_A(R_Data_A[31:0]),
  .imm_data(imm_data[31:0]),
  .addressa(address[25:0])
  );
  
//����ָ��
  analysis analysis_inst( 
		  .zf(ZF[31:0]),
        .inst(Inst_code[31:0]),
        .OP(ALU_OP),
        .rs(rs[4:0]),
        .rt(rt[4:0]),
        .rd(rd[4:0]),
        .Write_Reg(Write_Reg),
        .imm_offset(imm_offset[15:0]),
        .imm_s(imm_s),
        .rt_imm_s(rt_imm_s),
        .Mem_Write(Mem_Write),
		  .addressb(address[25:0]),
        .w_r_s(w_r_s[1:0]),
        .wr_data_s(wr_data_s[1:0]),
        .PC_s(PC_s[1:0])
		  //.rd_rt_s(rd_rt_s),
		  //.alu_mem_s(alu_mem_s),
    );
	 
//��ȡԴ��������ֵ:
	 assign imm_data = (imm_s)?{{16{imm_offset[15]}},imm_offset}:{{16{1'b0}},imm_offset};//imm��չ
    assign W_Addr = (w_r_s[1])?5'b11111:((w_r_s[0])?rt:rd);//�Ĵ���ѡ��
	 
    register Reg(
		  .clkb(clk),
		  .rstb(rst),
        .R_Addr_A(rs[4:0]),
        .R_Addr_B(rt[4:0]),
        .W_Addr(W_Addr[4:0]),
        .W_Data(W_Data[31:0]),    
        .R_Data_A(R_Data_A[31:0]),
        .R_Data_B(R_Data_B[31:0]),
        .Write_Reg(Write_Reg)
    );

//�ӷ���	 
    assign B=(rt_imm_s)?imm_data:R_Data_B;
    alu alu(
    .ALU_OP(ALU_OP),
    .A(R_Data_A[31:0]),
    .B(R_Data_B[31:0]),
    .F(F[31:0]),
    .ZF(ZF[31:0]),
    .OF(OF[31:0])
    );
	 
//���ݴ洢��
wire clk_temp;
wire d_outn;
reg  d_out=0;
assign clk_temp = clk ^ d_out ;
assign d_outn = ~d_out ;
//----
always@(posedge clk_temp)
begin
  d_out <= d_outn ; 
end
	//assign Mem_Addr = F;
	//assign M_W_Data = R_Data_B;
	assign W_Data = (wr_data_s[1])?PC_new:(wr_data_s[0]?M_R_Data:F);

ram ram1 (
	.clka(clk_temp), // input clka
	.wea(Mem_Write), // input [0 : 0] wea
	.addra(F[7:2]), // input [5 : 0] addra
	.dina(R_Data_B[31:0]), // input [31 : 0] dina
	.douta(M_R_Data[31:0]) // output [31 : 0] douta
);
endmodule
