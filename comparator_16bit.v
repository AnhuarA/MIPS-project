`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 06:05:02 PM
// Design Name: 
// Module Name: comparator_16bit
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


module comparator_16bit(X,Y,lt,gt,eq);          //Cascading 4-bit comparators to make 16-bit
input[15:0] X;
input[15:0] Y;
output wire lt,gt,eq;

//Initialize 16 bits from 4-bit comparator
wire[2:0] lt_gt_eq1,lt_gt_eq2,lt_gt_eq3,lt_gt_eq4;      
wire[5:0] out;
// lt = [2] | gt = [1] | eq = [0]
comparator_4bit comp1(X[15:12],Y[15:12], lt_gt_eq1[2],lt_gt_eq1[1],lt_gt_eq1[0]); 
comparator_4bit comp2(X[11:8],Y[11:8],lt_gt_eq2[2],lt_gt_eq2[1],lt_gt_eq2[0]); 
comparator_4bit comp3(X[7:4],Y[7:4],lt_gt_eq3[2],lt_gt_eq3[1],lt_gt_eq3[0]);
comparator_4bit comp4(X[3:0],Y[3:0],lt_gt_eq4[2],lt_gt_eq4[1],lt_gt_eq4[0]); 

and AND0(out[0], lt_gt_eq1[0],lt_gt_eq2[1]); //Eq AND Gt (comp1 comp2
and AND1(out[1], lt_gt_eq1[0],lt_gt_eq2[0] ,lt_gt_eq3[1]);
and AND2(out[2], lt_gt_eq1[0],lt_gt_eq2[0],lt_gt_eq3[0],lt_gt_eq4[1]);
and AND3(out[3], lt_gt_eq1[0],lt_gt_eq2[2]);
and AND4(out[4], lt_gt_eq1[0],lt_gt_eq2[0],lt_gt_eq3[2]);
and AND5(out[5], lt_gt_eq1[0],lt_gt_eq2[0],lt_gt_eq3[0],lt_gt_eq4[2]);

and AND6(eq,lt_gt_eq1[0],lt_gt_eq2[0],lt_gt_eq3[0],lt_gt_eq4[0]);
or OR1(gt,lt_gt_eq1[1],out[0],out[1],out[2]);
or OR2(lt,lt_gt_eq1[2],out[3],out[4],out[5]);
endmodule
