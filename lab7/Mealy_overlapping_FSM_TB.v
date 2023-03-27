`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:40:53 03/27/2023
// Design Name:   mealy_overlapping_FSM
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab7_Mealy_Machine_FSM/Mealy_overlapping_FSM_TB.v
// Project Name:  lab7_Mealy_Machine_FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mealy_overlapping_FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mealy_overlapping_FSM_TB;

	// Inputs
	reg clock;
	reg reset;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mealy_overlapping_FSM uut (
		.clock(clock), 
		.reset(reset), 
		.x(x), 
		.y(y)
	);
always#5clock=~clock;
	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		x = 0;
			
		#10;x=1;
		#10;x=0;
		#10;x=0;
		#10;x=1;
		#10;x=0;
		#10;x=1;
		#10;x=0;
		#10;x=1;
		#10;

		// Wait 100 ns for global reset to finish
		$finish;
        
		// Add stimulus here

	end
      
endmodule

