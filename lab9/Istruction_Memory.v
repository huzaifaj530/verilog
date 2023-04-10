`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:54:13 04/10/2023 
// Design Name: 
// Module Name:    Istruction_Memory 
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
module Istruction_Memory(clk,read_addr,instruction);
input clk;
input [31:0] read_addr;
output [31:0] instruction;
reg [31:0] imemory [63:0];

integer k;

wire [5:0] shifted_read_addr;
assign shifted_read_addr=read_addr[3:0];
assign instruction=imemory[shifted_read_addr];

always@(posedge clk)
begin

for(k=30;k<64;k=k+1)
begin
	imemory[k]=0;
end

	imemory[0]=0;//add
	imemory[1]=1;//sub
	imemory[2]=2;//not
	imemory[3]=3;//or
	imemory[4]=4;//and
	imemory[5]=5;//nor
	imemory[6]=6;//nand
	imemory[7]=7;//xor
	imemory[8]=8;//xnor
	imemory[9]=9;//lw
	imemory[10]=10;//sw
	imemory[11]=11;//beq

end

endmodule
