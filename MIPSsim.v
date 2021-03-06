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
// Description: Simulation file for MIPS processor
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

//module MIPS(clk,PC,R1,R2,R3);
MIPS uut(clk,PC,R1,R2,R3);

initial begin 

    clk=0;

    repeat (1000)
    begin
    #1 clk=~clk;

    end
end
endmodule
