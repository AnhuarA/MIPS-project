`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2017 03:05:05 PM
// Design Name: 
// Module Name: alu_sim
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


module alu_sim;

reg[3:0] opcode;
reg[15:0] X,Y;
reg Cin;
wire[15:0] out;
wire Cout, lt, eq, gt, V;

alu uut (x,y,out,Cin,Cout,lt,eq,gt,V,opcode);

initial 
begin
//Add 5+5 = 10
X = 4'b0101;
Y = 4'b0101;
Cin=0;
opcode = 4'b0010;
//Subtract 3-8 = -5
#3 X = 4'b0011;
#3 Y = 4'b1000;
#3 Cin = 0;
#3 opcode = 4'b0110;
//AND 1011 AND 1001 = 1001
#3 X = 4'b1011;
#3 Y = 4'b1001;
#3 Cin = 0;
#3 opcode = 4'b0000;

end
endmodule
