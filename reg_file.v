`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 05:48:31 PM
// Design Name: 
// Module Name: reg_file
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


module reg_file(A,B,C,Aaddr,Baddr,Caddr,Load,Clear,clk);
input [3:0] Aaddr, Baddr, Caddr;
input [15:0] C;
input Load;
input Clear,clk;
output [15:0] A, B;

endmodule
