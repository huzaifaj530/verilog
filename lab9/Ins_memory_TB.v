`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:11:23 04/10/2023
// Design Name:   Istruction_Memory
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/Lab_9/Ins_memory_TB.v
// Project Name:  Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Istruction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ins_memory_TB;

	// Inputs
	reg clk;
	reg [31:0] read_addr;

	// Outputs
	wire [31:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	Istruction_Memory uut (
		.clk(clk), 
		.read_addr(read_addr), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		read_addr = 0;
		#100;
		
		read_addr=1;
		clk=1;
		#100;
		
		read_addr=2;
		clk=1;
		#100;
		
		
		
		$finish;
        
		// Add stimulus here

	end
      
endmodule

