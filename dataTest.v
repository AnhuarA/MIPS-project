`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2017 12:57:10 AM
// Design Name: 
// Module Name: dataTest
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


module dataTest;
reg clk;
reg[15:0] address;
reg[15:0] writeData;
reg MemWrite;
wire [15:0]readData;

//module data_mem(clk,address,MemWrite,writeData,readData);
data_mem uut(clk,address,MemWrite,writeData,readData);

initial begin 
    clk=0;
    address = 16'h1;
    MemWrite = 0;
    writeData = 3;
    
    repeat (1000)
    begin
    #1 clk=~clk;
    end
end
endmodule
