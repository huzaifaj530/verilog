`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:40 02/20/2023
// Design Name:   JK_FF
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab4-sequential_circuit_behaviour_model/JK_FF_TB.v
// Project Name:  lab4-sequential_circuit_behaviour_model
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_FF_TB;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	JK_FF uut (
		.j(j), 
		.k(k), 
		.q(q), 
		.qbar(qbar), 
		.clk(clk)
	);
always#10 clk=~clk;
	initial begin
		// Initialize Inputs
		
		clk=0;
		j = 0;k = 0;#100;
		j = 0;k = 1;#100;
		j = 1;k = 0;#100;
		j = 1;k = 1;#100;

		// Wait 100 ns for global reset to finish
		
       $finish;
		// Add stimulus here

	end
      
endmodule

