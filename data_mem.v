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

reg [15:0]memory[0:15];
integer i;
//Initialize memory
initial begin

memory[0] = 16'b0000_0000_0000_0000;
memory[1] = 16'b0000_0000_0000_0000;
memory[2] = 16'b0000_0000_0000_0000;
memory[3] = 16'b0000_0000_0000_0000;
memory[4] = 16'b0000_0000_0000_0100;//4
memory[5] = 16'b0000_0000_0000_0000;
memory[6] = 16'b0000_0000_0000_0000;
memory[7] = 16'b0000_0000_0000_0010;//2
memory[8] = 16'b0000_0000_0000_0000;
memory[9] = 16'b0000_0000_0000_0000;
memory[10] = 16'b0000_0000_0000_0000;
memory[11] = 16'b0000_0000_0000_0000;
memory[12] = 16'b0000_0000_0000_0000;
memory[13] = 16'b0000_0000_0000_0000;
memory[14] = 16'b0000_0000_0000_0000;
memory[15] = 16'b0000_0000_0000_0000;

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