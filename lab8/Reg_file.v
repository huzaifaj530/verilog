`timescale 1ns / 1ps


module Reg_file(

input clk,wr,
input [3:0] r1,r2,rw ,
input [7:0] data_in,
output [7:0] out1,out2   );

reg [7:0] Registers [3:0];

reg [7:0] out1,out2;


always@(posedge clk)begin
	if(wr)
		Registers[rw]<=data_in;
	else
		begin
		out1<=Registers[r1];
		out2<=Registers[r2];
		end
end
endmodule
