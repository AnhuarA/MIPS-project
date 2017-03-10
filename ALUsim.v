`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2017 07:51:22 PM
// Design Name: 
// Module Name: ALUsim
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


module ALUsim;
reg[3:0] opcode;
reg[15:0] X,Y;
reg Cin;
wire[15:0] out;
wire Cout, lt, eq, gt, V;

alu uut (X,Y,out,Cin,Cout,lt,eq,gt,V,opcode);

initial 
begin
X = 4'h2; //add
Y=4'h5;
Cin=0;
opcode=4'b0010;

#1 X = 4'h3; //subtract
#1 Y = 4'h8;
#1 Cin=0;
#1 opcode=4'b0110;

#2 X = 4'h7; //and
#2 Y = 4'h6;
#2 Cin=0;
#2 opcode=4'b0000;;

end

endmodule
