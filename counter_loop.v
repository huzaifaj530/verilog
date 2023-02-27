`timescale 1ns / 1ps

module counter_loop(clk,rst,y);
input clk,rst;
output reg [3:0]y;

always@(posedge clk)

	begin
	if(!rst)
		y=4'b0000;
	else 
	 y = y+4;
	
	end
endmodule
