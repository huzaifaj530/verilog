`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:57 03/06/2023
// Design Name:   lab6_Task1
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/LAB6_Finite_state_machine/lab3_Task1_TB.v
// Project Name:  LAB6_Finite_state_machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab6_Task1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab3_Task1_TB;

	// Inputs
	reg clock;
	reg reset;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	lab6_Task1 uut (
		.clock(clock), 
		.reset(reset), 
		.x(x), 
		.y(y)
	);

		reg [20:0] data;
		integer k;
		initial begin
		data =21'b111101001011101110010;
		k = 0;
		reset = 1; #20;
		reset = 0; #250;
		$finish;
		end
		initial begin
		clock = 0;
		forever begin
		#5;
		clock = ~clock;
		end 
		end
		always @(posedge clock) begin
		 x = data>>k;
		 k = k+1;
		end
        
		// Add stimulus her
      
endmodule

