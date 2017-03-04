`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 12:33:19 PM
// Design Name: 
// Module Name: log_AND
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


module log_AND(x,y,out);
input[15:0] x;                  // Register 1 16-bit
input[15:0] y;                  // Register 2 16-bit
output[15:0] out;               // Output of ALU Result

and bit0 (out[0], x[0], y[0]);
and bit1 (out[1], x[1], y[1]);
and bit2 (out[2], x[2], y[2]);
and bit3 (out[3], x[3], y[3]);
and bit4 (out[4], x[4], y[4]);
and bit5 (out[5], x[5], y[5]);
and bit6 (out[6], x[6], y[6]);
and bit7 (out[7], x[7], y[7]);
and bit8 (out[8], x[8], y[8]);
and bit9 (out[9], x[9], y[9]);
and bit10 (out[10], x[10], y[10]);
and bit11 (out[11], x[11], y[11]);
and bit12 (out[12], x[12], y[12]);
and bit13 (out[13], x[13], y[13]);
and bit14 (out[14], x[14], y[14]);
and bit15 (out[15], x[15], y[15]);

endmodule
