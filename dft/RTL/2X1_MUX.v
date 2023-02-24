module MUX_2X1 (

	input  wire in0,
	input  wire in1,
	input  wire sel,
	output wire out
 
);

assign out = (sel==1) ? in1 : in0;

endmodule
