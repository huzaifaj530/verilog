`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:15 02/27/2023
// Design Name:   Ram_Design
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab5-implmentation-of-ram/RAM_TB.v
// Project Name:  lab5-implmentation-of-ram
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ram_Design
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM_TB;

	// Inputs
	reg [3:0] address;
	reg [3:0] data_in;
	reg wr;
	reg rd;

	// Outputs
	wire [3:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	Ram_Design uut (
		.data_out(data_out), 
		.address(address), 
		.data_in(data_in), 
		.wr(wr), 
		.rd(rd)
	);

	initial begin
		// Initialize Inputs
		wr = 1;rd=0;//writing
		address=4'b0000;
		repeat(16)begin
			data_in=address+1;
			wr=1;rd=0;#5
			rd=1;wr=0;#5
			address=address+1;
		end

		// Wait 100 ns for global reset to finish
		$finish;
        
		// Add stimulus here

	end
      
endmodule

