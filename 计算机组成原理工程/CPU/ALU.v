`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:08:03 06/04/2017 
// Design Name: 
// Module Name:    ALU 
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
module alu(ALU_OP,A,B,F,ZF,OF);
input[2:0] ALU_OP;
input[31:0] A,B;
output reg [31:0] F;
output reg [31:0]ZF;
output reg [31:0]OF;
reg C32,C31;
reg [7:0]i;
always@(*)
begin

case(ALU_OP)
    3'b000:begin F<=A&B; OF<=0; end
    3'b001:begin F<=A|B; OF<=0; end
    3'b010:begin F<=A^B; OF<=0; end
    3'b011:begin F<=~(A|B); OF<=0; end
    3'b100:begin {C32,F}<=A+B;OF<=C32^A[31];end
    3'b101:begin {C32,F}<=A-B; OF<=A[31]^B[31]^F[31]^C32; end
    3'b110:begin OF<=0;
					if(A<B)
                  F<=32'h0000_0001;
               else
                  F<=0;
            end
    3'b111:begin F<=A<<B; OF<=0; end
    default: begin  end
    endcase

    ZF<=((F==32'h00000000)?1:0);     
end
endmodule
