`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:36:40 06/08/2017
// Design Name:   REG
// Module Name:   E:/FILES/ISE File/exam4/test4.v
// Project Name:  exam4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: REG
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test4;

	// Inputs
	reg [4:0] R_Addr_A;
	reg [4:0] R_Addr_B;
	reg [4:0] W_Addr;
	reg [31:0] W_Data;
	reg Write_Reg;
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] R_Data_A;
	wire [31:0] R_Data_B;

	// Instantiate the Unit Under Test (UUT)
	REG uut (
		.R_Addr_A(R_Addr_A), 
		.R_Addr_B(R_Addr_B), 
		.W_Addr(W_Addr), 
		.W_Data(W_Data), 
		.R_Data_A(R_Data_A), 
		.R_Data_B(R_Data_B), 
		.Write_Reg(Write_Reg), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		R_Addr_A = 0;
		R_Addr_B = 0;
		W_Addr = 0;
		W_Data = 0;
		Write_Reg = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		
		#100;
		R_Addr_A = 0;
		R_Addr_B = 0;
		W_Addr = 5'b00001;
		W_Data = 32'h1111_1111;
		Write_Reg = 1;
        clk = 1;
		reset = 0;
		
		#10;
		
		#100;
		R_Addr_A = 5'b00001;
		R_Addr_B = 0;
		W_Addr = 5'b0;
		W_Data = 32'h0;
		Write_Reg = 0;
        clk = 1;
		reset = 0;
		
		#100;
		R_Addr_A = 0;
		R_Addr_B = 0;
		W_Addr = 5'b00011;
		W_Data = 32'h2222_2222;
		Write_Reg = 1;
        clk = 0;
		reset = 0;
		
		#10;
		
		#100;
		R_Addr_A = 0;
		R_Addr_B = 5'b00011;
		W_Addr = 5'b00111;
		W_Data = 32'h3333_3333;
		Write_Reg = 0;
        clk = 1;
		reset = 0;
		
		#10;
		
		#100;
		R_Addr_A = 0;
		R_Addr_B = 5'b00111;
		W_Addr = 5'b0;
		W_Data = 32'h0;
		Write_Reg = 0;
        clk = 1;
		reset = 0;
		
		#10;
		
		#100;
		R_Addr_A = 0;
		R_Addr_B = 0;
		W_Addr = 5'b01111;
		W_Data = 32'h4444_4444;
		Write_Reg = 1;
      clk = 0;
		reset = 1;
			
		#10;	
			
		#100;
		R_Addr_A = 0;
		R_Addr_B = 5'b01111;
		W_Addr = 5'b0;
		W_Data = 32'h0;
		Write_Reg = 0;
      clk = 0;
		reset = 0;

		// Add stimulus here

	end
      endmodule


