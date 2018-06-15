`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:50 03/30/2017 
// Design Name: 
// Module Name:    adder32 
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

module fulladd (input cin,x,y,output f,cout);
	//wire[1:0] cout;
	assign f = x^y^cin;
	assign cout = (x & y) | (x & cin) | (y & cin);
endmodule

