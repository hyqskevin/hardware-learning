`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:43:53 06/08/2017
// Design Name:   top
// Module Name:   E:/FILES/ISE File/CPU/test_ri.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ri;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [2:0] ALU_OP;
	wire [31:0] inst;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [31:0] rs_data;
	wire [31:0] rt_data;
	//wire [31:0] rd_data;
	wire [31:0] ZF;
	wire [31:0] OF;
	wire Write_Reg;
	wire [31:0] PC;
	wire [31:0] PC_new;
	wire rd_rt_s;
	wire [4:0] W_Addr;
	wire [15:0] imm;
	wire [31:0] W_Data;
	wire imm_s;
	wire [31:0] imm_data;
	wire [31:0] ALU_B;
	wire rt_imm_s;
	wire Mem_Write;
	wire [31:0] M_R_Data;
	wire [31:0] ALU_Data;
	wire alu_mem_s;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.reset(reset), 
		.ALU_OP(ALU_OP), 
		.inst(inst), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.rs_data(rs_data), 
		.rt_data(rt_data), 
		//.rd_data(rd_data), 
		.ZF(ZF), 
		.OF(OF), 
		.Write_Reg(Write_Reg), 
		.PC(PC), 
		.PC_new(PC_new), 
		.rd_rt_s(rd_rt_s), 
		.W_Addr(W_Addr), 
		.imm(imm), 
		.W_Data(W_Data), 
		.imm_s(imm_s), 
		.imm_data(imm_data), 
		.ALU_B(ALU_B), 
		.rt_imm_s(rt_imm_s), 
		.Mem_Write(Mem_Write), 
		.M_R_Data(M_R_Data), 
		.ALU_Data(ALU_Data), 
		.alu_mem_s(alu_mem_s)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#10;reset = 0;
      forever #20 clk=~clk; 
		// Add stimulus here

	end
      
endmodule

