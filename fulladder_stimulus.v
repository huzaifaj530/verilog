`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:02:02 02/06/2023
// Design Name:   fulladder
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/decoder/fulladder_stimulus.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladder_stimulus;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;c = 0;#10;
		a = 0;b = 0;c = 1;#10;
		a = 0;b = 1;c = 0;#10;
		a = 0;b = 1;c = 1;#10;
		a = 1;b = 0;c = 0;#10;
		a = 1;b = 0;c = 1;#10;
		a = 1;b = 1;c = 0;#10;
		a = 1;b = 1;c = 1;#10;

		$finish;
	end
      
endmodule

