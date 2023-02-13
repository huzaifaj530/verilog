`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:21 02/08/2023 
// Design Name: 
// Module Name:    mux8 
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
module mux8(
    input s0,
    input s1,
    input s2,
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    output o
    );
	 wire w1,w2,w3,w4,w5,w6,w7,w8;
	 wire s0bar,s1bar,s2bar;
	 not(s0bar,s0);
	 not(s1bar,s1);
	 not(s2bar,s2);
	 and(w1,s0bar,s1bar,s2bar,i0);
	 and(w2,s0bar,s1bar,s2,i1);
	 and(w3,s0bar,s1,s2bar,i2);
	 and(w4,s0,s1bar,s2bar,i3);
	 and(w5,s0bar,s1,s2,i4);
	 and(w6,s0,s1,s2bar,i5);
	 and(w7,s0,s1bar,s2,i6);
	 and(w8,s0,s1,s2,i7);
	 or(o,w1,w2,w3,w4,w5,w6,w7,w8);
	 
	 
	 


endmodule
