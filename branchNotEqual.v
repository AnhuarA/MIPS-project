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


module branchNotEqual(eq,bneFlag);
input eq;
output bneFlag;
//eq:0 if not equal, 1 if equal


not not1(bneFlag, eq);

endmodule
