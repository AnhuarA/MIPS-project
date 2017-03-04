`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 12:20:02 PM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(x,y,Cin,sum,Cout);
input x,y,Cin;
output sum,Cout;

wire z1,z2,z3; //Initialize wires

xor XOR1(z1,x,y);         // Output of x XOR y = z1
xor XOR2(sum,z1,Cin);     // Output of z1 XOR Cin = sum
and AND1(z2,z1,Cin);      // Output of z1 AND Cin = z2
and AND2(z3,x,y);         // Output of x AND y = z3
or OR1(Cout,z2,z3);       // Output of z2 OR z3 = Cout

endmodule
