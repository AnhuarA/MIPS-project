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
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bit16_Reg(clock, reset, in, out);
input clock, reset;
input [15:0] in;
output [15:0] out;

//Array of 16 D flip flops to create a 16 bit register;

D_flipFlop bit0(clock, reset, in[0],out[0]),
           bit1(clock, reset, in[1],out[1]),
           bit2(clock, reset, in[2],out[2]),
           bit3(clock, reset, in[3],out[3]),
           bit4(clock, reset, in[4],out[4]),
           bit5(clock, reset, in[5],out[5]),
           bit6(clock, reset, in[6],out[6]),
           bit7(clock, reset, in[7],out[7]),
           bit8(clock, reset, in[8],out[8]),
           bit9(clock, reset, in[9],out[9]),
           bit10(clock, reset, in[10],out[10]),
           bit11(clock, reset, in[11],out[11]),
           bit12(clock, reset, in[12],out[12]),
           bit13(clock, reset, in[13],out[13]),
           bit14(clock, reset, in[14],out[14]),
           bit15(clock, reset, in[15],out[15]);
           
endmodule
