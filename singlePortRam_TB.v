`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:32 02/27/2023
// Design Name:   RAM_singlePort
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/lab5-implmentation-of-ram/singlePortRam_TB.v
// Project Name:  lab5-implmentation-of-ram
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM_singlePort
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module singlePortRam_TB;

	// Inputs
	reg [7:0] address;
	reg [7:0] data_in;
	reg wr;
	reg clk;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	RAM_singlePort uut (
		.data_out(data_out), 
		.address(address), 
		.data_in(data_in), 
		.wr(wr), 
		.clk(clk)
	);
always#2 clk=~clk;
	initial begin
		clk = 0;
		// Initialize Inputs
		address = 0;
		data_in = 0;
		wr = 1;#10
		address = 1;
		data_in = 1;
		wr = 1;#10
		address = 3;
		data_in = 3;
		wr = 1;#10
		
		wr=0;address=0;#10
		wr=0;address=1;#10
		wr=0;address=3;#10

		// Wait 100 ns for global reset to finish
		$finish;
        
		// Add stimulus here

	end
      
endmodule

