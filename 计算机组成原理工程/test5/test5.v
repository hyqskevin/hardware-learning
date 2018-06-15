`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:31:06 05/11/2017 
// Design Name: 
// Module Name:    test5 
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
module test5(Mem_Addr,Mem_Write,Clk,Choose,LED);//逻辑开关，读写，时钟，选择
	input [7:2]Mem_Addr;
	input [1:0]Choose;
	input Mem_Write,Clk;
	output reg [7:0]LED;//8盏8位LED
	reg [31:0]M_W_Data;
	/*reg*/wire [31:0]M_R_Data;//Target <M_R_Data> of concurrent assignment or output port connection should be a net type.
	
	RAM_B test5 (
  .clka(Clk), // input clka
  .wea(Mem_Write), // input [0 : 0] wea
  .addra(Mem_Addr[7:2]), // input [5 : 0] addra
  .dina(M_W_Data), // input [31 : 0] dina
  .douta(M_R_Data) // output [31 : 0] douta
	);
	
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
