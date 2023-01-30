`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:06 01/30/2023
// Design Name:   XOR
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab1_3/xor_stimulus.v
// Project Name:  lab1_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: XOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module xor_stimulus;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	XOR uut (
		.a(a), 
		.b(b), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;#10;
		a = 0;b = 1;#10;
		a = 1;b = 0;#10;
		a = 1;b = 1;#10;
$finish;


        
		// Add stimulus here

	end
      
endmodule

