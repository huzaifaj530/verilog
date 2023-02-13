`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:54 02/13/2023
// Design Name:   behavioural_halfadder
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab3/halfadderB_TB.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: behavioural_halfadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module halfadderB_TB;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire c;
	wire s;

	// Instantiate the Unit Under Test (UUT)
	behavioural_halfadder uut (
		.c(c), 
		.s(s), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"s=%b,c=%b,a=%b,b=%b",s,c,a,b);
		a = 0;b = 0;#10;
		a = 0;b = 1;#10;
		a = 1;b = 0;#10;
		a = 1;b = 1;#10;
		$finish;
	

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

