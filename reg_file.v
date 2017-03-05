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

wire [255:0] inVal, outVal;

wire [15:0] decOut;



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


//Select A and B using the Aaddr and Baddr
//module mux16_1(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15, sel, out);
//A
mux16_1 muxA(outVal[15:0],outVal[31:16],outVal[47:32],outVal[63:48],outVal[79:64],outVal[95:80],outVal[111:96],outVal[127:112],
        outVal[143:128],outVal[159:144],outVal[175:160],outVal[191:176],outVal[207:192],outVal[223:208],outVal[239:224],outVal[255:240],Aaddr,A);
//B
mux16_1 muxB(outVal[15:0],outVal[31:16],outVal[47:32],outVal[63:48],outVal[79:64],outVal[95:80],outVal[111:96],outVal[127:112],
        outVal[143:128],outVal[159:144],outVal[175:160],outVal[191:176],outVal[207:192],outVal[223:208],outVal[239:224],outVal[255:240],Baddr,B);
        
//Decode the Caddr if the load signal is enabled
//module decoder4_16(w, en, out);
decoder4_16 decode(Caddr, Load, decOut);

//use 2 to 1 muxes to select between either new value or retain old value
//mux2_1(a,b,sel,out)

mux2_1 mux0(outVal[15:0],    C,decOut[0], inVal[15:0]);
mux2_1 mux1(outVal[31:16],   C,decOut[1], inVal[31:16]);
mux2_1 mux2(outVal[47:32],   C,decOut[2], inVal[47:32]);
mux2_1 mux3(outVal[63:48],   C,decOut[3], inVal[63:48]);
mux2_1 mux4(outVal[79:64],   C,decOut[4], inVal[79:64]);
mux2_1 mux5(outVal[95:80],   C,decOut[5], inVal[95:80]);
mux2_1 mux6(outVal[111:96],  C,decOut[6], inVal[111:96]);
mux2_1 mux7(outVal[127:112], C,decOut[7], inVal[127:112]);
mux2_1 mux8(outVal[143:128], C,decOut[8], inVal[143:128]);
mux2_1 mux9(outVal[159:144], C,decOut[9], inVal[159:144]);
mux2_1 mux10(outVal[175:160],C,decOut[10],inVal[175:160]);
mux2_1 mux11(outVal[191:176],C,decOut[11],inVal[191:176]);
mux2_1 mux12(outVal[207:192],C,decOut[12],inVal[207:192]);
mux2_1 mux13(outVal[223:208],C,decOut[13],inVal[223:208]);
mux2_1 mux14(outVal[239:224],C,decOut[14],inVal[239:224]);
mux2_1 mux15(outVal[255:240],C,decOut[15],inVal[255:240]);

endmodule
