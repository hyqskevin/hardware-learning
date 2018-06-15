`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:15:52 06/07/2017 
// Design Name: 
// Module Name:    analysis_I 
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

module analysis_I (ZF_I,Inst_code_I,rs_I,rt_I,rd_I,imm_offset_I,PC_s_I,w_r_s_I,imm_s_I,Write_Reg_I,wr_data_s_I,rt_imm_s_I,ALU_OP_I,Mem_Write_I);

input [31:0] Inst_code_I;//OP+rs+rt+rd+shamt+func
input [31:0]ZF_I;

output reg [4:0] rs_I;
output reg [4:0] rt_I;
output reg [4:0] rd_I;
output reg [15:0] imm_offset_I;
output reg [1:0] w_r_s_I;
output reg [1:0] PC_s_I;
output reg Write_Reg_I;
output reg [1:0] wr_data_s_I;
output reg imm_s_I;
output reg rt_imm_s_I;
output reg [2:0] ALU_OP_I;
output reg Mem_Write_I;

always@(*)
begin
//I型指令 立即数寻址
 if(Inst_code_I[31:29]==3'b001) //op[5:3]=3'b001 判断I型 立即寻址
    begin
      imm_offset_I<=Inst_code_I[15:0];
      rt_I<=Inst_code_I[20:16];       //rt
      rs_I<=Inst_code_I[25:21];       //rs
		w_r_s_I<=2'b01;					//rd_rt_s=1
		rt_imm_s_I<=1;						//imm作为源操作数
		wr_data_s_I<=2'b00;				// alu_mem_s=0
      Mem_Write_I<=0;					//不写入数据存储器
      Write_Reg_I<=1;
      PC_s_I<=2'b00;

      case(Inst_code_I[31:26])//判断为I型
      6'b001000: begin imm_s_I<=1; ALU_OP_I<=3'b100;end
      6'b001100: begin imm_s_I<=0; ALU_OP_I<=3'b000;end
      6'b001110: begin imm_s_I<=0; ALU_OP_I<=3'b010;end
      6'b001011: begin imm_s_I<=0; ALU_OP_I<=3'b110;end
		default: begin imm_s_I<=1; ALU_OP_I<=3'b100;end
      endcase
    end
	 
	 
				//I型指令 存储器访问
  else if(Inst_code_I[31:30]==2'b10) //op[5:4]=3'b10 判断I型 存取
    begin
      imm_offset_I<=Inst_code_I[15:0];
      rt_I<=Inst_code_I[20:16];       //rt
      rs_I<=Inst_code_I[25:21];       //rs
		//w_r_s=2'b01;					//rd_rt_s=1
		rt_imm_s_I<=1;						//imm作为源操作数
		//wr_data_s=2'b01;				// alu_mem_s=1
      imm_s_I<=1;
      PC_s_I<=2'b00;

      case(Inst_code_I[31:26])
      6'b100011: begin 
						w_r_s_I<=2'b01;	 //rd_rt_s=1
						wr_data_s_I<=2'b01;// alu_mem_s=1
						Mem_Write_I<=0;
						Write_Reg_I<=1;
						ALU_OP_I<=3'b100;end
      6'b101011: begin  
						Mem_Write_I<=1;
						Write_Reg_I<=0;
						ALU_OP_I<=3'b100;end
		default: begin 
						w_r_s_I<=2'b01;	 
						wr_data_s_I<=2'b01;
						Mem_Write_I<=0;
						Write_Reg_I<=1;
						ALU_OP_I<=3'b100;end
      endcase
    end
	 
	 
				//I型指令 转移
    else if(Inst_code_I[31:27]==5'b00010)//op[5:1]=5'b00010 判断I型 转移
     begin
      imm_offset_I<=Inst_code_I[15:0];
      rt_I<=Inst_code_I[20:16];       //rt
      rs_I<=Inst_code_I[25:21];       //rs
		rt_imm_s_I<=0;						//rt作为源操作数
		Write_Reg_I<=0;
		Mem_Write_I<=0;					//不写入数据存储器
		
     case(Inst_code_I[31:26])
     6'b000100:begin 
						ALU_OP_I<=3'b101;					
						PC_s_I<=(ZF_I?2'b10:2'b00); end
     6'b000101:begin 
						ALU_OP_I<=3'b101;
						PC_s_I<=(ZF_I?2'b00:2'b10); end
	  default: begin 
						ALU_OP_I<=3'b101;					
						PC_s_I<=(ZF_I?2'b10:2'b00); end
     endcase
     end
end	  
endmodule
