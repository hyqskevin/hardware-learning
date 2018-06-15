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
output [1:0] PC_s;//PC选择器
output [31:0] Inst_code;//指令存放

output [25:0] address;//地址解析数据
output [4:0] rs;    //rs地址
output [4:0] rt;    //rt地址
output [4:0] rd;    //rd地址
output [15:0] imm_offset; //立即数
output [31:0] imm_data;//被扩展的立即数
output imm_s;//是否需要扩展

output [31:0] R_Data_A;  //rs数据
output [31:0] R_Data_B;  //rt数据
output [4:0]W_Addr;//目的操作数地址  Mem_Write;
output [31:0] W_Data;
output Write_Reg;         //是否写入
output [1:0] w_r_s;
output [1:0] wr_data_s;

output rt_imm_s;    //rt或者是imm选择
output [2:0] ALU_OP;    //操作符
//output [31:0] A;  
output [31:0] B;   
output [31:0] F;
output [31:0] ZF;
output [31:0] OF;

output Mem_Write;
//output [31:0]Mem_Addr;
//output [31:0] M_W_Data;
output [31:0]M_R_Data;//从数据ram读出来的数据



//读指令
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
  
//解析指令
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
	 
//读取源操作数的值:
	 assign imm_data = (imm_s)?{{16{imm_offset[15]}},imm_offset}:{{16{1'b0}},imm_offset};//imm扩展
    assign W_Addr = (w_r_s[1])?5'b11111:((w_r_s[0])?rt:rd);//寄存器选择
	 
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

//加法器	 
    assign B=(rt_imm_s)?imm_data:R_Data_B;
    alu alu(
    .ALU_OP(ALU_OP),
    .A(R_Data_A[31:0]),
    .B(R_Data_B[31:0]),
    .F(F[31:0]),
    .ZF(ZF[31:0]),
    .OF(OF[31:0])
    );
	 
//数据存储器
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
