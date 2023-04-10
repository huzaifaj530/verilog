`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:52 04/10/2023 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory(read_data,clk,address,write_data,mem_rd,mem_wr);
input clk;
input [31:0] address;
input [31:0] write_data;
input mem_rd;
input mem_wr;

reg [31:0] memory[31:0];
output reg [31:0] read_data;

always@(posedge clk)begin
	
	if(mem_rd==1)
		read_data=memory[address];
	if(mem_wr==1)
		memory[address]=write_data;

end

endmodule
