`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:08 02/27/2023 
// Design Name: 
// Module Name:    Ram-Design 
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
module Ram_Design( output  [3:0] data_out,
    input [3:0] address,
    input [3:0] data_in, 
    input wr,rd);
	reg [3:0] data_out;
    reg [3:0] memory [15:0];
	
    always @(*) begin
        if (wr) begin
            memory[address] = data_in;
        end
		  if(rd)begin
        data_out = memory[address];
		  end
    end

endmodule
