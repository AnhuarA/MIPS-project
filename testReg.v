`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2017 02:26:54 PM
// Design Name: 
// Module Name: testReg
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


module testReg;
//module reg_file(A,B,C,Aaddr,Baddr,Caddr,Load,Clear,clk);
reg [3:0] Aaddr, Baddr, Caddr;
reg [15:0] C;
reg Load;
reg clk;
wire [15:0] A, B;

reg_file uut(A,B,C,Aaddr,Baddr,Caddr,Load,clk);

initial begin 
    clk=0;
    Aaddr = 1;
    Baddr = 2;
    Caddr = 1;
    C = 1;
    Load = 0;
    
    repeat (1000)
    begin
    #1 clk=~clk;
    Load = 1;
    end
end

endmodule
