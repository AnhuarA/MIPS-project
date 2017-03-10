`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2017 01:14:35 AM
// Design Name: 
// Module Name: mux214bitTest
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


module mux214bitTest;
reg [3:0] a,b;
reg sel,en;
wire [3:0] out;

//module mux2_1_4bit(a,b,en,sel,out);
mux2_1_4bit uut(a,b,en,sel,out);

initial begin
a = 4'h2;
b = 4'h5;
en = 1;
sel = 0;

end
endmodule
