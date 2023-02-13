`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:02 02/13/2023
// Design Name:   ALU
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab3/aluB_TestBench.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module aluB_TestBench;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [3:0] s;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.out(out)
	);
integer i;
	initial begin
		// Initialize Inputs
		a = 3;b = 2;s = 0;#10
		
		for (i=0;i<=7;i=i+1)
      begin
       s = s + 1;
       #10;
      end;

		// Wait 100 ns for global reset to finish
$finish;
		// Add stimulus here

	end
      
endmodule

