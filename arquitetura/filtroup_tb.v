module filtroup_tb;

parameter DATA_WIDTH = 8;


reg signed [DATA_WIDTH+1:0] in0;
reg signed [DATA_WIDTH+1:0] in1;
reg signed [DATA_WIDTH+1:0] in2;
reg signed [DATA_WIDTH+1:0] in3;
reg signed [DATA_WIDTH+1:0] in4;
reg signed [DATA_WIDTH+1:0] in5;
reg signed [DATA_WIDTH+1:0] in6;
wire signed [DATA_WIDTH+1:0] out;
wire signed [DATA_WIDTH+10:0] p;

initial begin
	$dumpfile("filtroup_tb.vcd"); 
	// $dumpfile is used for specifying the file that the simulator will use to store the waveform, that can be used later using a waveform viewer. 
	$dumpvars(0, in0,in1,in2,in3,in4,in5,in6, out);
	//$dumpvars basically instructs the Verilog compiler to start dumping all the signals to "filtroup_tb.vcd".
	$monitor("in0=%b,in1=%b,in2=%b,in3=%b,in4=%b,in5=%b,in6=%b, out=%b", in0,in1,in2,in3,in4,in5,in6, out);
		in0 = 232;
		in1 = 142;
		in2 = 17;
		in3 = 54;
		in4 = 251;
		in5 = 30;
		in6 = 16;
	
	#10 $finish; 
end


filtroup #(DATA_WIDTH) filtroup_cell (
  .in0(in0),
  .in1(in1),
  .in2(in2),
  .in3(in3),
  .in4(in4),
  .in5(in5),
  .in6(in6),
  .out(out)
);


endmodule