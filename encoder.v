`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:49 02/08/2023 
// Design Name: 
// Module Name:    encoder 
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
module encoder(w1,w2,w3,w4,a,b
    );
	 input a,b;
	 output w1,w2,w3,w4;
	 wire anot,bnot;
	 not(anot,a);
	 not(bnot,b);
	 and(w1,anot,bnot);
	 and(w2,anot,b);
	 and(w3,a,bnot);
	 and(w4,a,b);


endmodule
