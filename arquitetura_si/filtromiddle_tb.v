module filtromiddle_tb;


parameter DATA_WIDTH = 8;

reg clock, reset, enable;
reg signed [DATA_WIDTH+2-1:0] in0;
reg signed [DATA_WIDTH+2-1:0] in1;
reg signed [DATA_WIDTH+2-1:0] in2;
reg signed [DATA_WIDTH+2-1:0] in3;
reg signed [DATA_WIDTH+2-1:0] in4;
reg signed [DATA_WIDTH+2-1:0] in5;
reg signed [DATA_WIDTH+2-1:0] in6;
reg signed [DATA_WIDTH+2-1:0] in7;
wire signed [DATA_WIDTH+3-1:0] out;
wire signed [DATA_WIDTH+11-1:0] p;

initial begin
	$dumpfile("filtromiddle_tb.vcd"); 
	// $dumpfile is used for specifying the file that the simulator will use to store the waveform, that can be used later using a waveform viewer. 
	$dumpvars(0, clock, reset, enable, in0,in1,in2,in3,in4,in5,in6,in7, out);
	//$dumpvars basically instructs the Verilog compiler to start dumping all the signals to "filtroup_tb.vcd".
	$monitor("clock=%b, reset=%b, enable=%b, in0=%b,in1=%b,in2=%b,in3=%b,in4=%b,in5=%b,in6=%b,in7=%b, out=%b", clock, reset, enable, in0,in1,in2,in3,in4,in5,in6,in7, out);
	clock = 0;
	reset = 0;
	enable = 0;
	#5  enable = 1;
		in0 = 121;
		in1 = 5;
		in2 = 213;
		in3 = 50;
		in4 = 30;
		in5 = 184;
		in6 = 6;
		in7 = 9;
 
	
	#10 $finish; 
end


always begin
 #5 clock = !clock;
end


filtromiddle  #(DATA_WIDTH) filtromiddle_cell (
  .clock (clock),
  .reset (reset),
  .enable(enable),
  .in0(in0),
  .in1(in1),
  .in2(in2),
  .in3(in3),
  .in4(in4),
  .in5(in5),
  .in6(in6),
  .in7(in7),
  .out(out)
);


endmodule