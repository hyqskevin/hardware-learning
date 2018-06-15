`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:09:18 06/05/2017
// Design Name:   TOP
// Module Name:   E:/FILES/ISE File/R_CPU/test_R.v
// Project Name:  R_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TOP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_R;

	// Inputs
	reg RST;
	reg CLK;
	reg [31:0] in;

	// Outputs
	wire [31:0] PC;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [31:0] Inst_code;
	wire [31:0] F;
	wire ZF;
	wire OF;
	wire [31:0] A;
	wire [31:0] B;
	wire [2:0] ALU_OP;
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	TOP uut (
		.RST(RST), 
		.CLK(CLK), 
		.PC(PC), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.Inst_code(Inst_code), 
		.F(F), 
		.ZF(ZF), 
		.OF(OF), 
		.A(A), 
		.B(B), 
		.ALU_OP(ALU_OP), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		RST = 0;
		CLK = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

