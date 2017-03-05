`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 06:26:51 PM
// Design Name: 
// Module Name: decoder4_16
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

module decoder2_4(w, en, out);
input [1:0] w;
input en;
output [3:0] out;

and a0(out[0],~w[0],~w[1],en);
and a1(out[1], w[0],~w[1],en);
and a2(out[2],~w[0], w[1],en);
and a3(out[3], w[0], w[1],en);


endmodule

module decoder4_16(w, en, out);
input [3:0] w;
input en;
output [15:0] out;

wire [3:0] enOut;

//initial encoder
decoder2_4 d1(w[3:2], en, enOut);
//rest of encoders necessary for 16-1
decoder2_4 d2(w[1:0], enOut[0], out[3:0]);
decoder2_4 d3(w[1:0], enOut[1], out[7:4]);
decoder2_4 d4(w[1:0], enOut[2], out[11:8]);
decoder2_4 d5(w[1:0], enOut[3], out[15:12]);

endmodule
