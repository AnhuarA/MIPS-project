`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 05:48:31 PM
// Design Name: 
// Module Name: reg_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Register file module for our processor
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reg_file(A,B,C,Aaddr,Baddr,Caddr,Load,clk);
input [3:0] Aaddr, Baddr, Caddr;
input [15:0] C;
input Load;
input clk;
output  [15:0] A, B;



reg [15:0]register[0:15];

//Initialize memory
initial begin
register[0] <= 16'b0000_0000_0000_0000;//$zero
register[1] <= 16'b0000_0000_0000_0001;//Initially holds address of mem[1]
register[2] <= 16'b0000_0000_0000_0010;//Initially holds address of mem[2]
register[3] <= 16'b0000_0000_0000_0000;
register[4] <= 16'b0000_0000_0000_0000;//0
register[5] <= 16'b0000_0000_0000_0001;//1
register[6] <= 16'b0000_0000_0000_0000;
register[7] <= 16'b0000_0000_0000_0000;
register[8] <= 16'b0000_0000_0000_0000;
register[9] <= 16'b0000_0000_0000_0000;
register[10] <= 16'b0000_0000_0000_0000;
register[11] <= 16'b0000_0000_0000_0000;
register[12] <= 16'b0000_0000_0000_0000;
register[13] <= 16'b0000_0000_0000_0000;
register[14] <= 16'b0000_0000_0000_0000;
register[15] <= 16'b0000_0000_0000_0000;
end


assign A = register[Aaddr];
assign B = register[Baddr];

always@(posedge clk)
if(Load == 1'b1)
begin
register[Caddr] <= C;
end
endmodule
