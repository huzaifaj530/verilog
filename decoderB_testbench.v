`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:23:38 02/13/2023
// Design Name:   behavioural_decoder2x4
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab3/decoderB_testbench.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: behavioural_decoder2x4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoderB_testbench;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y1;
	wire y2;
	wire y3;
	wire y4;

	// Instantiate the Unit Under Test (UUT)
	behavioural_decoder2x4 uut (
		.a(a), 
		.b(b), 
		.y1(y1), 
		.y2(y2), 
		.y3(y3), 
		.y4(y4)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;#10
		a = 0;b = 1;#10
		a = 1;b = 0;#10
		a = 1;b = 1;#10

		// Wait 100 ns for global reset to finish
      $finish; 
		// Add stimulus here

	end
      
endmodule

