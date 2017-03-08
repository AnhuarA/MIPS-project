`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2017 09:04:26 PM
// Design Name: 
// Module Name: mux16_1sim
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


module mux16_1sim;
reg   [15:0] in0,in1,in2,in3,
               in4,in5,in6,in7,
               in8,in9,in10,in11,
               in12,in13,in14,in15;
reg [3:0] sel;
wire [15:0] out;
reg en;
               
wire [15:0] mux1,mux2,mux3,mux4;

mux16_1 uut(in0,in1,in2,in3,
               in4,in5,in6,in7,
               in8,in9,in10,in11,
               in12,in13,in14,in15,en, sel, out);
initial begin
in0 =16'h0;
in1 =16'h1; 
in2 =16'h2;
in3 =16'h3;
in4 =16'h4;
in5 =16'h5;
in6 =16'h6;
in7 =16'h7;
in8 =16'h8;
in9 =16'h9;
in10 =16'hAB;
in11 =16'hB;
in12 =16'hC;
in13 =16'hD;
in14 =16'hE;
in15  =16'hF;
sel = 4'hA;
en = 1'b1;
end        

endmodule
