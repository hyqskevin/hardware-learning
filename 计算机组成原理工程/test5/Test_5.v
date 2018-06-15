`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:51:41 05/11/2017
// Design Name:   test5
// Module Name:   E:/FILES/ISE File/test5/Test_5.v
// Project Name:  test5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test5
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_5;

	// Inputs
	reg [7:2] Mem_Addr;
	reg Mem_Write;
	reg Clk;
	reg [1:0] Choose;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	test5 uut (
		.Mem_Addr(Mem_Addr), 
		.Mem_Write(Mem_Write), 
		.Clk(Clk), 
		.Choose(Choose), 
		.LED(LED)
	);


	initial begin
		// Initialize Inputs
		Mem_Addr = 0;
		Mem_Write = 0;
		Clk = 0;
		Choose = 0;
		// Wait 100 ns for global reset to finish
		#100;
		Mem_Addr = 6'b000001;
		Mem_Write = 1;
		Clk = 0;
		Choose = 2'b01;
      
		#100;
		Mem_Addr = 6'b000001;
		Mem_Write = 1;
		Clk = 1;
		Choose = 2'b10;
		
		#100;
		Mem_Addr = 6'b000011;
		Mem_Write = 1;
		Clk = 1;
		Choose = 2'b11;
		
		#100;
		Mem_Addr =0;
		Mem_Write =0;
		Clk = 0;
		Choose =0;
		
		#100;
		Mem_Addr = 6'b000001;
		Mem_Write = 0;
		Clk = 1;
		Choose = 2'b10;

		#100;
		Mem_Addr = 6'b000011;
		Mem_Write = 0;
		Clk = 1;
		Choose = 2'b11;		
		
		#100;
		Mem_Addr = 6'b000101;
		Mem_Write = 0;
		Clk = 1;
		Choose = 2'b10;	
		// Add stimulus here

	end
      
endmodule

