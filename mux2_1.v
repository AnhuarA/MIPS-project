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
// Description: A 2 to 1  16-bit MUX 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2_1(a,b,en,sel,out);
    input [15:0] a,b;
    input sel,en;
    output [15:0] out;
    
    wire notS;
    wire [15:0] aOut, bOut;
    
    not notSel(notS, sel);
    and and0[15:0](aOut, notS, en, a );
    and and1[15:0](bOut, sel, en, b );
    or or0[15:0](out, aOut,bOut);
    
    
    
endmodule
