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


module mux2_1_1bit(
    input a,
    input b,
    input  sel,
    output out
    );
    
    wire aOut, bOut;
    
    and andA(aOut, a, ~sel);
    and andB(bOut, b, sel);
    or  or1(out, aOut, bOut);
   

endmodule
module mux2_1(a,b,sel,out);
    input [15:0] a,b;
    input sel;
    output [15:0] out;
    
    mux2_1_1bit mux0(a[0],b[0],sel,out[0]);
    mux2_1_1bit mux1(a[1],b[1],sel,out[1]);
    mux2_1_1bit mux2(a[2],b[2],sel,out[2]);
    mux2_1_1bit mux3(a[3],b[3],sel,out[3]);    
    mux2_1_1bit mux4(a[4],b[4],sel,out[4]);
    mux2_1_1bit mux5(a[5],b[5],sel,out[5]);
    mux2_1_1bit mux6(a[6],b[6],sel,out[6]);
    mux2_1_1bit mux7(a[7],b[7],sel,out[7]);
    mux2_1_1bit mux8(a[8],b[8],sel,out[8]);
    mux2_1_1bit mux9(a[9],b[9],sel,out[9]);
    mux2_1_1bit mux10(a[10],b[10],sel,out[10]);
    mux2_1_1bit mux11(a[11],b[11],sel,out[11]);    
    mux2_1_1bit mux12(a[12],b[12],sel,out[12]);
    mux2_1_1bit mux13(a[13],b[13],sel,out[13]);
    mux2_1_1bit mux14(a[14],b[14],sel,out[14]);
    mux2_1_1bit mux15(a[15],b[15],sel,out[15]);
    
endmodule
