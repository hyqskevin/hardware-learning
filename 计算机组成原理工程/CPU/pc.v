`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:05:42 06/04/2017 
// Design Name: 
// Module Name:    pc 
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
module pc(clka,douta,rst,PC,PC_new );
input rst;
input clka;
output  wire [31:0] douta;
output  reg [31:0] PC;
output  wire [31:0] PC_new;



assign PC_new=PC+4;
always@(posedge rst or negedge clka)
begin 
    if(rst)
       PC<=32'h0000_0000;
    else 
       PC<={24'b00_0000,PC_new[7:0]};
		 
end

rom rom(
  .clka(clka), // input clka
  //.wea(wea), // input [0 : 0] wea
  .addra(PC[7:2]), // input [5 : 0] addra
  //.dina(dina), // input [31 : 0] dina
  .douta(douta) // output [31 : 0] douta
);
endmodule
