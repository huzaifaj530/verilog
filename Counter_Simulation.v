`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:26:33 02/22/2023
// Design Name:   counter_loop
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab4-sequential_circuit_behaviour_model/Counter_Simulation.v
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

module Counter_Simulation;

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

always #10 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;rst = 1;#20;
		clk=0;rst=0;#20;
		#500
		// Wait 100 ns for global reset to finish
		$finish;    
		#100;
        
		// Add stimulus here

	end
      
endmodule

