`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2017 08:39:03 PM
// Design Name: 
// Module Name: MIPS
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


module MIPS(clk,PC,R1,R2,R3);
input clk;
output [15:0] PC;
output [15:0] R1,R2,R3;

wire [15:0] newPC, branchPCoffset, nextPC;
wire [15:0] Instr;
wire Load, Clear;
wire [15:0] ALUresult, ALUsrcOut, memData;
//control bits
wire RegDst,RegWrite,ALU_src,MemWrite,MemRead,MemToReg,branch,PC_src,ALU_op;


//Get control values
//module control(opcode,RegDst,RegWrite,ALU_src,MemWrite,MemRead,MemToReg,branch,PC_src,ALU_op);

//File Register
//module reg_file(A,B,C,Aaddr,Baddr,Caddr,Load,Clear,clk);




endmodule