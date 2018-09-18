module buffer_int_tb;

parameter DATA_WIDTH = 8;

reg  clock, reset, enable, direction, modo_leitura;
reg [DATA_WIDTH-1:0] in_0;
reg [DATA_WIDTH-1:0] in_1;
reg [DATA_WIDTH-1:0] in_2;
reg [DATA_WIDTH-1:0] in_3;
reg [DATA_WIDTH-1:0] in_4;
reg [DATA_WIDTH-1:0] in_5;
reg [DATA_WIDTH-1:0] in_6;
reg [DATA_WIDTH-1:0] in_7;
reg [DATA_WIDTH-1:0] in_8;
reg [DATA_WIDTH-1:0] in_9;
reg [DATA_WIDTH-1:0] in_10;
reg [DATA_WIDTH-1:0] in_11;
reg [DATA_WIDTH-1:0] in_12;
reg [DATA_WIDTH-1:0] in_13;
reg [DATA_WIDTH-1:0] in_14;
reg [DATA_WIDTH-1:0] in_15;



wire [DATA_WIDTH-1:0] out_0;
wire [DATA_WIDTH-1:0] out_1;
wire [DATA_WIDTH-1:0] out_2;
wire [DATA_WIDTH-1:0] out_3;
wire [DATA_WIDTH-1:0] out_4;
wire [DATA_WIDTH-1:0] out_5;
wire [DATA_WIDTH-1:0] out_6;
wire [DATA_WIDTH-1:0] out_7;
wire [DATA_WIDTH-1:0] out_8;
wire [DATA_WIDTH-1:0] out_9;
wire [DATA_WIDTH-1:0] out_10;
wire [DATA_WIDTH-1:0] out_11;
wire [DATA_WIDTH-1:0] out_12;
wire [DATA_WIDTH-1:0] out_13;
wire [DATA_WIDTH-1:0] out_14;
wire [DATA_WIDTH-1:0] out_15;
wire modo;

initial begin
	$dumpfile("buffer_int_tb.vcd"); 
	// $dumpfile is used for specifying the file that the simulator will use to store the waveform, that can be used later using a waveform viewer. 
	$dumpvars(0, clock, reset, enable, direction, modo_leitura , in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,in_12,in_13,in_14,in_15, out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15);
	//$dumpvars basically instructs the Verilog compiler to start dumping all the signals to "filtroup_tb.vcd".
	$monitor("clock=%b, reset=%b, enable=%b, direction=%b, modo_leitura=%b,in_0=%b,in_1=%b,in_2=%b,in_3=%b,in_4=%b,in_5=%b,in_6=%b,in_7=%b,in_8=%b,in_9=%b,in_10=%b,in_11=%b,in_12=%b,in_13=%b,in_14=%b,in_15=%b,out_0=%b,out_1=%b,out_2=%b,out_3=%b,out_4=%b,out_5=%b,out_6=%b,out_7=%b,out_8=%b,out_9=%b,out_10=%b,out_11=%b,out_12=%b,out_13=%b,out_14=%b,out_15=%b", clock, reset, enable,direction,modo_leitura, in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,in_12,in_13,in_14,in_15, out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15);
	clock = 0;
	reset = 1;
	enable = 0;
	direction = 0;
	modo_leitura = 0;
	#5 enable = 1; 
    #10	reset = 0;
    	in_0 = 0;
		in_1 = 1;
		in_2 = 2;
		in_3 = 3;
		in_4 = 4;
		in_5 = 5;
		in_6 = 6;
		in_7 = 7;
		in_8 = 8;
		in_9 = 9;
		in_10 = 10;
		in_11 = 11;
		in_12 = 12;
		in_13 = 13;
		in_14 = 14;
		in_15 = 15; 
	    
	#10 in_0 = 10;
		in_1 = 11;
		in_2 = 12;
		in_3 = 13;
		in_4 = 14;
		in_5 = 15;
		in_6 = 16;
		in_7 = 17;
		in_8 = 18;
		in_9 = 19;
		in_10 = 110;
		in_11 = 111;
		in_12 = 112;
		in_13 = 113;
		in_14 = 114;
		in_15 = 115; 
	#10  in_0 = 20;
		in_1 = 21;
		in_2 = 22;
		in_3 = 23;
		in_4 = 24;
		in_5 = 25;
		in_6 = 26;
		in_7 = 27;
		in_8 = 28;
		in_9 = 29;
		in_10 = 210;
		in_11 = 211;
		in_12 = 212;
		in_13 = 213;
		in_14 = 214;
		in_15 = 215; 
	#10  in_0 = 30;
		in_1 = 31;
		in_2 = 32;
		in_3 = 33;
		in_4 = 34;
		in_5 = 35;
		in_6 = 36;
		in_7 = 37;
		in_8 = 38;
		in_9 = 39;
		in_10 = 310;
		in_11 = 311;
		in_12 = 312;
		in_13 = 313;
		in_14 = 314;
		in_15 = 315; 
	#10  in_0 = 40;
		in_1 = 41;
		in_2 = 42;
		in_3 = 43;
		in_4 = 44;
		in_5 = 45;
		in_6 = 46;
		in_7 = 47;
		in_8 = 48;
		in_9 = 49;
		in_10 = 410;
		in_11 = 411;
		in_12 = 412;
		in_13 = 413;
		in_14 = 414;
		in_15 = 415; 
	#10  in_0 = 50;
		in_1 = 51;
		in_2 = 52;
		in_3 = 53;
		in_4 = 54;
		in_5 = 55;
		in_6 = 56;
		in_7 = 57;
		in_8 = 58;
		in_9 = 59;
		in_10 = 510;
		in_11 = 511;
		in_12 = 512;
		in_13 = 513;
		in_14 = 514;
		in_15 = 515; 
	#10  in_0 = 60;
		in_1 = 61;
		in_2 = 62;
		in_3 = 63;
		in_4 = 64;
		in_5 = 65;
		in_6 = 66;
		in_7 = 67;
		in_8 = 68;
		in_9 = 69;
		in_10 = 610;
		in_11 = 611;
		in_12 = 612;
		in_13 = 613;
		in_14 = 614;
		in_15 = 615;
	#10 in_0 = 70;
		in_1 = 71;
		in_2 = 72;
		in_3 = 73;
		in_4 = 74;
		in_5 = 75;
		in_6 = 76;
		in_7 = 77;
		in_8 = 78;
		in_9 = 79;
		in_10 = 710;
		in_11 = 711;
		in_12 = 712;
		in_13 = 713;
		in_14 = 714;
		in_15 = 715; 

	//#3  direction = 1;
	modo_leitura = 1; // Começa a ler linhas da memoria
	#80 // le todos as 8 linhas
	
	#10 enable = 0;
	direction = 1; // coloca as linhas nas posições no valor iniciais
	#10 enable = 1; // começa a ler as colunas da memoria
	#350 $finish; 
end


always begin
 #5 clock = !clock;
end

buffer_int #(DATA_WIDTH) buffer_int_cell(
  .clock(clock),
  .reset(reset),
  .enable(enable),
  .direction(direction),
  .modo_leitura(modo_leitura),
  .in_0(in_0),
  .in_1(in_1),
  .in_2(in_2),
  .in_3(in_3),
  .in_4(in_4),
  .in_5(in_5),
  .in_6(in_6),
  .in_7(in_7),
  .in_8(in_8),
  .in_9(in_9),
  .in_10(in_10),
  .in_11(in_11),
  .in_12(in_12),
  .in_13(in_13),
  .in_14(in_14),
  .in_15(in_15),
  .out_0(out_0),
  .out_1(out_1),
  .out_2(out_2),
  .out_3(out_3),
  .out_4(out_4),
  .out_5(out_5),
  .out_6(out_6),
  .out_7(out_7),
  .out_8(out_8),
  .out_9(out_9),
  .out_10(out_10),
  .out_11(out_11),
  .out_12(out_12),
  .out_13(out_13),
  .out_14(out_14),
  .out_15(out_15)
);


endmodule