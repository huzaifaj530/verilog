`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:56 03/06/2023
// Design Name:   FSM
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/LAB6_Finite_state_machine/FSM_TB.v
// Project Name:  LAB6_Finite_state_machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSM_TB;

	// Inputs
	reg clock;
	reg reset;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
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
		#10;

		// Wait 100 ns for global reset to finish
		$finish;
        
		// Add stimulus here

	end
      
endmodule

