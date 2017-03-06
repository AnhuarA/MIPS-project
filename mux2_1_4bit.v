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
    
    wire [3:0] aOut, bOut;
    
    and andA(aOut, a, ~sel);
    and andB(bOut, b, sel);
    or  or1(out, aOut, bOut);
endmodule
