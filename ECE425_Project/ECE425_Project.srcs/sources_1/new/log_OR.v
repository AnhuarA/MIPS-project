`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 12:32:50 PM
// Design Name: 
// Module Name: log_OR
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


module log_OR(x,y,out);
input[15:0] x;
input[15:0] y;
output[15:0] out;

or bit0 (out[0], x[0], y[0]);
or bit1 (out[1], x[1], y[1]);
or bit2 (out[2], x[2], y[2]);
or bit3 (out[3], x[3], y[3]);
or bit4 (out[4], x[4], y[4]);
or bit5 (out[5], x[5], y[5]);
or bit6 (out[6], x[6], y[6]);
or bit7 (out[7], x[7], y[7]);
or bit8 (out[8], x[8], y[8]);
or bit9 (out[9], x[9], y[9]);
or bit10 (out[10], x[10], y[10]);
or bit11 (out[11], x[11], y[11]);
or bit12 (out[12], x[12], y[12]);
or bit13 (out[13], x[13], y[13]);
or bit14 (out[14], x[14], y[14]);
or bit15 (out[15], x[15], y[15]);

endmodule
