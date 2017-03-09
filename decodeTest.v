`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 03:13:08 PM
// Design Name: 
// Module Name: decodeTest
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


module decodeTest;
//module decoder4_16(w, en, out);
reg [3:0] w;
reg en;
wire [15:0] out;

decoder4_16 uut(w,en,out);

initial begin
w = 4'b1111;
en = 1'b1;
end
endmodule
