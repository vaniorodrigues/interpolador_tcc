module filtros_tb;

parameter DATA_WIDTH = 8;

reg signed clock, reset, enable;
reg signed [DATA_WIDTH+1:0] in_0;
reg signed [DATA_WIDTH+1:0] in_1;
reg signed [DATA_WIDTH+1:0] in_2;
reg signed [DATA_WIDTH+1:0] in_3;
reg signed [DATA_WIDTH+1:0] in_4;
reg signed [DATA_WIDTH+1:0] in_5;
reg signed [DATA_WIDTH+1:0] in_6;
reg signed [DATA_WIDTH+1:0] in_7;
reg signed [DATA_WIDTH+1:0] in_8;
reg signed [DATA_WIDTH+1:0] in_9;
reg signed [DATA_WIDTH+1:0] in_10;
reg signed [DATA_WIDTH+1:0] in_11;
reg signed [DATA_WIDTH+1:0] in_12;
reg signed [DATA_WIDTH+1:0] in_13;
reg signed [DATA_WIDTH+1:0] in_14;
reg signed [DATA_WIDTH+1:0] in_15;

wire signed [DATA_WIDTH+1:0] out_0;
wire signed [DATA_WIDTH+1:0] out_1;
wire signed [DATA_WIDTH+1:0] out_2;
wire signed [DATA_WIDTH+1:0] out_3;
wire signed [DATA_WIDTH+1:0] out_4;
wire signed [DATA_WIDTH+1:0] out_5;
wire signed [DATA_WIDTH+1:0] out_6;
wire signed [DATA_WIDTH+1:0] out_7;
wire signed [DATA_WIDTH+1:0] out_8;
wire signed [DATA_WIDTH+2:0] out_9;
wire signed [DATA_WIDTH+2:0] out_10;
wire signed [DATA_WIDTH+2:0] out_11;
wire signed [DATA_WIDTH+2:0] out_12;
wire signed [DATA_WIDTH+2:0] out_13;
wire signed [DATA_WIDTH+2:0] out_14;
wire signed [DATA_WIDTH+2:0] out_15;
wire signed [DATA_WIDTH+2:0] out_16;
wire signed [DATA_WIDTH+2:0] out_17;
wire signed [DATA_WIDTH+1:0] out_18;
wire signed [DATA_WIDTH+1:0] out_19;
wire signed [DATA_WIDTH+1:0] out_20;
wire signed [DATA_WIDTH+1:0] out_21;
wire signed [DATA_WIDTH+1:0] out_22;
wire signed [DATA_WIDTH+1:0] out_23;
wire signed [DATA_WIDTH+1:0] out_24;
wire signed [DATA_WIDTH+1:0] out_25;
wire signed [DATA_WIDTH+1:0] out_26;


initial begin
	$dumpfile("filtros_tb.vcd"); 
	// $dumpfile is used for specifying the file that the simulator will use to store the waveform, that can be used later using a waveform viewer. 
	$dumpvars(0, clock, reset, enable, in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,in_12,in_13,in_14,in_15, out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15,out_16,out_17,out_18,out_19,out_20,out_21,out_22,out_23,out_24,out_25,out_26);
	//$dumpvars basically instructs the Verilog compiler to start dumping all the signals to "filtroup_tb.vcd".
	$monitor("clock=%b, reset=%b, enable=%b, in_0=%b,in_1=%b,in_2=%b,in_3=%b,in_4=%b,in_5=%b,in_6=%b,in_7=%b,in_8=%b,in_9=%b,in_10=%b,in_11=%b,in_12=%b,in_13=%b,in_14=%b,in_15=%b,out_0=%b,out_1=%b,out_2=%b,out_3=%b,out_4=%b,out_5=%b,out_6=%b,out_7=%b,out_8=%b,out_9=%b,out_10=%b,out_11=%b,out_12=%b,out_13=%b,out_14=%b,out_15=%b,out_16=%b,out_17=%b,out_18=%b,out_19=%b,out_20=%b,out_21=%b,out_22=%b,out_23=%b,out_24=%b,out_25=%b,out_26=%b", clock, reset, enable, in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,in_12,in_13,in_14,in_15,out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15,out_16,out_17,out_18,out_19,out_20,out_21,out_22,out_23,out_24,out_25,out_26);
	clock = 0;
	reset = 0;
	enable = 0;
	#5 enable = 1; 
    //in_0  = 232; linha 0, a b c
		//in_1  = 142;
		//in_2  = 17;
		//in_3  = 54 ;
		//in_4  = 251;
		//in_5  = 30 ;
		//in_6  = 16 ;
		//in_7  = 95;
		//in_8  = 181 ;
		//in_9  = 76;
		//in_10 = 123 ;
		//in_11 = 185 ;
		//in_12 = 145 ;
		//in_13 = 74;
		//in_14 = 72 ;
		//in_15 = 230 ;
	  in_0  =161; //coluna 11, diagonais c
    in_1  =132; 
    in_2  =202; 
    in_3  =56; 
    in_4  =40; 
    in_5  =231; 
    in_6  =70; 
    in_7  =165; 
    in_8  =172; 
    in_9  =95; 
    in_10 =44; 
    in_11 =106; 
    in_12 =126; 
    in_13 =183; 
    in_14 =118; 
    in_15 =236;
	 
	#10 $finish; 
end


always begin
 #5 clock = !clock;
end


filtros #(DATA_WIDTH) filtros_cell(
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