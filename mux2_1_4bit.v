`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2017 01:10:18 PM
// Design Name: 
// Module Name: mux2_1_4bit
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


module mux2_1_4bit(
    input [3:0] a,
    input [3:0] b,
    input  sel,
    output [3:0] out
    );
    
    mux2_1_1bit mux0(a[0],b[0],sel,out[0]);
    mux2_1_1bit mux1(a[1],b[1],sel,out[1]);
    mux2_1_1bit mux2(a[2],b[2],sel,out[2]);
    mux2_1_1bit mux3(a[3],b[3],sel,out[3]);    
    mux2_1_1bit mux4(a[4],b[4],sel,out[4]);
endmodule
