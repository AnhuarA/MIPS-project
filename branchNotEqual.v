`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 03:46:14 PM
// Design Name: 
// Module Name: branchNotEqual
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module will compare two register values,
//              if the two values are equal, the flag will be '0', and a '1' if
//              they are equal
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module branchNotEqual(a,b,bneFlag);
input [15:0] a,b;
output bneFlag;
//eq:0 if not equal, 1 if equal
wire eq;

//module comparator_16bit(X,Y,lt,gt,eq);
//lt and gt are left at zero since they are not used
comparator_16bit(a,b,1'b0,1'b0,eq);
not not1(bneFlag, eq);

endmodule
