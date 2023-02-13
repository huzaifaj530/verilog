`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:08 02/06/2023 
// Design Name: 
// Module Name:    fulladder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fulladder(a,b,c,sum,carry);
input a;
input b;
input c;
output sum;
output carry;
xor(sum,a,b,c);
wire w1,w2,w3;

and(w1,a,b);
and(w2,b,c);
and(w3,c,a);

or(carry,w1,w2,w3);
endmodule
