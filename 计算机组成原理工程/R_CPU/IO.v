`timescale 1ns / 1ps

module IO(CLK,in,out,W_Data,R_Data_B,rs,F);

input CLK;
input [31:0]in;
input [1:0]rs;
input [31:0]R_Data_B;
input [31:0]F;
output [31:0]W_Data;
output [31:0]out;

wire [1:0]rs;
wire [31:0]in;
wire [31:0]R_Data_B;
reg [31:0]out;
reg [31:0]W_Data;

integer i;

always @ (*)
begin
	if(rs)
	begin
		for(i=0;i<4;i=i+1)
		begin
		W_Data<=in;
		end
	end
	else W_Data<=F;
end

always @ (negedge CLK)
begin
	out<=R_Data_B;
end
endmodule
