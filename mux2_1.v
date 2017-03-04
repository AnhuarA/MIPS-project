`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2017 10:35:45 PM
// Design Name: 
// Module Name: mux2_1
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


module mux2_1(
    input [15:0] a,
    input [15:0] b,
    input  sel,
    output [15:0] out
    );
    
    wire [15:0] aOut, bOut;
    
    and andA(aOut, a, ~sel);
    and andB(bOut, b, sel);
    or  or1(out, aOut, bOut);
   

endmodule
