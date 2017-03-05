`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 06:02:11 PM
// Design Name: 
// Module Name: 16_bit_Reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: A D flip flop with an asynchronous reset
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_flipFlop(Clock,Reset,D,Q);
input D,Clock,Reset;
output reg Q;

always @(negedge Reset,posedge Clock)
    if(!Reset)
        Q<=0;
    else 
        Q = D;
endmodule