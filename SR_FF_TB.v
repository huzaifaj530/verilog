`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:46:15 02/20/2023
// Design Name:   SR_FF
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab4-sequential_circuit_behaviour_model/SR_FF_TB.v
// Project Name:  lab4-sequential_circuit_behaviour_model
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SR_FF_TB;

	// Inputs
	reg clk;
	reg s;
	reg r;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	SR_FF uut (
		.q(q), 
		.clk(clk), 
		.s(s), 
		.r(r), 
		.qbar(qbar)
	);

always#10 clk=~clk;
	initial begin
		// Initialize Inputs
		
		clk=0;
		s = 0;r = 0;#100;
		s = 0;r = 1;#100;
		s = 1;r = 0;#100;
		s = 1;r = 1;#100;

		// Wait 100 ns for global reset to finish
		
       $finish;
		// Add stimulus here

	end
	
endmodule

