`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:45:20 06/04/2017 
// Design Name: 
// Module Name:    Reg 
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
module reg1(R_Addr_A,R_Addr_B,Clk,W_Addr,W_Data,R_Data_A,R_Data_B,Reset,Write_Reg);
input Clk,Reset;
input wire Write_Reg;
input wire[4:0] R_Addr_A;
input wire[4:0] W_Addr;
input wire[4:0] R_Addr_B;
input wire[31:0] W_Data;

output wire[31:0] R_Data_A;
output wire[31:0] R_Data_B;

reg[31:0] REG_Files[31:0];

integer i=0;
always @(posedge Clk or posedge Reset)      //ÏÂ½µÑØ´æ´¢
begin
    if(Reset)   //³õÊ¼»¯
    begin
        for(i=0;i<=31;i=i+1)
        REG_Files[i]<=32'h00000000;
    end
    else
        begin
            if(Write_Reg)
            REG_Files[W_Addr]<=W_Data;
        end
end
     assign R_Data_A=REG_Files[R_Addr_A];
    assign R_Data_B=REG_Files[R_Addr_B];
endmodule