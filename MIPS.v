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


module MIPS(clk,PC,R1,R2,R3,newPC, branchPCoffset, nextPC,signOffset,Instr,ALUresult, ALUsrcOut, memData);
input clk;
output [15:0] PC;
output [15:0] R1,R2,R3;

//newPC = PC value output from branch MUX
//nextPC = Previous PC value incremented by 1
//branchPCoffset = PC + 1 + offset, goes into branch MUX
wire [15:0] newPC, branchPCoffset, nextPC;
wire [15:0] signOffset;
wire [15:0] Instr;
wire Load, Clear;
wire [15:0] ALUresult, ALUsrcOut, memData;
//control bits
wire RegDst,RegWrite,ALU_src,MemWrite,MemRead,MemToReg,branch,PC_src,ALU_op;
wire bneCin,bneCout,bneV;

wire [3:0] opcod,Aaddr,Baddr,Caddr;
wire [3:0] writeReg; //Output address of the RegDst MUX

wire lt,eq,gt, bneFlag, zero;

assign opcod = Instr[15:12];
assign Aaddr = Instr[11:8];
assign Baddr = Instr[7:4];
assign Caddr = Instr[3:0];

wire [15:0] memToRegOutput;

//TEST OUTPUTS////
output [15:0] newPC, branchPCoffset, nextPC;
output [15:0] signOffset;
output [15:0] Instr;
output [15:0] ALUresult, ALUsrcOut, memData;
/////////////////

//Create Program Counter 
//module programCounter(clk,inputAddr, outputAddr); 
programCounter pc(clk,newPC,PC);
 
//Increment PC 
//module incrPC(oldAddr,newAddr); 
incrPC incr(PC, nextPC);
 
 //Instruction Memory
 //module instruct_mem(address,instruction);
 instruct_mem instruct_mem0(PC, Instr);
 
 //Get control values
//module control(opcode,RegDst,RegWrite,ALU_src,MemWrite,MemToReg,branch);
control ctrl(opcod,RegDst,RegWrite,ALU_src,MemWrite,MemToReg,branch);
 
 //RegDst MUX
 mux2_1_4bit regDstMUX(Baddr,Caddr,1'b1,RegDst,writeReg);
 

 //File Register
//module reg_file(A,B,C,Aaddr,Baddr,Caddr,Load,clk);
reg_file fileReg(R1,R2,memToRegOutput,Aaddr,Baddr,writeReg,RegWrite,clk); 
 
//Sign Extend offset and add to new incremented PC 
//module signExt(in, out); 
signExt offset0(Instr[3:0], signOffset);
//Add the sign extended offset to the incremented PC 
//module twos_comp(X,Y,Cin,addsub,sum,Cout,overflow);
twos_comp offsetCalc(nextPC, signOffset,1'b1,1'b0,branchPCoffset,bneCout,bneV);

//ALUsrc MUX
mux2_1 ALUsrcMUX(R2, signOffset,1'b1, ALU_src, ALUsrcOut);

//ALU
//module alu(X,Y,out,Cin,Cout,lt,eq,gt,V,opcod);
alu aluMIPS(R1, ALUsrcOut, ALUresult, Cout, lt, eq, gt, V, opcod);

//Data Memory
//module data_mem(clk,address,MemWrite,writeData,readData);
data_mem dataMemory(clk, ALUresult, MemWrite, R2, readData);

//Mem to Reg MUX
mux2_1 memToRegMux(ALUresult, readData,1'b1, MemToReg, memToRegOutput);

//BNE MUX
//first we create the zero flag
//module branchNotEqual(eq,bneFlag);
branchNotEqual bneFl(eq,zero);
//We AND the zero with the branch control signal 
and bneCheck(bneFlag, branch, zero);
//We then use this flag as the select bit for the MUX
mux2_1 bneMUX(nextPC, branchPCoffset,1'b1, bneFlag, newPC);



endmodule