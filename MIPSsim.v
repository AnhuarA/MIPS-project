`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2017 02:34:33 PM
// Design Name: 
// Module Name: MIPS_sim
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


module MIPSsim();
reg clk;
wire [15:0] PC, R1, R2, R3;

wire [15:0] newPC, branchPCoffset, nextPC;
wire [15:0] signOffset;
wire [15:0] Instr;
wire [15:0] ALUresult, ALUsrcOut, memData;
//module MIPS(clk,PC,R1,R2,R3);
MIPS uut(clk,PC,R1,R2,R3 ,newPC, branchPCoffset, nextPC,signOffset,Instr,ALUresult, ALUsrcOut, memData);

initial begin 

    clk=0;

    repeat (1000)
    begin
    #1 clk=~clk;

    end
end
endmodule
