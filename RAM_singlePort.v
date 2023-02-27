`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:13 02/27/2023 
// Design Name: 
// Module Name:    RAM_singlePort 
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
module RAM_singlePort(  output [7:0] data_out,
    input [7:0] address,
    input [7:0] data_in, 
    input wr,
    input clk);
	 
    reg [7:0] memory [0:255];
	 reg [7:0] data_out;

    always @(posedge clk) begin
        if (wr)
            memory[address] = data_in;
        else
				data_out = memory[address];
    end

endmodule
