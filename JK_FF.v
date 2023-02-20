`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:55 02/20/2023 
// Design Name: 
// Module Name:    JK_FF 
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
module JK_FF(j,k,q,qbar,clk);
input clk,j,k;
output reg q,qbar;

always@(posedge clk)
	begin
		case({j,k})
		2'b00: q=q;
		2'b01: q=1'b0;
		2'b10: q=1'b1;
		2'b11: q=~q;
		endcase
	qbar=~q;
end


endmodule
