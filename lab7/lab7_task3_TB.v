`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:07 03/27/2023
// Design Name:   Lab7_task3
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab7_Mealy_Machine_FSM/lab7_task3_TB.v
// Project Name:  lab7_Mealy_Machine_FSM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Lab7_task3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab7_task3_TB;

	// Inputs
	reg clock;
	reg reset;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Lab7_task3 uut (
		.clock(clock), 
		.reset(reset), 
		.x(x), 
		.y(y)
	);

integer i;
reg [27:0] data;

always#5clock=~clock;
	initial begin
		// Initialize Inputs
		clock = 0;
		reset = 0;
		x = 0;
			
		data=28'b0010000000100001001000110100;
		
		reset=1;#10;
		reset=0;#10;
		
		for(i=0;i<28;i=i+1)
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

