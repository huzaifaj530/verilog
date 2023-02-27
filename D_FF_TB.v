`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:34 02/20/2023
// Design Name:   D_FF
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab4-sequential_circuit_behaviour_model/D_FF_TB.v
// Project Name:  lab4-sequential_circuit_behaviour_model
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_TB;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.q(q), 
		.d(d), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		d = 0;#100;
		d=1;#100
		

		// Wait 100 ns for global reset to finish
$finish;
        
		// Add stimulus here

	end
      always#10 clk=~clk;
endmodule

