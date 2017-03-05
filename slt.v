`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2017 03:20:34 PM
// Design Name: 
// Module Name: slt
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


module slt(a, b, lt);
input [15:0] a,b;
output lt;

//module comparator_16bit(X,Y,lt,gt,eq);
//eq and gt are left at zero since they are not used
comparator_16bit(a,b,lt,1'b0,1'b0);
endmodule
