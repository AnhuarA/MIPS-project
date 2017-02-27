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
    input [31:0] a,
    input [31:0] b,
    input [0:0] sel,
    output reg [31:0] out
    );
    wire [31:0] aOut, bOut;
    
    and(a,~sel, aOut);
    and(b,sel, bOut);
    or(aOut, bOut, out);

endmodule
