`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:23 02/20/2023 
// Design Name: 
// Module Name:    SR_FF 
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
module SR_FF(q,clk,s,r,qbar);
input clk,s,r;
output reg q,qbar;

always@(posedge clk)
	begin
		case({s,r})
		2'b00: q=q;
		2'b01: q=1'b0;
		2'b10: q=1'b1;
		2'b11: q=1'bx;
		endcase
	qbar=~q;
end

endmodule
