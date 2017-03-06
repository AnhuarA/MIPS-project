`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2017 12:03:28 AM
// Design Name: 
// Module Name: incrPC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module will simply increment the PC to the next instruction
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module incrPC(oldAddr,newAddr);
input [15:0] oldAddr;
output reg [15:0] newAddr;

always@(*)
newAddr <= oldAddr + 1;

endmodule
