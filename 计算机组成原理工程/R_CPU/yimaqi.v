`timescale 1ns / 1ps
//译码及控制单元
module Control(OP,func,write_reg,ALU_OP); 
input [5:0]OP; 
input [5:0]func;  
output reg write_reg; 
output reg [2:0]ALU_OP; 
always@(*) 
begin     
   if(OP==6'b000000)  
	begin    
	   case(func)      
		    6'b100000:ALU_OP<=3'B100;    
			 6'b100010:ALU_OP<=3'B101;    
			 6'b100100:ALU_OP<=3'B000;    
			 6'b100101:ALU_OP<=3'B001;    
			 6'b100110:ALU_OP<=3'B010; 
          6'b100111:ALU_OP<=3'B011;    
			 6'b101011:ALU_OP<=3'B110;    
			 6'b000100:ALU_OP<=3'B111;    
	   endcase   
		write_reg=(func==6'b000000)?1'b0:1'b1;  
	end 
end  

endmodule
