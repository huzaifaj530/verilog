`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:10:46 04/10/2023
// Design Name:   data_memory
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/Lab_9/data_memory_TB.v
// Project Name:  Lab_9
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module data_memory_TB;

	// Inputs
	reg clk;
	reg [31:0] address;
	reg [31:0] write_data;
	reg mem_rd;
	reg mem_wr;

	// Outputs
	wire [31:0] read_data;

	// Instantiate the Unit Under Test (UUT)
	data_memory uut (
		.read_data(read_data), 
		.clk(clk), 
		.address(address), 
		.write_data(write_data), 
		.mem_rd(mem_rd), 
		.mem_wr(mem_wr)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		address = 0;
		write_data = 0;
		mem_rd = 0;
		mem_wr = 0;

		repeat(32)begin
			write_data=address+1;
			mem_wr=1;mem_rd=0;#5
			mem_rd=1;mem_wr=0;#5
			address=address+1;
		end

		// Wait 100 ns for global reset to finish
		$finish;
		// Add stimulus here

	end
      
endmodule

