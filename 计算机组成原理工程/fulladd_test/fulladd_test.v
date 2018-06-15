`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:37 03/30/2017
// Design Name:   fulladd
// Module Name:   E:/Vivado/Vivado File/ISE File/fulladd_test/fulladd_test.v
// Project Name:  fulladd_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladd_test;

	// Inputs
	reg in;
	reg x;
	reg y;

	// Outputs
	wire f;
	wire out;

	// Instantiate the Unit Under Test (UUT)
	fulladd uut (
		.cin(in), 
		.x(x), 
		.y(y), 
		.f(f), 
		.cout(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
        //#10; x<=1'b0; y<=1'b0; in<=1'b0;
        #100 x=1'b0; y=1'b0; in=1'b1;
        #100 x=1'b0; y=1'b1; in=1'b0;
        #100 x=1'b0; y=1'b1; in=1'b1;
        #100 x=1'b1; y=1'b0; in=1'b0;
        #100 x=1'b1; y=1'b0; in=1'b1;
        #100 x=1'b1; y=1'b1; in=1'b0;
        #100 x=1'b1; y=1'b1; in=1'b1;   
        
		// Add stimulus here

	end
      
endmodule

