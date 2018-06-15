`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:23:18 05/16/2017
// Design Name:   top7
// Module Name:   E:/FILES/ISE File/test7/test_7.v
// Project Name:  test7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_7;

	// Inputs
	reg rst;
	reg clk;
	reg [1:0] choose;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	top7 uut (
		.rst(rst), 
		.clk(clk), 
		.choose(choose), 
		.LED(LED)
	);
	

	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;
		choose = 0;
		
		// Wait 100 ns for global reset to finish
      #50 rst=0;
		
		#50 clk=1;	
		choose = 2'b00;
		#100 choose = 2'b01;
		#100 choose = 2'b10;
		#100 choose = 2'b11;
		
		#100 rst=1; clk=0;
		#50 rst = 0;
		
		#50 clk=1;	
		choose = 2'b00;
		#100 choose = 2'b01;
		#100 choose = 2'b10;
		#100 choose = 2'b11;
		// Add stimulus here

	end
      
endmodule

