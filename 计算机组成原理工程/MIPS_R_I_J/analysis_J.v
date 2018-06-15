`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:17:31 06/07/2017 
// Design Name: 
// Module Name:    analysis_J 
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

module analysis_J(Inst_code_J,address_J,w_r_s_J,PC_s_J,Write_Reg_J,wr_data_s_J,Mem_Write_J);

input [31:0] Inst_code_J;//OP+rs+rt+rd+shamt+func

output reg [25:0] address_J;
output reg [1:0] w_r_s_J;
output reg [1:0] PC_s_J;
output reg Write_Reg_J;
output reg [1:0] wr_data_s_J;
output reg Mem_Write_J;

//处理J型跳转指令
always@(*)
begin
 if(Inst_code_J[31:27]==5'b00001)//判断J型
     begin
     address_J<=Inst_code_J[25:0];
	  Mem_Write_J<=0;				//不写入数据存储器
	  	  PC_s_J<=2'b11;
		  
     case(Inst_code_J[31:26])
     6'b000010:begin 
						Write_Reg_J<=0; end
     6'b000011:begin 
						w_r_s_J<=(2'b10||2'b11);
						wr_data_s_J<=(2'b10||2'b11);
						Write_Reg_J<=1;end
		default: Write_Reg_J<=0;
     endcase
    end
end
endmodule
