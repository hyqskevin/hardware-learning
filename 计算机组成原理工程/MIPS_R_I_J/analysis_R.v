`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:11:12 06/07/2017 
// Design Name: 
// Module Name:    analysis_R 
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

module analysis_R(rs_R,rt_R,rd_R,rt_imm_s_R,imm_s_R,wr_data_s_R,Mem_Write_R,Write_Reg_R,w_r_s_R,PC_s_R,ALU_OP_R);

//input [31:0] Inst_code_R;//OP+rs+rt+rd+shamt+func

output reg [4:0] rs_R;
output reg [4:0] rt_R;
output reg [4:0] rd_R;
output reg rt_imm_s_R;
output reg imm_s_R;
output reg [1:0] wr_data_s_R;
output reg Mem_Write_R;
output reg Write_Reg_R;
output reg [1:0] w_r_s_R;
output reg [1:0] PC_s_R;
output reg [2:0] ALU_OP_R;
//output reg [15:0] imm_offset;
//output reg [25:0] address;



				//R型指令
always@(*)
begin
 //if(Inst_code_R[31:26]==6'b000000) //op=6'b000000 判断为R型
    begin
      rd_R<=Inst_code_R[15:11];       //rd
      rt_R<=Inst_code_R[20:16];       //rt
      rs_R<=Inst_code_R[25:21];       //rs
      w_r_s_R<=2'b00;					//rd_rt_s=0;
		rt_imm_s_R<=0;						//rt作为源操作数
      imm_s_R<=0;                   //? --
      wr_data_s_R<=2'b00;           // alu_mem_s=0;
      Mem_Write_R<=0;					//不写入数据存储器
		Write_Reg_R<=1;
		PC_s_R<=2'b00;
		
      case(Inst_code_R[5:0])   //func[5:0] 对应 ALU
			6'b100000: begin ALU_OP_R<=3'b100; end
         6'b100010: begin ALU_OP_R<=3'b101; end
         6'b100100: begin ALU_OP_R<=3'b000; end
         6'b100101: begin ALU_OP_R<=3'b001; end
         6'b100110: begin ALU_OP_R<=3'b010; end
         6'b100111: begin ALU_OP_R<=3'b011; end
         6'b101011: begin ALU_OP_R<=3'b110; end 
         6'b000100: begin ALU_OP_R<=3'b111; end 
			default: ALU_OP_R<=3'b000;
        endcase
     end
end
endmodule
