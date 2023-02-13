`timescale 1ns / 1ps

module behavioural_halfadder(
c,s,a,b);
input a,b;
output c,s;
reg c,s;

always@(*)
	begin
	s=a^b;
	c=a&b;
	end
endmodule
