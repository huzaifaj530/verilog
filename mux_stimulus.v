`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:24:01 02/06/2023
// Design Name:   mux8x1
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/decoder/mux_stimulus.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_stimulus;

	// Inputs
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;
	reg i8;
	reg s1;
	reg s2;
	reg s3;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux8x1 uut (
		.out(out), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.i8(i8), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3)
	);

	initial begin
		// Initialize Inputs
		i1 = 1;
		i2 = 0;
		i3 = 1;
		i4 = 0;
		i5 = 1;
		i6 = 0;
		i7 = 1;
		i8 = 0;
		
		s1 = 0;s2 = 0;s3 = 0;#10;
		s1 = 0;s2 = 0;s3 = 1;#10;
		s1 = 0;s2 = 1;s3 = 0;#10;
		s1 = 0;s2 = 1;s3 = 1;#10;
		s1 = 1;s2 = 0;s3 = 0;#10;
		s1 = 1;s2 = 0;s3 = 1;#10;
		s1 = 1;s2 = 1;s3 = 0;#10;
		s1 = 1;s2 = 1;s3 = 1;#10;

		$finish;
		// Add stimulus here

	end
      
endmodule

