`timescale 1ns / 1ps

module FSM(clock,reset,x,y);
input clock; // clock signal
input reset; // reset input
input x; // binary input
output reg y; // output of the sequence detector
parameter  s0=2'b00; // "Zero" State
parameter  s1=2'b01;
parameter  s2=2'b10;
parameter  s3=2'b11;


reg [1:0] current_state, next_state;
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
	if(x==0)
	next_state=s2;
	else
	next_state=current_state;
	end
	
	s2:begin
	if(x==1)
	next_state=s3;
	else
	next_state=s0;
	end
	
	s3:
	begin
	if(x==1)
	next_state=s1;
	else
	next_state=s2;
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
	if(current_state==s3)
	y=1;
end

endmodule
