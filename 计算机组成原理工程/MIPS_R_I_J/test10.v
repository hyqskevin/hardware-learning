`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:59 06/08/2017
// Design Name:   top
// Module Name:   E:/FILES/ISE File/MIPS_R_I_J/test10.v
// Project Name:  MIPS_R_I_J
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

module test10;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [31:0] PC;
	wire [31:0] PC_new;
	wire [1:0] PC_s;
	wire [31:0] Inst_code;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [25:0] address;
	wire imm_s;
	wire [15:0] imm_offset;
	wire [31:0] imm_data;
	wire [1:0] wr_data_s;
	wire [31:0] R_Data_A;
	wire [31:0] R_Data_B;
	wire Write_Reg;
	wire [4:0] W_Addr;
	wire [31:0] W_Data;
	wire [1:0] w_r_s;
	wire rt_imm_s;
	wire [2:0] ALU_OP;
	wire [31:0] B;
	wire [31:0] ZF;
	wire [31:0] OF;
	wire [31:0] F;
	wire Mem_Write;
	wire [31:0] M_R_Data;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.rst(rst), 
		.PC(PC), 
		.PC_new(PC_new), 
		.PC_s(PC_s), 
		.Inst_code(Inst_code), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.address(address), 
		.imm_s(imm_s), 
		.imm_offset(imm_offset), 
		.imm_data(imm_data), 
		.wr_data_s(wr_data_s), 
		.R_Data_A(R_Data_A), 
		.R_Data_B(R_Data_B), 
		.Write_Reg(Write_Reg), 
		.W_Addr(W_Addr), 
		.W_Data(W_Data), 
		.w_r_s(w_r_s), 
		.rt_imm_s(rt_imm_s), 
		.ALU_OP(ALU_OP), 
		.B(B), 
		.ZF(ZF), 
		.OF(OF), 
		.F(F), 
		.Mem_Write(Mem_Write), 
		.M_R_Data(M_R_Data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#20 rst=0;
		forever #30 clk=~clk;
        
		// Add stimulus here

	end
      
endmodule

