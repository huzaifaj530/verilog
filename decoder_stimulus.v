`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:29 02/06/2023
// Design Name:   decoder
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/decoder/decoder_stimulus.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_stimulus;

	// Inputs
	reg a;
	reg b;
	reg y4;

	// Outputs
	wire y1;
	wire y2;
	wire y3;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.a(a), 
		.b(b), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		y4 = 0;

        
		// Add stimulus here

	end
      
endmodule

