`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2017 11:51:10 AM
// Design Name: 
// Module Name: instruct_mem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Instruction memory component
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module instruct_mem(address,instruction);
input[15:0] address;
output[15:0] instruction;

reg[15:0] instruct_mem [15:0];
reg[15:0] instruction;

//Initialize memory
initial begin
//Instruction format:opcod, rs,  rt, rd                 
instruct_mem[0] = 16'b1000_0100_0001_0000;    //LW: store mem[4] into register 1  
instruct_mem[1] = 16'b1000_0111_0010_0000;    //LW: store mem[7] into register 2
instruct_mem[2] = 16'b0010_0001_0010_0011;    //ADD: add resgisters  1 and 2 and store in register 3
instruct_mem[3] = 16'b0110_0000_0000_0000;    //SUB
instruct_mem[4] = 16'b0111_0000_0000_0000;    //SLT
instruct_mem[5] = 16'b1000_0000_0000_0000;    //LW
instruct_mem[6] = 16'b1010_0000_0000_0000;    //SW
instruct_mem[7] = 16'b1110_0000_0000_0000;    //BNE
end

always @(*) 
begin
    instruction = instruct_mem[address];
end
endmodule