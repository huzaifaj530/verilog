`timescale 1ns / 1ps

module Mealy_nonOverlapping_FSM(clock,reset,x,y);

input clock; // clock signal
input reset; // reset input
input x; // binary input
output reg y;

parameter  s0=3'b000; // "Zero" State
parameter  s1=3'b001;
parameter  s2=3'b010;
parameter  s3=3'b011;
parameter  s4=3'b100;



reg [2:0] current_state, next_state;
always @(current_state or x)
begin
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
	if(x==1)
	next_state=s2;
	else
	next_state=s0;
	end
	
	s2:begin
	if(x==0)
	next_state=s3;
	else
	next_state=s2;
	end
	
	s3:begin
	if(x==1)
	next_state=s4;
	else
	next_state=s0;
	end
	
	s4:begin
	if(x==1)
	next_state=s0;
	else
	next_state=s2;
	end
	
	default:next_state=s0;
	endcase
end


always@(posedge clock)
begin 
	y=0;
	if(current_state==s4 && x==1)
		y=1;	
	if(reset)
	current_state=s0;
	else
	current_state=next_state;
end

endmodule
