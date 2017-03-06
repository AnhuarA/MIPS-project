`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2017 11:57:30 PM
// Design Name: 
// Module Name: programCounter
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


module programCounter(clk,inputAddr, outputAddr);
input clk;
input [15:0] inputAddr;
output reg [15:0] outputAddr;

//initialize PC to 0
initial begin
outputAddr = 0;
end

//assign the input address(PCsrc MUX)
//as the new PC value
always @(posedge clk)
outputAddr <= inputAddr;
endmodule
