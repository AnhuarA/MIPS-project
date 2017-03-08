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
    input en,
    input  sel,
    output [3:0] out
    );

    wire notS;
    wire [3:0] aOut, bOut;
    
    not notSel(notS, sel);
    and and0[3:0](aOut, notS, en, a );
    and and1[3:0](bOut, sel, en, b );
    or or0[3:0](out, aOut,bOut);
endmodule
