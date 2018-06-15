`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:56:48 05/15/2017 
// Design Name: 
// Module Name:    top7 
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
module top7(rst,clk,choose,LED);
	input rst,clk;
	input [1:0]choose;
	output reg[7:0]LED;
	
	wire [31:0]Inst_code;
	/*test7 test(
	.rst(rst),
	.clk(clk),
	.Inst_code(Inst_code)
	);*/
	test7 instance_name (
    .rst(rst), 
    .clk(clk), 
    .Inst_code(Inst_code)
    );
	
	always@(*)
	begin
		if(rst)
			LED <=8'b0000_0000;
		else
		begin
			case(choose)
				2'b00:LED <= Inst_code[7:0];
				2'b01:LED <= Inst_code[15:8];
				2'b10:LED <= Inst_code[23:16];
				2'b11:LED <= Inst_code[31:24];
			endcase
		end
	end
endmodule
