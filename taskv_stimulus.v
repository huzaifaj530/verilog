`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:52 01/30/2023
// Design Name:   taskv
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab1_task/taskv_stimulus.v
// Project Name:  lab1_task
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: taskv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module taskv_stimulus;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	taskv uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		a = 0;b = 0;c = 0;d = 0;#10;
		a = 0;b = 0;c = 0;d = 1;#10;
		a = 0;b = 0;c = 1;d = 0;#10;
		a = 0;b = 0;c = 1;d = 1;#10;
		a = 0;b = 1;c = 0;d = 0;#10;
		a = 0;b = 1;c = 0;d = 1;#10;
		a = 0;b = 1;c = 1;d = 0;#10;
		a = 0;b = 1;c = 1;d = 1;#10;
		a = 1;b = 0;c = 0;d = 0;#10;
		a = 1;b = 0;c = 0;d = 1;#10;
		a = 1;b = 0;c = 1;d = 0;#10;
		a = 1;b = 0;c = 1;d = 1;#10;
		a = 1;b = 1;c = 0;d = 0;#10;
		a = 1;b = 1;c = 0;d = 1;#10;
		a = 1;b = 1;c = 1;d = 0;#10;
		a = 1;b = 1;c = 1;d = 1;#10;
		$finish;


        
		// Add stimulus here

	end
      
endmodule

