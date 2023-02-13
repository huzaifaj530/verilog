`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:37:43 02/08/2023
// Design Name:   encoder
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/encoder/encodersimu.v
// Project Name:  encoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encodersimu;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire w1;
	wire w2;
	wire w3;
	wire w4;

	// Instantiate the Unit Under Test (UUT)
	encoder uut (
		.w1(w1), 
		.w2(w2), 
		.w3(w3), 
		.w4(w4), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		
		#10 a=0;b=0;
		#10 a=0;b=1;
		#10 a=1;b=0;
		#10 a=1;b=1;
      #10 $finish;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

