`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:50:54 02/08/2023
// Design Name:   mux8
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/mux8/mux8simu.v
// Project Name:  mux8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux8simu;

	// Inputs
	reg s0;
	reg s1;
	reg s2;
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;

	// Outputs
	wire o;

	// Instantiate the Unit Under Test (UUT)
	mux8 uut (
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		s0 = 0;
		s1 = 0;
		s2 = 0;
		i0 = 0;
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		#10 s0=0;s1=0;s2=0;
		#10 s0=0;s1=0;s2=1;
		#10 s0=0;s1=1;s2=0;
		#10 s0=1;s1=0;s2=0;
		#10 s0=0;s1=1;s2=1;
		#10 s0=1;s1=1;s2=0;
		#10 s0=1;s1=0;s2=1;
		#10 s0=1;s1=1;s2=1;
		#10 $finish;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

