`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:48:09 05/23/2017 
// Design Name: 
// Module Name:    mips_decode 
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
module mips_decode(Inst_code,op_code,rs_addr,rt_addr,rd_addr,shamt,func/*imm,address*/);
	input [31:0]Inst_code;
	output [5:0]op_code,func;
	output [4:0]rs_addr,rt_addr,rd_addr,shamt;
	
	mips_inst(
	.Inst_code(Inst_code[31:0]));
	
	assign Inst_code[31:26] = op_code[5:0];
	assign Inst_code[25:21] = rs_addr[4:0];
	assign Inst_code[20:16] = rt_addr[4:0];
	assign Inst_code[15:11] = rd_addr[4:0];
	assign Inst_code[10:6] = shamt[4:0];
	assign Inst_code[5:0] = func[5:0];
endmodule
