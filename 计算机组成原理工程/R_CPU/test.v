`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:32 05/03/2017
// Design Name:   TOP_R_cpu
// Module Name:   G:/wendang/jizu/R_CPU/test.v
// Project Name:  R_CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TOP_R_cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg rst;
	reg clk;

	// Outputs
	wire [31:0] PC;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [31:0] Inst_code;
	wire [31:0] Fn;
	wire ZFn;
	wire OFn;
	wire [31:0]A;
	wire [31:0]B;
   wire [2:0]ALU_OP;
	// Instantiate the Unit Under Test (UUT)
	TOP_R_cpu uut (
		.rst(rst), 
		.clk(clk), 
		.PC(PC), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.Inst_code(Inst_code), 
		.Fn(Fn), 
		.ZFn(ZFn), 
		.OFn(OFn),
		.A(A),
		.B(B),
		.ALU_OP(ALU_OP)
	);

	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;        
		// Add stimulus here

	end
always #100 clk = ~clk;      
endmodule

