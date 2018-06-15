`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: kevin_W
// 
// Create Date:    13:47:01 06/03/2017 
// Design Name: 	MIPS R_I_J
// Module Name:    pc 
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

module pc(clka,rsta,PC_s,PC,addressa,R_Data_A,imm_data,Inst,PC_new);

input clka,rsta;
input [1:0] PC_s;//2位控制信号实现4选1
input [31:0] R_Data_A;
input [31:0] imm_data;
input [25:0] addressa;
output  wire [31:0] Inst;
output  reg [31:0] PC;
output  wire [31:0] PC_new;


assign PC_new=PC+4;

always@(negedge clka or posedge rsta)//上升沿 指令寄存器执行读操作，正脉冲内执行译码和运算 p330
begin 
    if(rsta)
       PC<=32'h0000_0000;
    else 
        begin
            case(PC_s)
                2'b00: PC<={24'b00_0000,PC_new[7:0]};
                2'b01: PC<=R_Data_A;
                2'b10: PC<=PC_new+(imm_data<<2);
                2'b11: PC<={PC_new[31:28],addressa,2'b00}; //?
				default:begin end
            endcase
        end
end

rom rom1 (
  .clka(clka), // input clka
  //.wea(wea), // input [0 : 0] wea
  .addra(PC[7:2]), // input [5 : 0] addra
  //.dina(dina[31:0]), // input [31 : 0] dina
  .douta(Inst[31:0]) // output [31 : 0] douta
);  

endmodule
