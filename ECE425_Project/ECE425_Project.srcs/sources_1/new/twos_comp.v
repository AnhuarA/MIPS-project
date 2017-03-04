`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2017 12:26:00 PM
// Design Name: 
// Module Name: twos_comp
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


module twos_comp(X,Y,Cin,addsub,sum,Cout,overflow);
input[15:0] X;
input[15:0] Y;
input addsub;               // Addition: addsub = 1  | Subtraction: addsub = 0 
input Cin;                  // Addition: Cin = 0 | Subtraction: Cin = 0;
output[15:0] sum;
output Cout;
output overflow;
wire[15:0] carry;
wire[15:0] w;                       //Output of addsub XOR Y

wire initCin;                        //Initial Carry in from add/sub control line

or OR0(initCin,addsub,Cin);          //Check first input of Cin from addsub
xor XOR0(w[0],addsub,Y[0]);
xor XOR1(w[1],addsub,Y[1]);
xor XOR2(w[2],addsub,Y[2]);
xor XOR3(w[3],addsub,Y[3]);
xor XOR4(w[4],addsub,Y[4]);
xor XOR5(w[5],addsub,Y[5]);
xor XOR6(w[6],addsub,Y[6]);
xor XOR7(w[7],addsub,Y[7]);
xor XOR8(w[8],addsub,Y[8]);
xor XOR9(w[9],addsub,Y[9]);
xor XOR10(w[10],addsub,Y[10]);
xor XOR11(w[11],addsub,Y[11]);
xor XOR12(w[12],addsub,Y[12]);
xor XOR13(w[13],addsub,Y[13]);
xor XOR14(w[14],addsub,Y[14]);
xor XOR15(w[15],addsub,Y[15]);

fullAdder fA0(.x(X[0]),.y(w[0]),.Cin(initCin),.sum(sum[0]),.Cout(carry[0]));
fullAdder fA1(.x(X[1]),.y(w[1]),.Cin(carry[0]),.sum(sum[1]),.Cout(carry[1]));
fullAdder fA2(.x(X[2]),.y(w[2]),.Cin(carry[1]),.sum(sum[2]),.Cout(carry[2]));
fullAdder fA3(.x(X[3]),.y(w[3]),.Cin(carry[2]),.sum(sum[3]),.Cout(carry[3]));
fullAdder fA4(.x(X[4]),.y(w[4]),.Cin(carry[3]),.sum(sum[4]),.Cout(carry[4]));
fullAdder fA5(.x(X[5]),.y(w[5]),.Cin(carry[4]),.sum(sum[5]),.Cout(carry[5]));
fullAdder fA6(.x(X[6]),.y(w[6]),.Cin(carry[5]),.sum(sum[6]),.Cout(carry[6]));
fullAdder fA7(.x(X[7]),.y(w[7]),.Cin(carry[6]),.sum(sum[7]),.Cout(carry[7]));
fullAdder fA8(.x(X[8]),.y(w[8]),.Cin(carry[7]),.sum(sum[8]),.Cout(carry[8]));
fullAdder fA9(.x(X[9]),.y(w[9]),.Cin(carry[8]),.sum(sum[9]),.Cout(carry[9]));
fullAdder fA10(.x(X[10]),.y(w[10]),.Cin(carry[9]),.sum(sum[10]),.Cout(carry[10]));
fullAdder fA11(.x(X[11]),.y(w[11]),.Cin(carry[10]),.sum(sum[11]),.Cout(carry[11]));
fullAdder fA12(.x(X[12]),.y(w[12]),.Cin(carry[11]),.sum(sum[12]),.Cout(carry[12]));
fullAdder fA13(.x(X[13]),.y(w[13]),.Cin(carry[12]),.sum(sum[13]),.Cout(carry[13]));
fullAdder fA14(.x(X[14]),.y(w[14]),.Cin(carry[13]),.sum(sum[14]),.Cout(carry[14]));
fullAdder fA15(.x(X[15]),.y(w[15]),.Cin(carry[14]),.sum(sum[15]),.Cout(Cout));

xor XORFlow(overflow,carry[14],Cout);           // Overflow output

endmodule
