`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2017 06:09:24 PM
// Design Name: 
// Module Name: alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: MIPS arithmetic logic unit
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(X,Y,out,Cout,lt,eq,gt,V,opcod);
input [15:0] X,Y;
//input Cin;
input [3:0] opcod;
output [15:0] out;
output Cout,lt,eq,gt,V;

wire [15:0] andOut, orOut, twosOut1, twosOut2,branchAddr, lwAddr, swAddr;
wire add_sub;
wire ltResult;
wire [15:0] ltResultExt;

assign add_sub = opcod[2];


//Logical AND
//op code: 0x0
//module log_AND(x,y,out);
log_AND aluAND(X,Y,andOut);

//Logical OR
//opcode: 0x1
//module log_OR(x,y,out);
log_OR aluOR(X,Y,orOut);

//ADD/SUB
//opcode: 0x2 / 0x6 (add_sub bit comes from opcod[2])
//module twos_comp(X,Y,Cin,addsub,sum,Cout,overflow);
twos_comp add0(X,Y,1'b0,add_sub, twosOut1, Cout, V);
//opcode: 0x2 / 0x6 (add_sub bit comes from opcod[2])
//module twos_comp(X,Y,Cin,addsub,sum,Cout,overflow);
twos_comp add1(X,Y,1'b1,add_sub, twosOut2, Cout, V);

//SLT
//opcode: 0x7
//module comparator_16bit(X,Y,lt,gt,eq);
comparator_16bit sltCompare(X,Y,lt,gt,eq);
assign ltResultExt = {{15{1'b0}},lt};


//LW
//opcode: 0x8
//module twos_comp(X,Y,Cin,addsub,sum,Cout,overflow);
twos_comp lw0(X,Y,1'b0,1'b0, lwAddr, Cout, V);

//SW
//opcode: 0xA
//module twos_comp(X,Y,Cin,addsub,sum,Cout,overflow);
twos_comp sw0(X,Y,1'b0,1'b0, swAddr, Cout, V);

//BNE
//opcode: 0xE
//module comparator_16bit(X,Y,lt,gt,eq);
comparator_16bit bneCompare(X,Y,lt,gt,eq);
twos_comp bne(X,Y,1'b0,add_sub, branchAddr, Cout, V);


//16 to 1 MUX to select ALUresult
/*
module mux16_1(in0,in1,in2,in3,
               in4,in5,in6,in7,
               in8,in9,in10,in11,
               in12,in13,in14,in15,en, sel, out);
*/
mux16_1 aluSel(andOut,orOut, twosOut1, 16'b0,
               16'b0, 16'b0, twosOut2, ltResultExt,
               lwAddr,16'b0, swAddr,  16'b0,
               16'b0, 16'b0, 16'b0,   16'b0,1'b1, opcod, out);


endmodule
