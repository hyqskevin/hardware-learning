`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:04:42 06/04/2017 
// Design Name: 
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
module top(clk,reset,ALU_OP,inst,rs,rt,rs_data,rt_data,rd,ZF,OF,Write_Reg,PC,PC_new,rd_rt_s,W_Addr,imm,W_Data,imm_s,imm_data
,ALU_B,rt_imm_s,Mem_Write,M_R_Data,ALU_Data,alu_mem_s);

input wire clk;
input reset;

output [31:0] PC;
output [31:0] PC_new;

output [2:0] ALU_OP;    //������
output [31:0] inst;     //ָ����
output [4:0] rs;    //rs��ַ
output [4:0] rt;    //rt��ַ
output [4:0] rd;    //rd��ַ
output [31:0] rs_data;  //rs����
output [31:0] rt_data;  //rt����
//output [31:0] rd_data;  //rd����

output [31:0]ZF;
output [31:0]OF;
output Write_Reg;           //�Ƿ�д��
output [31:0] W_Data;
output rd_rt_s; //�����Ǹ���ΪĿ�ļĴ���
output [4:0]W_Addr;//Ŀ�Ĳ�������ַ
output [15:0] imm; //������
output [31:0] imm_data;//��չ������
output imm_s;//��չ�ź�
output rt_imm_s;    //B��ѡ��rt������imm
output [31:0] ALU_B;    //ALU_B�˿�����
output Mem_Write;       //�Ƿ�д������rom
output [31:0]M_R_Data;
output [31:0]ALU_Data;//ALU����
output alu_mem_s;
//output [1:0] w_r_s;
//output [1:0] wr_data_s;

    //��ָ��
   pc pc1 (
  .clka(clk), 
  .douta(inst), 
  .rst(reset),
  .PC(PC),
  .PC_new(PC_new)
  );
  
  
//����ָ��
  analysis analysis_inst(  
        .inst(inst),
        .ALU_OP(ALU_OP),
        .rs(rs),
        .rt(rt),
        .rd(rd),
        .Write_Reg(Write_Reg),
        .imm(imm),
        .rd_rt_s(rd_rt_s),
        .imm_s(imm_s),
        .rt_imm_s(rt_imm_s),
        .Mem_Write(Mem_Write),
        .alu_mem_s(alu_mem_s)
    );

    //��ȡԴ��������ֵ:
    assign W_Addr = (rd_rt_s)?rt:rd;
    assign imm_data = (imm_s)?{{16{imm[15]}},imm}:{{16{1'b0}},imm};

    reg1 Reg(
        .R_Addr_A(rs),
        .R_Addr_B(rt),
        .Clk(clk),
        .W_Addr(W_Addr),
        .W_Data(W_Data),    
        .R_Data_A(rs_data),
        .R_Data_B(rt_data),
        .Reset(reset),
        .Write_Reg(Write_Reg) 
    );
	 
    assign ALU_B=(rt_imm_s)?imm_data:rt_data;
	 
    //������
    alu ALU(
    .ALU_OP(ALU_OP),
    .A(rs_data),
    .B(ALU_B),
    .F(ALU_Data),
    .ZF(ZF),
    .OF(OF)
    );
//----
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

	assign W_Data = alu_mem_s?M_R_Data:ALU_Data;

    //���ݴ洢��
  ram ram (
  .clka(clk_temp), // input clka
  .wea(Mem_Write), // input [0 : 0] wea
  .addra(ALU_Data[5:0]), // input [5 : 0] addra
  .dina(rt_data), // input [31 : 0] dina
  .douta(M_R_Data) // output [31 : 0] douta
);


endmodule
