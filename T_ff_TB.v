`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:41:21 02/20/2023
// Design Name:   T_FF
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab4-sequential_circuit_behaviour_model/T_ff_TB.v
// Project Name:  lab4-sequential_circuit_behaviour_model
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_ff_TB;

	// Inputs
	reg t;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	T_FF uut (
		.t(t), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);
always#10 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		
		t=0;#50;
		t=1;#50;

		// Wait 100 ns for global reset to finish
	$finish;
        
		// Add stimulus here

	end
      
endmodule

