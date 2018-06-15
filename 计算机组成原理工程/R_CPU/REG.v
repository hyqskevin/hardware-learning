`timescale 1ns / 1ps
//¼Ä´æÆ÷¶Ñ

module REG(R_Addr_A,R_Addr_B,W_Addr,Write_Reg,W_Data,R_Data_A,R_Data_B,CLK,RST);

input CLK;         
input RST; 
input [4:0]R_Addr_A;                     
input [4:0]R_Addr_B;        
input [4:0]W_Addr;        
input Write_Reg;      
input [31:0]W_Data;                  
output [31:0]R_Data_A;        
output [31:0]R_Data_B;

reg [31:0]REG_Files[0:31];
reg [5:0]i;

assign R_Data_A = REG_Files[R_Addr_A];
assign R_Data_B = REG_Files[R_Addr_B];


always @(negedge CLK or posedge RST)
begin 
  if(RST)
    begin
      for(i=0;i<31;i=i+1)
	     REG_Files[i] <= 32'b0;
    end
  else
    begin
      if(Write_Reg)
	      REG_Files[W_Addr]<=W_Data;
    end
end
endmodule
