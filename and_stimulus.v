`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:51 01/30/2023
// Design Name:   and_module
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/COAL_lab1/and_stimulus.v
// Project Name:  COAL_lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: and_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module and_stimulus;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	and_module uut (
		.a(a), 
		.b(b), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;
#10; 	a = 0;b = 1;
#10; 	a = 1;b = 0;
#10; 	a = 1;b = 1;
#10;  $finish;
		
	end
      
endmodule

