`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:19:49 02/20/2023
// Design Name:   counter_loop
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab4-sequential_circuit_behaviour_model/Counter_loop_TB.v
// Project Name:  lab4-sequential_circuit_behaviour_model
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter_loop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter_loop_TB;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	counter_loop uut (
		.clk(clk), 
		.rst(rst), 
		.y(y)
	);

	initial begin
		clk = 0;
		forever #10 clk=~clk;
		// Initialize Inputs
		#50 rst=0;
		#50 rst = 1;
		#100
		// Wait 100 ns for global reset to finish
		$finish;    
		// Add stimulus here

	end
      
endmodule

