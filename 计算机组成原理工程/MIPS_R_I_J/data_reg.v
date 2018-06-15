`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:00 06/07/2017 
// Design Name: 
// Module Name:    data
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

module data_reg (clk,Mem_Addr,M_W_Data,M_R_Data,Mem_Write);
	input clk,Mem_Write;
	input [7:2]Mem_Addr;
	input [31:0]M_W_Data;
	output wire [31:0]M_R_Data;



always@(posedge Clk)
	begin
		LED<=0;
		M_W_Data<=0;
		//M_R_Data<=0;
		if(Mem_Write<=0)
		begin
			case(Choose)
				2'b00:LED<=M_R_Data[7:0];
				2'b01:LED<=M_R_Data[15:8];
				2'b10:LED<=M_R_Data[23:16];
				2'b11:LED<=M_R_Data[31:24];
			endcase
		end
		else if(Mem_Write)
		begin
			case(Choose)
			2'b00:M_W_Data<=32'h1111_2222;
			2'b01:M_W_Data<=32'h3333_6666;
			2'b10:M_W_Data<=32'h5555_8888;
			2'b11:M_W_Data<=32'haaaa_ffff;
			endcase
		end
	end
endmodule

	