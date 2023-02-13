`timescale 1ns / 1ps
module behavioural_decoder2x4(a,b,y1,y2,y3,y4);
input a,b;
output y1,y2,y3,y4;
reg y1,y2,y3,y4;
always@(*)
begin
	y1=0;y2=0;y3=0;y4=0;
	if(a==0 && b==0)
		y1=1;
	else if(a==0 && b==1)
		y2=1;
	else if(a==1 && b==0)
		y3=1;
	else
		y4=1;
end
endmodule
