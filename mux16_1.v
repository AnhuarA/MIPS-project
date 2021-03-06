`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 01:51:10 PM
// Design Name: 
// Module Name: mux16_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:Create a 16-1 16 bit mux for the alu 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module mux4_1(a,b,c,d,en,sel,out);
input [15:0] a,b,c,d;
input [1:0] sel;
input en;
output [15:0] out;

wire [15:0] mux1,mux2;

mux2_1 muxA(a,b,en,sel[0],mux1),
       muxB(c,d,en,sel[0],mux2),
       muxC(mux1,mux2,en,sel[1],out); 

endmodule

module mux16_1(in0,in1,in2,in3,
               in4,in5,in6,in7,
               in8,in9,in10,in11,
               in12,in13,in14,in15,en, sel, out);
input   [15:0] in0,in1,in2,in3,
               in4,in5,in6,in7,
               in8,in9,in10,in11,
               in12,in13,in14,in15;
input [3:0] sel;
input en;
output [15:0] out;

wire [15:0] mux1,mux2,mux3,mux4;

mux4_1 muxA(in0,in1,in2,in3,en,sel[1:0],mux1),
       muxB(in4,in5,in6,in7,en,sel[1:0],mux2),
       muxC(in8,in9,in10,in11,en,sel[1:0],mux3),
       muxD(in12,in13,in14,in15,en,sel[1:0],mux4),
       muxFinal(mux1,mux2,mux3,mux4,en,sel[3:2],out);

endmodule
