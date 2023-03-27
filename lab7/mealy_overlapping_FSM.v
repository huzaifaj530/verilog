`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:31:43 03/27/2023 
// Design Name: 
// Module Name:    mealy_overlapping_FSM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mealy_overlapping_FSM(clock,reset,x,y);

input clock; // clock signal
input reset; // reset input
input x; // binary input
output reg y;

parameter  s0=2'b00; // "Zero" State
parameter  s1=2'b01;
parameter  s2=2'b10;


reg [1:0] current_state, next_state;
always @(current_state or x)
begin
	y=0;
	case(current_state)
	s0:
	begin
	if(x==1)
	next_state=s1;
	else
	next_state=current_state;
	end
	
	s1:
	begin
	if(x==0)
	next_state=s2;
	else
	next_state=current_state;
	end
	
	s2:begin
	if(x==1)begin
	y=1;
	next_state=s1;
	end
	else
	next_state=s0;
	end
	
	default:next_state=s0;
	endcase
end


always@(posedge clock)
begin 
	y=0;
	if(reset)
	current_state=s0;
	else
	current_state=next_state;
end

endmodule
