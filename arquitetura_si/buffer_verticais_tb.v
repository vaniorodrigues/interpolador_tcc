module buffer_verticais_tb;

parameter DATA_WIDTH = 8;

reg  clock, reset, enable;
reg signed [DATA_WIDTH+2-1:0] in_0;
reg signed [DATA_WIDTH+2-1:0] in_1;
reg signed [DATA_WIDTH+2-1:0] in_2;
reg signed [DATA_WIDTH+2-1:0] in_3;
reg signed [DATA_WIDTH+2-1:0] in_4;
reg signed [DATA_WIDTH+2-1:0] in_5;
reg signed [DATA_WIDTH+2-1:0] in_6;
reg signed [DATA_WIDTH+2-1:0] in_7;
reg signed [DATA_WIDTH+2-1:0] in_8;

reg signed [DATA_WIDTH+3-1:0] in_9;
reg signed [DATA_WIDTH+3-1:0] in_10;
reg signed [DATA_WIDTH+3-1:0] in_11;
reg signed [DATA_WIDTH+3-1:0] in_12;
reg signed [DATA_WIDTH+3-1:0] in_13;
reg signed [DATA_WIDTH+3-1:0] in_14;
reg signed [DATA_WIDTH+3-1:0] in_15;
reg signed [DATA_WIDTH+3-1:0] in_16;
reg signed [DATA_WIDTH+3-1:0] in_17;

reg signed [DATA_WIDTH+2-1:0] in_18;
reg signed [DATA_WIDTH+2-1:0] in_19;
reg signed [DATA_WIDTH+2-1:0] in_20;
reg signed [DATA_WIDTH+2-1:0] in_21;
reg signed [DATA_WIDTH+2-1:0] in_22;
reg signed [DATA_WIDTH+2-1:0] in_23;
reg signed [DATA_WIDTH+2-1:0] in_24;
reg signed [DATA_WIDTH+2-1:0] in_25;
reg signed [DATA_WIDTH+2-1:0] in_26;


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
wire [DATA_WIDTH-1:0] out_16;
wire [DATA_WIDTH-1:0] out_17;
wire [DATA_WIDTH-1:0] out_18;
wire [DATA_WIDTH-1:0] out_19;
wire [DATA_WIDTH-1:0] out_20;
wire [DATA_WIDTH-1:0] out_21;
wire [DATA_WIDTH-1:0] out_22;
wire [DATA_WIDTH-1:0] out_23;
wire [DATA_WIDTH-1:0] out_24;
wire [DATA_WIDTH-1:0] out_25;
wire [DATA_WIDTH-1:0] out_26;

initial begin
	$dumpfile("buffer_verticais_tb.vcd"); 
	// $dumpfile is used for specifying the file that the simulator will use to store the waveform, that can be used later using a waveform viewer. 
	$dumpvars(0, clock, reset, enable , in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15,in_16, in_17,in_18,in_19,in_20,in_21,in_22,in_23,in_24,in_25,in_26, out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15,out_16,out_17,out_18,out_19,out_20,out_21,out_22,out_23,out_24,out_25,out_26);
	//$dumpvars basically instructs the Verilog compiler to start dumping all the signals to "filtroup_tb.vcd".
	$monitor("clock=%b, reset=%b, enable=%b,in_0=%b,in_1=%b,in_2=%b,in_3=%b,in_4=%b,in_5=%b,in_6=%b,in_7=%b,in_8=%b,in_9=%b,in_10=%b,in_11=%b,in_12=%b,in_13=%b,in_14=%b,in_15=%b,in_16=%b, in_17=%b,in_18=%b,in_19=%b,in_20=%b,in_21=%b,in_22=%b,in_23=%b,in_24=%b,in_25=%b,in_26=%b,out_0=%b,out_1=%b,out_2=%b,out_3=%b,out_4=%b,out_5=%b,out_6=%b,out_7=%b,out_8=%b,out_9=%b,out_10=%b,out_11=%b,out_12=%b,out_13=%b,out_14=%b,out_15=%b,out_16=%b,out_17=%b,out_18=%b,out_19=%b,out_20=%b,out_21=%b,out_22=%b,out_23=%b,out_24=%b,out_25=%b,out_26=%b", clock, reset, enable,in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15,in_16, in_17,in_18,in_19,in_20,	in_21,in_22,in_23,in_24,in_25,in_26, out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15,out_16,out_17,out_18,out_19,out_20,out_21,out_22,out_23,out_24,out_25,out_26);

	clock = 0;
	reset = 1;
	enable = 0;
	#5 	reset = 0; 
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
		in_16 = 16;
		in_17 = 17;
		in_18 = 18;
		in_19 = 19;
		in_20 = 20;
		in_21 = 21;
		in_22 = 22;
		in_23 = 23;
		in_24 = 24;
		in_25 = 25;
		in_26 = 26;
	   enable = 1;
	#10
    	in_0 = 10;
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
		in_16 = 116;
		in_17 = 117;
		in_18 = 118;
		in_19 = 119;
		in_20 = 120;
		in_21 = 121;
		in_22 = 122;
		in_23 = 123;
		in_24 = 124;
		in_25 = 125;
		in_26 = 126;
	#10	
    	in_0 = 20;
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
		in_16 = 216;
		in_17 = 217;
		in_18 = 218;
		in_19 = 219;
		in_20 = 220;
		in_21 = 221;
		in_22 = 222;
		in_23 = 223;
		in_24 = 224;
		in_25 = 225;
		in_26 = 226;
	#10	
    	in_0 = 30;
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
		in_16 = 316;
		in_17 = 317;
		in_18 = 318;
		in_19 = 319;
		in_20 = 320;
		in_21 = 321;
		in_22 = 322;
		in_23 = 323;
		in_24 = 324;
		in_25 = 325;
		in_26 = 326;

	#10	
    	in_0 = 40;
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
		in_16 = 416;
		in_17 = 417;
		in_18 = 418;
		in_19 = 419;
		in_20 = 420;
		in_21 = 421;
		in_22 = 422;
		in_23 = 423;
		in_24 = 424;
		in_25 = 425;
		in_26 = 426;
	#10	
    	in_0 = 50;
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
		in_16 = 516;
		in_17 = 517;
		in_18 = 518;
		in_19 = 519;
		in_20 = 520;
		in_21 = 521;
		in_22 = 522;
		in_23 = 523;
		in_24 = 524;
		in_25 = 525;
		in_26 = 526;
	#10	
    	in_0 = 60;
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
		in_16 = 616;
		in_17 = 617;
		in_18 = 618;
		in_19 = 619;
		in_20 = 620;
		in_21 = 621;
		in_22 = 622;
		in_23 = 623;
		in_24 = 624;
		in_25 = 625;
		in_26 = 626;
	#10
    	in_0 = 70;
		in_1 = 71;
		in_2 = 72;
		in_3 = 73;
		in_4 = 74;
		in_5 = 75;
		in_6 = 76;
		in_7 = 77;
		in_8 = 78;
		in_9 = 79;
		in_10 =710;
		in_11 = 711;
		in_12 = 712;
		in_13 = 713;
		in_14 = 714;
		in_15 = 715; 
		in_16 = 716;
		in_17 = 717;
		in_18 = 718;
		in_19 = 719;
		in_20 = 720;
		in_21 = 721;
		in_22 = 722;
		in_23 = 723;
		in_24 = 724;
		in_25 = 725;
		in_26 = 726;

		#100 $finish;
end

always begin
 #5 clock = !clock;
end

buffer_verticais #(DATA_WIDTH) buffer_verticais_cell(
  .clock(clock),
  .reset(reset),
  .enable(enable),
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
  .in_16(in_16),
  .in_17(in_17),
  .in_18(in_18),
  .in_19(in_19),
  .in_20(in_20),
  .in_21(in_21),
  .in_22(in_22),
  .in_23(in_23),
  .in_24(in_24),
  .in_25(in_25),
  .in_26(in_26),
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
  .out_15(out_15),
  .out_16(out_16),
  .out_17(out_17),
  .out_18(out_18),
  .out_19(out_19),
  .out_20(out_20),
  .out_21(out_21),
  .out_22(out_22),
  .out_23(out_23),
  .out_24(out_24),
  .out_25(out_25),
  .out_26(out_26)

);


endmodule