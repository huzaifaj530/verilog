`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:49:18 02/13/2023
// Design Name:   behavioural_mux8x1
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab3/muxB_TB.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: behavioural_mux8x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module muxB_TB;

	// Inputs
	reg s0;
	reg s1;
	reg s2;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;
	reg i8;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	behavioural_mux8x1 uut (
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.i8(i8), 
		.o(o)
	);

	initial begin
	$monitor($time,"o=%b,s0=%b,s1=%b,s2=%b,i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b,i8=%b",o,s0,s1,s2,i1,i2,i3,i4,i5,i6,i7,i8);
		// Initialize Inputs
		i1 = 1;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		i8 = 0;

		s0 = 0;s1 = 0;s2 = 0;#10
		s0 = 0;s1 = 0;s2 = 1;#10
		s0 = 0;s1 = 1;s2 = 0;#10
		s0 = 0;s1 = 1;s2 = 1;#10
		s0 = 1;s1 = 0;s2 = 0;#10
		s0 = 1;s1 = 0;s2 = 1;#10
		s0 = 1;s1 = 1;s2 = 0;#10
		s0 = 1;s1 = 1;s2 = 1;#10

		// Wait 100 ns for global reset to finish
		$finish;
        
		// Add stimulus here

	end
      
endmodule

