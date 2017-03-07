`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2017 05:22:13 PM
// Design Name: 
// Module Name: control
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module control(opcode,RegDst,RegWrite,ALU_src,MemWrite,MemRead,MemToReg,branch,PC_src,ALU_op);
input[3:0] opcode;
output reg[2:0] ALU_op;
output reg RegDst,branch,MemRead,MemToReg,MemWrite,RegWrite,ALU_src,PC_src;

always @*
case (opcode)
      4'b0000: //AND : 0
              begin 
              RegDst=1;
              RegWrite=1; 
              ALU_src =0; 
              MemWrite=0; 
              MemRead=0; 
              MemToReg=0; 
              branch=0;
              PC_src=0;
              ALU_op<=3'b000;
              end 
      4'b0001: //OR : 1
              begin 
              RegDst=1; 
              RegWrite=1; 
              ALU_src =0; 
              MemWrite=0; 
              MemRead=0;
              MemToReg=0; 
              branch=0;
              PC_src=0;
              ALU_op<=3'b001;
              end
      4'b0010: //ADD : 2
              begin 
              RegDst=1; 
              RegWrite=1; 
              ALU_src =0; 
              MemWrite=0; 
              MemToReg=0; 
              branch=0;
              PC_src=0;
              ALU_op<=3'b010;
              end 
      4'b0110: //SUB
              begin
              RegDst=1; 
              RegWrite=1; 
              ALU_src =0; 
              MemWrite=0; 
              MemRead=0;
              MemToReg=0; 
              branch=0;
              PC_src=0;
              ALU_op<=3'b011;
               end 
      4'b0111: //SLT
              begin 
              RegDst=1; 
              RegWrite=1; 
              ALU_src =0; 
              MemWrite=0; 
              MemRead=0;
              MemToReg=0; 
              branch=0;
              PC_src=0;
              ALU_op<=3'b100;
              end 
      4'b1000: //LW
              begin  
              RegDst=0; 
              RegWrite=1; 
              ALU_src =1; 
              MemWrite=0; 
              MemRead=0;
              MemToReg=1; 
              branch=0;
              PC_src=0;
              ALU_op<=3'b010;
              end
      4'b1010: //SW
              begin 
              RegDst=1; 
              RegWrite=0; 
              ALU_src =1; 
              MemWrite=1; 
              MemRead=0;
              MemToReg=0; 
              branch=0;
              PC_src = 0;
              ALU_op<=3'b010;
              end 
      4'b1110: //BNE
              begin 
              RegDst=1; 
              RegWrite=0; 
              ALU_src =0; 
              MemWrite=0; 
              MemRead=0;
              MemToReg=0; 
              branch=1;
              PC_src=1;
              ALU_op<=3'b011;
              end
   endcase


endmodule