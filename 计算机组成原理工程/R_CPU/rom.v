`timescale 1ns / 1ps

module ROM(CLK,addr,douta);
    input CLK;  
	 input [7:2]addr; 
	 output [31:0]douta;  
	 ROM_B uut_ROM (
	 .clka(CLK), // input clka 	 
	 .addra(addr[7:2]), // input [5 : 0] addra 	 
	 .douta(douta) // output [31 : 0] douta 
	 );  

endmodule 
