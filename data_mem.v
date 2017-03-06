`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2017 12:32:03 PM
// Design Name: 
// Module Name: data_mem
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


module data_mem(clk,address,MemWrite,writeData,readData);
input clk;
input[15:0] address;
input[15:0] writeData;
input MemWrite;
output reg[15:0]readData;

reg [15:0]memory[0:31];
integer i;
//Initialize memory
initial begin
    for(i = 0; i < 32; i=i+1)
    begin
        memory[i] = 0;
    end
end

always @(posedge clk)
    begin
    if(MemWrite)
        begin
        memory[address]<=writeData; 
        end
    end
//Whenever we are not writing we are reading
always @(*) //Output is the address
    begin
    readData<=memory[address];
    end
endmodule
