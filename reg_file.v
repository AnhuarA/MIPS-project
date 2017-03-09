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


module reg_file(A,B,C,Aaddr,Baddr,Caddr,Load,Clear,clk);
input [3:0] Aaddr, Baddr, Caddr;
input [15:0] C;
input Load;
input Clear,clk;
output [15:0] A, B;

wire [15:0] inVal [0:15];

wire [15:0] decOut;

reg [15:0]register[0:15];

//Initialize memory
initial begin
register[0] <= 16'b0000_0000_0000_0000;
register[1] <= 16'b0000_0000_0000_0000;
register[2] <= 16'b0000_0000_0000_0000;
register[3] <= 16'b0000_0000_0000_0000;
register[4] <= 16'b0000_0000_0000_0011;
register[5] <= 16'b0000_0000_0000_0000;
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

/*
//Create 16, 16-bit registers
//module bit16_Reg(clock, reset, in, out);
bit16_Reg  Reg0(.clock(clk), .reset(Clear), .in(inVal[15:0]),    .out(outVal[15:0]));
bit16_Reg  Reg1(.clock(clk), .reset(Clear), .in(inVal[31:16]),   .out(outVal[31:16]));
bit16_Reg  Reg2(.clock(clk), .reset(Clear), .in(inVal[47:32]),   .out(outVal[47:32]));
bit16_Reg  Reg3(.clock(clk), .reset(Clear), .in(inVal[63:48]),   .out(outVal[63:48]));
bit16_Reg  Reg4(.clock(clk), .reset(Clear), .in(inVal[79:64]),   .out(outVal[79:64]));
bit16_Reg  Reg5(.clock(clk), .reset(Clear), .in(inVal[95:80]),   .out(outVal[95:80]));
bit16_Reg  Reg6(.clock(clk), .reset(Clear), .in(inVal[111:96]),  .out(outVal[111:96]));
bit16_Reg  Reg7(.clock(clk), .reset(Clear), .in(inVal[127:112]), .out(outVal[127:112]));
bit16_Reg  Reg8(.clock(clk), .reset(Clear), .in(inVal[143:128]), .out(outVal[143:128]));
bit16_Reg  Reg9(.clock(clk), .reset(Clear), .in(inVal[159:144]), .out(outVal[159:144]));
bit16_Reg  Reg10(.clock(clk),.reset(Clear), .in(inVal[175:160]), .out(outVal[175:160]));
bit16_Reg  Reg11(.clock(clk),.reset(Clear), .in(inVal[191:176]), .out(outVal[191:176]));
bit16_Reg  Reg12(.clock(clk),.reset(Clear), .in(inVal[207:192]), .out(outVal[207:192]));
bit16_Reg  Reg13(.clock(clk),.reset(Clear), .in(inVal[223:208]), .out(outVal[223:208]));
bit16_Reg  Reg14(.clock(clk),.reset(Clear), .in(inVal[239:224]), .out(outVal[239:224]));
bit16_Reg  Reg15(.clock(clk),.reset(Clear), .in(inVal[255:240]), .out(outVal[255:240]));
//*/

//Select A and B using the Aaddr and Baddr
//module mux16_1(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,en, sel, out);
//A
mux16_1 muxA(register[0],register[1],register[2],register[3],
             register[4],register[5],register[6],register[7],
             register[8],register[9],register[10],register[11],
             register[12],register[13],register[14],register[15],1'b1,Aaddr,A);
//B
mux16_1 muxB(register[0],register[1],register[2],register[3],
             register[4],register[5],register[6],register[7],
             register[8],register[9],register[10],register[11],
             register[12],register[13],register[14],register[15],1'b1,Baddr,B);
        
//Decode the Caddr if the load signal is enabled
//module decoder4_16(w, en, out);
decoder4_16 decode(Caddr, Load, decOut);

//use 2 to 1 muxes to select between either new value or retain old value
//mux2_1(a,b,sel,out)

mux2_1 mux0(register[0],    C,1'b1, decOut[0],  inVal[0]);
mux2_1 mux1(register[1],    C,1'b1, decOut[1],  inVal[1]);
mux2_1 mux2(register[2],    C,1'b1, decOut[2],  inVal[2]);
mux2_1 mux3(register[3],    C,1'b1, decOut[3],  inVal[3]);
mux2_1 mux4(register[4],    C,1'b1, decOut[4],  inVal[4]);
mux2_1 mux5(register[5],    C,1'b1, decOut[5],  inVal[5]);
mux2_1 mux6(register[6],    C,1'b1, decOut[6],  inVal[6]);
mux2_1 mux7(register[7],    C,1'b1, decOut[7],  inVal[7]);
mux2_1 mux8(register[8],    C,1'b1, decOut[8],  inVal[8]);
mux2_1 mux9(register[9],    C,1'b1, decOut[9],  inVal[9]);
mux2_1 mux10(register[10],  C,1'b1, decOut[10], inVal[10]);
mux2_1 mux11(register[11],  C,1'b1, decOut[11], inVal[11]);
mux2_1 mux12(register[12],  C,1'b1, decOut[12], inVal[12]);
mux2_1 mux13(register[13],  C,1'b1, decOut[13], inVal[13]);
mux2_1 mux14(register[14],  C,1'b1, decOut[14], inVal[14]);
mux2_1 mux15(register[15],  C,1'b1, decOut[15], inVal[15]);

always@(*)
if(Load == 1'b1)
begin
register[0] <= inVal[0];
register[1] <= inVal[1];
register[2] <= inVal[2];
register[3] <= inVal[3];
register[4] <= inVal[4];
register[5] <= inVal[5];
register[6] <= inVal[6];
register[7] <= inVal[7];
register[8] <= inVal[8];
register[9] <= inVal[9];
register[10] <= inVal[10];
register[11] <= inVal[11];
register[12] <= inVal[12];
register[13] <= inVal[13];
register[14] <= inVal[14];
register[15] <= inVal[15];
end
endmodule
