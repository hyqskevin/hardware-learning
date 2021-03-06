`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:34:01 05/23/2017 
// Design Name: 	wpx
// Module Name:    mips_inst 
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
module mips_inst(rst,clk,Inst_code);
	input rst,clk;
	output wire[31:0] Inst_code;
	//output reg[7:0] LED;
	//wire [1:0]choose;
	reg [31:0]PC_new;
	reg [31:0]PC;

	mips_inst_ipcore your_instance_name (
  .clka(clk), // input clka
  .addra(PC[7:2]), // input [5 : 0] addra
  .douta(Inst_code[31:0]) // output [31 : 0] douta
	);
	
	always@(posedge rst or posedge clk)
		begin
			if(rst)
			PC <= 32'h0000_0000;
			else
			//PC <= PC[7:0];
			PC <= {24'h00_0000,PC[7:0]};
		end
	initial PC_new <= PC[31:8]+4;			
endmodule
