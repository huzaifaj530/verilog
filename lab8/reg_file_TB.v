`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:39:30 04/03/2023
// Design Name:   Reg_file
// Module Name:   C:/Users/DSA Lab/Desktop/2021234/Register_file/reg_file_TB.v
// Project Name:  Register_file
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_file_TB;

	// Inputs
	reg clk;
	reg wr;
	reg [3:0] r1;
	reg [3:0] r2;
	reg [3:0] rw;
	reg [7:0] data_in;

	// Outputs
	wire [7:0] out1;
	wire [7:0] out2;

	// Instantiate the Unit Under Test (UUT)
	Reg_file uut (
		.clk(clk), 
		.wr(wr), 
		.r1(r1), 
		.r2(r2), 
		.rw(rw), 
		.data_in(data_in), 
		.out1(out1), 
		.out2(out2)
	);
always#5clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;wr = 0;
		r1 = 0;r2 = 0;rw = 0;
		data_in =0;#10;
		
		//input
		wr=1;
		rw=0;data_in=2;#10;
		rw=1;data_in=4;#10;
		rw=2;data_in=6;#10;
		rw=3;data_in=8;#10;
	
		//output
		wr=0;
		r1=0;r2=1;#10;
		r1=2;r2=3;#10;
		$finish;
		
		

	end
      
endmodule

