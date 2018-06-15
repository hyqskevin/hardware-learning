`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: kevin_W
// 
// Create Date:    16:59:19 06/03/2017 
// Design Name: 	MIPS R_I_J
// Module Name:    reg 
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
module register (clkb,rstb,R_Addr_A,R_Addr_B,W_Addr,W_Data,R_Data_A,R_Data_B,Write_Reg);
input clkb,rstb;
input wire Write_Reg;
input wire[4:0] R_Addr_A;
input wire[4:0] W_Addr;
input wire[4:0] R_Addr_B;
input wire[31:0] W_Data;
output wire[31:0] R_Data_A;
output wire[31:0] R_Data_B;
reg[31:0] REG_Files[31:0];

integer i=0;

assign R_Data_A=REG_Files[R_Addr_A];
assign R_Data_B=REG_Files[R_Addr_B];
	 
always @(negedge clkb or posedge rstb)      //ÏÂ½µÑØ´æ´¢
begin
    if(rstb)   
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
endmodule
