module buffer_ah_tb;


parameter DATA_WIDTH = 8;


reg signed clock, reset, enable, direction;
reg signed [DATA_WIDTH+2-1:0] in_0;
reg signed [DATA_WIDTH+2-1:0] in_1;
reg signed [DATA_WIDTH+2-1:0] in_2;
reg signed [DATA_WIDTH+2-1:0] in_3;
reg signed [DATA_WIDTH+2-1:0] in_4;
reg signed [DATA_WIDTH+2-1:0] in_5;
reg signed [DATA_WIDTH+2-1:0] in_6;
reg signed [DATA_WIDTH+2-1:0] in_7;
reg signed [DATA_WIDTH+2-1:0] in_8;

wire signed [DATA_WIDTH+2-1:0] out_0;
wire signed [DATA_WIDTH+2-1:0] out_1;
wire signed [DATA_WIDTH+2-1:0] out_2;
wire signed [DATA_WIDTH+2-1:0] out_3;
wire signed [DATA_WIDTH+2-1:0] out_4;
wire signed [DATA_WIDTH+2-1:0] out_5;
wire signed [DATA_WIDTH+2-1:0] out_6;
wire signed [DATA_WIDTH+2-1:0] out_7;
wire signed [DATA_WIDTH+2-1:0] out_8;


initial begin
	$dumpfile("buffer_ah_tb.vcd"); 
	// $dumpfile is used for specifying the file that the simulator will use to store the waveform, that can be used later using a waveform viewer. 
	$dumpvars(0, clock, reset, enable, direction, in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8, out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8);
	//$dumpvars basically instructs the Verilog compiler to start dumping all the signals to "filtroup_tb.vcd".
	$monitor("clock=%b, reset=%b, enable=%b, direction=%b, in_0=%b,in_1=%b,in_2=%b,in_3=%b,in_4=%b,in_5=%b,in_6=%b,in_7=%b,in_8=%b,out_0=%b,out_1=%b,out_2=%b,out_3=%b,out_4=%b,out_5=%b,out_6=%b,out_7=%b,out_8=%b", clock, reset, enable,direction, in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8);
	clock = 0;
	enable = 0;
	reset = 1;
	direction = 0;
	#5  reset = 0;
	    enable = 1; 
    	in_0 = 0;
		in_1 = 1;
		in_2 = 2;
		in_3 = 3;
		in_4 = 4;
		in_5 = 5;
		in_6 = 6;
		in_7 = 7;
		in_8 = 8; 
	#10  in_0 = 10;
		in_1 = 11;
		in_2 = 12;
		in_3 = 13;
		in_4 = 14;
		in_5 = 15;
		in_6 = 16;
		in_7 = 17;
		in_8 = 18;
	#10  in_0 = 20;
		in_1 = 21;
		in_2 = 22;
		in_3 = 23;
		in_4 = 24;
		in_5 = 25;
		in_6 = 26;
		in_7 = 27;
		in_8 = 28;
	#10  in_0 = 30;
		in_1 = 31;
		in_2 = 32;
		in_3 = 33;
		in_4 = 34;
		in_5 = 35;
		in_6 = 36;
		in_7 = 37;
		in_8 = 38;
	#10  in_0 = 40;
		in_1 = 41;
		in_2 = 42;
		in_3 = 43;
		in_4 = 44;
		in_5 = 45;
		in_6 = 46;
		in_7 = 47;
		in_8 = 48;
	#10  in_0 = 50;
		in_1 = 51;
		in_2 = 52;
		in_3 = 53;
		in_4 = 54;
		in_5 = 55;
		in_6 = 56;
		in_7 = 57;
		in_8 = 58;
	#10  in_0 = 60;
		in_1 = 61;
		in_2 = 62;
		in_3 = 63;
		in_4 = 64;
		in_5 = 65;
		in_6 = 66;
		in_7 = 67;
		in_8 = 68;
	#10 in_0 = 70;
		in_1 = 71;
		in_2 = 72;
		in_3 = 73;
		in_4 = 74;
		in_5 = 75;
		in_6 = 76;
		in_7 = 77;
		in_8 = 78;
	#10	enable = 0;
	 direction = 1; // Começa a ler verticalmente, e inicia a realimentação
	#10 enable =1;   // Permite que a primira coluna esteja estavel por pelo menos 1 ciclo de relógio 
	#90 enable = 0;
		direction = 0; 
  // Esvaziar o registrador e permite ler horizontalmente
	#10  enable =1; // Permite que a primira linha esteja estavel por pelo menos 1 ciclo de relógio 
	#100 
	$finish; 
end


always begin
 #5 clock = !clock;
end

buffer_ah #(DATA_WIDTH) buffer_ah_cell(
  .clock(clock),
  .reset(reset),
  .enable(enable),
  .direction(direction),
  .in_0(in_0),
  .in_1(in_1),
  .in_2(in_2),
  .in_3(in_3),
  .in_4(in_4),
  .in_5(in_5),
  .in_6(in_6),
  .in_7(in_7),
  .in_8(in_8),
  .out_0(out_0),
  .out_1(out_1),
  .out_2(out_2),
  .out_3(out_3),
  .out_4(out_4),
  .out_5(out_5),
  .out_6(out_6),
  .out_7(out_7),
  .out_8(out_8)
);


endmodule