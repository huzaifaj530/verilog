`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:18:10 03/27/2023
// Design Name:   Mealy_nonOverlapping_FSM
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab7_Mealy_Machine_FSM/Mealy_NonOverlapping_FSM_TB.v
// Project Name:  lab7_Mealy_Machine_FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mealy_nonOverlapping_FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mealy_NonOverlapping_FSM_TB;

	// Inputs
	reg clock;
	reg reset;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Mealy_nonOverlapping_FSM uut (
		.clock(clock), 
		.reset(reset), 
		.x(x), 
		.y(y)
	);

integer i;
reg [19:0] data;

always#5clock=~clock;
	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		x = 0;
			
		data=20'b11101011011011011111;
		
		reset=1;#10;
		reset=0;#10;
		
		for(i=0;i<20;i=i+1)
		begin
			x=data[i];
			#10;
		end

		$finish;
        
		// Add stimulus here
		// Wait 100 ns for global reset to finish

        
		// Add stimulus here

	end
      
endmodule

