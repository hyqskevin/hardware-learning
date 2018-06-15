`timescale 1ns / 1ps
//改造的加法器
module ALU(A,B,OP,ZF,OF,F);

input [31:0]A,B;
input [4:0]OP;
output [31:0]F;
output ZF,OF;

reg [31:0]F;
reg ZF,OF;
reg C32;
always@(*)
begin
     case (OP)
        4'b0000:begin F<=A&B; OF<=0; end
		  4'b0001:begin F<=A|B; OF<=0; end
		  4'b0010:begin F<=A^B; OF<=0; end
		  4'b0011:begin F<=~(A|B); OF<=0; end
		  4'b0100:begin {C32,F}<=A+B; OF<=C32^F[31]; end
		  4'b0101:begin {C32,F}<=A-B; OF<=A[31]^B[31]^F[31]^C32; end
		  4'b0110:begin OF<=0;
		               if(A<B)F<=32'h0000_0001;
                     else  F<=0;	end
        4'b0111:begin F<=A<<B; OF<=0; end
		  4'b1000:begin {C32,F}<=A+B; OF<=C32^F[31]; end
		  default:F<=0; 
     endcase    
end

always@(*)
begin 
   if(F==0) ZF<=1;
	else ZF<=0; 
end

endmodule
