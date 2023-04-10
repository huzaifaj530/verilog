`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:36:17 04/10/2023
// Design Name:   ProgramCounter
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/Lab_9/PC_TB.v
// Project Name:  Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProgramCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_TB;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] count;

	// Instantiate the Unit Under Test (UUT)
	ProgramCounter uut (
		.clk(clk), 
		.reset(reset), 
		.count(count)
	);
always#5clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;reset = 0;
		
		#50;
		reset=1;
		#10;
		reset=0;
		#200;
		

		// Wait 100 ns for global reset to finish
$finish;        
		// Add stimulus here

	end
      
endmodule

