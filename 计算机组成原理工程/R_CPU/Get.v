`timescale 1ns / 1ps
//Ö¸Áî´æ´¢Æ÷
module Get(RST,CLK,PC,Inst_code); 
    input CLK;   
    input RST; 
	 output wire [31:0]Inst_code;
	 output  reg[31:0]PC; 
    
	 wire [31:0]PC_new; 
	 assign PC_new=PC+4;  
    ROM rom(
	     CLK,
		  PC[7:2],
		  Inst_code
		  ); 
    always@(posedge CLK or posedge RST) 
    begin       
	     if(RST) 
		      begin PC<=32'H00000000;end     
		  else  
		      begin PC<=PC_new;end 
	 end  
endmodule


