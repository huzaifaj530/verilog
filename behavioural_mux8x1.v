`timescale 1ns / 1ps

module behavioural_mux8x1(s0,s1,s2,i1,i2,i3,i4,i5,i6,i7,i8,o);
input s0,s1,s2,i1,i2,i3,i4,i5,i6,i7,i8;


output o;
reg o;

always@(*)
begin
	o=0;
	if(s0==0 && s1==0 && s2==0)
		o=i1;
	else if(s0==0 && s1==0 && s2==1)
		o=i2;
	else if(s0==0 && s1==1 && s2==0)
		o=i3;
	else if(s0==0 && s1==1 && s2==1)
		o=i4;
	else if(s0==1 && s1==0 && s2==0)
		o=i5;
	else if(s0==1 && s1==0 && s2==1)
		o=i6;
	else if(s0==1 && s1==1 && s2==0)
		o=i7;
	else
		o=i8;

end

endmodule
