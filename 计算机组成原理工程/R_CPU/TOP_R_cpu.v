`timescale 1ns / 1ps

//¶¥²ãÄ£¿é
module TOP(RST,CLK,PC,rs,rt,rd,Inst_code,F,ZF,OF,A,B,ALU_OP,in,out);

input RST;
input CLK;
input [31:0]in;
output [31:0]PC;
output wire [4:0]rs;
output wire [4:0]rt;
output wire [4:0]rd;
output [31:0]Inst_code;
output [31:0]F;
output ZF;
output OF;    
output wire [31:0]A;
output wire [31:0]B;
output wire [2:0]ALU_OP;
output wire [31:0]out;
					  
wire [5:0]OP,func,shamt;
wire Write_Reg;
wire [31:0]R_Data_A,R_Data_B,W_Data,in;

assign A = R_Data_A;
assign B = R_Data_B;
assign OP = Inst_code[31:26];
assign rs = Inst_code[25:21];
assign rt = Inst_code[20:16];
assign rd = Inst_code[15:11];
assign shamt = Inst_code[10:6];
assign func = Inst_code[5:0];

Get g(
	.RST(RST),
   .CLK(CLK),
	.PC(PC),
   .Inst_code(Inst_code));
	 
REG r(
	.R_Addr_A(rs),                     
   .R_Addr_B(rt),        
   .W_Addr(rd),        
   .Write_Reg(Write_Reg),         
   .W_Data(F),         
   .CLK(CLK),         
   .RST(RST),          
   .R_Data_A(R_Data_A),        
   .R_Data_B(R_Data_B));
	  
ALU a(
	.A(R_Data_A),
	.B(R_Data_B),
	.OP(ALU_OP),
	.ZF(ZF),
	.OF(OF),
	.F(F));
		
Control c(
	.OP(OP),
	.func(func),
	.write_reg(Write_Reg),
	.ALU_OP(ALU_OP));
			
IO io(
	.CLK(CLK),
	.in(in),
	.out(out),
	.W_Data(W_Data),
	.R_Data_B(R_Data_B),
	.F(F));			
endmodule
