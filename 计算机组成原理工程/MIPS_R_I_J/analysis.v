`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: kevin_W
// 
// Create Date:    14:18:37 06/03/2017 
// Design Name: 	MIPS R_I_J
// Module Name:    analysis 
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

module analysis(zf,inst,addressb,rs,rt,rd,imm_offset,PC_s,w_r_s,imm_s,Write_Reg,wr_data_s,rt_imm_s,OP,Mem_Write);

input [31:0] inst;//OP+rs+rt+rd+shamt+func
input [31:0]zf;

output reg [4:0] rs;
output reg [4:0] rt;
output reg [4:0] rd;
output reg [15:0] imm_offset;
output reg [25:0] addressb;
output reg [1:0] w_r_s;
output reg [1:0] PC_s;
output reg Write_Reg;
output reg [1:0] wr_data_s;
output reg imm_s;
output reg rt_imm_s;
output reg [2:0] OP;
output reg Mem_Write;

//output reg alu_mem_s;
//output reg rd_rt_s;


always@(*)
begin
				//R型指令

    if(inst[31:26]==6'b000000) //op=6'b000000 判断为R型
	 begin
      rd<=inst[15:11];       //rd
      rt<=inst[20:16];       //rt
      rs<=inst[25:21];       //rs
      w_r_s<=2'b00;					//rd_rt_s=0;
		rt_imm_s<=0;						//rt作为源操作数
      imm_s<=0;                   //? ——
      wr_data_s<=2'b00;           // alu_mem_s=0;
      Mem_Write<=0;					//不写入数据存储器
		Write_Reg<=1;
		PC_s<=2'b00;
		
      case(inst[5:0])   //func[5:0] 对应 ALU
			6'b100000: begin OP<=3'b100; end
         6'b100010: begin OP<=3'b101; end
         6'b100100: begin OP<=3'b000; end
         6'b100101: begin OP<=3'b001; end
         6'b100110: begin OP<=3'b010; end
         6'b100111: begin OP<=3'b011; end
         6'b101011: begin OP<=3'b110; end 
         6'b000100: begin OP<=3'b111; end 
			default: begin end
        endcase
		end
		
				//I型指令 立即数寻址
  else if(inst[31:29]==3'b001) //op[5:3]=3'b001 判断I型 立即寻址
    begin
      imm_offset<=inst[15:0];
      rt<=inst[20:16];       //rt
      rs<=inst[25:21];       //rs
		w_r_s<=2'b01;					//rd_rt_s=1
		rt_imm_s<=1;						//imm作为源操作数
		wr_data_s<=2'b00;				// alu_mem_s=0
      Mem_Write<=0;					//不写入数据存储器
      Write_Reg<=1;
      PC_s<=2'b00;

      case(inst[31:26])//判断为I型
      6'b001000: begin imm_s<=1; OP<=3'b100;end
      6'b001100: begin imm_s<=0; OP<=3'b000;end
      6'b001110: begin imm_s<=0; OP<=3'b010;end
      6'b001011: begin imm_s<=0; OP<=3'b110;end
		default: begin end
      endcase
    end
	 
	 
				//I型指令 存储器访问
	else if(inst[31:30]==2'b10) //op[5:4]=3'b10 判断I型 存取
    begin
      imm_offset<=inst[15:0];
      rt<=inst[20:16];       //rt
      rs<=inst[25:21];       //rs
		//w_r_s=2'b01;					//rd_rt_s=1
		rt_imm_s<=1;						//imm作为源操作数
		//wr_data_s=2'b01;				// alu_mem_s=1
      imm_s<=1;
      PC_s<=2'b00;

      case(inst[31:26])
      6'b100011: begin 
						w_r_s<=2'b01;	 //rd_rt_s=1
						wr_data_s<=2'b01;// alu_mem_s=1
						Mem_Write<=0;
						Write_Reg<=1;
						OP<=3'b100;end
      6'b101011: begin  
						Mem_Write<=1;
						Write_Reg<=0;
						OP<=3'b100;end
		default: begin end
      endcase
    end
	 
	 
				//I型指令 转移
    else if(inst[31:27]==5'b00010)//op[5:1]=5'b00010 判断I型 转移
     begin
      imm_offset<=inst[15:0];
      rt<=inst[20:16];       //rt
      rs<=inst[25:21];       //rs
		rt_imm_s<=0;						//rt作为源操作数
		Write_Reg<=0;
		Mem_Write<=0;					//不写入数据存储器
		
     case(inst[31:26])
     6'b000100:begin 
						OP<=3'b101;					
						PC_s<=(zf?2'b10:2'b00); end
     6'b000101:begin 
						OP<=3'b101;
						PC_s<=(zf?2'b00:2'b10); end
	  default: begin  end
     endcase
     end
	  
	  
				//处理J型跳转指令
    else if(inst[31:27]==5'b00001)//判断J型
    begin
     addressb<=inst[25:0];
	  Mem_Write<=0;				//不写入数据存储器
	  	  PC_s<=2'b11;
		  
     case(inst[31:26])
     6'b000010:begin 
						Write_Reg<=0; end
     6'b000011:begin 
						w_r_s<=(2'b10||2'b11);
						wr_data_s<=(2'b10||2'b11);
						Write_Reg<=1;end
		default: begin end
     endcase
    end

end
endmodule
