`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:06:26 06/04/2017 
// Design Name: 
// Module Name:    analysis_inst 
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
module analysis(inst,ALU_OP,rs,rt,rd,Write_Reg,imm,rd_rt_s,imm_s,rt_imm_s,Mem_Write,alu_mem_s);
input [31:0] inst;
output reg [2:0] ALU_OP;
output reg [4:0] rs;
output reg [4:0] rt;
output reg [4:0] rd;
output reg Write_Reg;
output reg [15:0] imm;
output reg rd_rt_s;
output reg imm_s;
output reg rt_imm_s;
output reg Mem_Write;
output reg alu_mem_s;
//output reg [25:0] address;
//output reg [1:0] w_r_s;
//output reg [1:0] wr_data_s;
//output reg [1:0] PC_s;

always@(*)
begin

//R型指令
	if(inst[31:26]==6'b000000) //判断是否为R型
    begin
      rd=inst[15:11];       //rd
      rt=inst[20:16];       //rt
      rs=inst[25:21];       //rs
      //w_r_s=2'b00;
      imm_s=0;//
      //wr_data_s=2'b00;
      alu_mem_s=0;
      Mem_Write=0;//是否写入数据存储器
		Write_Reg=1;
      rd_rt_s=0;
      rt_imm_s=0;//rt作为源操作数
      case(inst[5:0])   //映射对应的ALU
        6'b100000:begin ALU_OP=3'b100; end
         6'b100010:begin ALU_OP=3'b101; end
         6'b100100:begin ALU_OP=3'b000; end
         6'b100101:begin ALU_OP=3'b001; end
         6'b100110:begin ALU_OP=3'b010;end
         6'b100111:begin ALU_OP=3'b011; end
         6'b101011:begin ALU_OP=3'b110; end 
         6'b000100:begin ALU_OP=3'b111; end 
			default:begin end
        endcase
     end
	  
	  
//I型立即寻址指令
  else if(inst[31:29]==3'b001)
    begin
      imm=inst[15:0];
      rt=inst[20:16];       //rt
      rs=inst[25:21];       //rs
      Mem_Write=0;//是否写入数据存储器
      rd_rt_s=1;//rt作为目的存储器
      rt_imm_s=1;//imm作为源操作数
      alu_mem_s=0;//以alu结果输出
      //w_r_s=2'b01;
      Write_Reg=1;
      //wr_data_s=2'b00;
      //PC_s=2'b00;
      //判断属于那条指令
      case(inst[31:26])
      6'b001000: begin imm_s=1; ALU_OP=3'B100;end
      6'b001100: begin imm_s=0; ALU_OP=3'B000;end
      6'b001110: begin imm_s=0; ALU_OP=3'B010;end
      6'b001011: begin imm_s=0; ALU_OP=3'B110;end
		default:begin end
      endcase
    end
	 
//I型取数/存数指令
  else if(inst[31:30]==2'b10&&inst[28:26]==3'b011)
    begin
      imm=inst[15:0];
      rt=inst[20:16];       //rt
      rs=inst[25:21];       //rs
      rd_rt_s=1;//rt作为目的存储器
      rt_imm_s=1;//imm作为源操作数
      imm_s=1;
      //w_r_s=2'b01;
      //wr_data_s=2'b01;
      //PC_s=2'b00;
      //判断属于那条指令
      //读取数据时，以mem输出的数据写入，所以alu_mem_s=1;
      case(inst[31:26])
      6'b100011: begin alu_mem_s=1; Mem_Write=0;Write_Reg=1;ALU_OP=3'B100;end
      6'b101011: begin  Mem_Write=1;Write_Reg=0;ALU_OP=3'B100;end
		default:begin end
      endcase
    end
	else begin end 
end 
endmodule
