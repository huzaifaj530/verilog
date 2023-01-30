`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:53 01/30/2023 
// Design Name: 
// Module Name:    taskv 
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
module taskv(
    input a,
    input b,
    input c,
    input d,
    output f
    );

assign f=(a&b)|(c&d);
endmodule
