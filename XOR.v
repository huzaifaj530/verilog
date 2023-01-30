`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:23 01/30/2023 
// Design Name: 
// Module Name:    XOR 
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
module XOR(
    input a,
    input b,
    output z
    );
assign z=((a&~b)|(~a&b));

endmodule
