`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 05:12:21 PM
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit(X,Y,lt,gt,eq);
input[3:0] X;
input[3:0] Y;
output lt,gt,eq;

wire[9:0] w;
wire[3:0] notY;
wire[3:0] notX;

not NOT0(notY[0],Y[0]);
not NOT1(notY[1],Y[1]);
not NOT2(notY[2],Y[2]);
not NOT3(notY[3],Y[3]);

xnor XOR0(w[0],X[0],Y[0]);
xnor XOR1(w[1],X[1],Y[1]);
xnor XOR2(w[2],X[2],Y[2]);
xnor XOR3(w[3],X[3],Y[3]);

and AND0(eq,w[0],w[1],w[2],w[3]);
and AND1(w[4],notY[3],X[3]);
and AND2(w[5],w[3],notY[2],X[2]);
and AND3(w[6],w[3],w[2],notY[1],X[1]);
and AND4(w[7],w[3],w[2],w[1],notY[0],X[0]);

or OR0(gt,w[4],w[5],w[6],w[7]);
nor NOR0(lt,gt,eq);                         //Less than = Greater NOR Equal

endmodule