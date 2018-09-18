module mux3x1_tb;

parameter DATA_WIDTH= 8;

reg c0, c1; 
reg signed [DATA_WIDTH+2-1:0] in_0;
reg signed [DATA_WIDTH+2-1:0] in_1;
reg signed [DATA_WIDTH+2-1:0] in_2;
reg signed [DATA_WIDTH+2-1:0] in_3;
reg signed [DATA_WIDTH+2-1:0] in_4;
reg signed [DATA_WIDTH+2-1:0] in_5;
reg signed [DATA_WIDTH+2-1:0] in_6;
reg signed [DATA_WIDTH+2-1:0] in_7;
reg signed [DATA_WIDTH+2-1:0] in_8;
reg signed [DATA_WIDTH+2-1:0] in_9;
reg signed [DATA_WIDTH+2-1:0] in_10;
reg signed [DATA_WIDTH+2-1:0] in_11;
reg signed [DATA_WIDTH+2-1:0] in_12;
reg signed [DATA_WIDTH+2-1:0] in_13;
reg signed [DATA_WIDTH+2-1:0] in_14;
reg signed [DATA_WIDTH+2-1:0] in_15;
reg signed [DATA_WIDTH+2-1:0] in_16;
reg signed [DATA_WIDTH+2-1:0] in_17;
reg signed [DATA_WIDTH+2-1:0] in_18;
reg signed [DATA_WIDTH+2-1:0] in_19;
reg signed [DATA_WIDTH+2-1:0] in_20;
reg signed [DATA_WIDTH+2-1:0] in_21;
reg signed [DATA_WIDTH+2-1:0] in_22;
reg signed [DATA_WIDTH+2-1:0] in_23;
reg signed [DATA_WIDTH+2-1:0] in_24;
reg signed [DATA_WIDTH+2-1:0] in_25;
reg signed [DATA_WIDTH+2-1:0] in_26;
reg signed [DATA_WIDTH+2-1:0] in_27;
reg signed [DATA_WIDTH+2-1:0] in_28;
reg signed [DATA_WIDTH+2-1:0] in_29;
reg signed [DATA_WIDTH+2-1:0] in_30;
reg signed [DATA_WIDTH+2-1:0] in_31;
reg signed [DATA_WIDTH+2-1:0] in_32;
reg signed [DATA_WIDTH+2-1:0] in_33;
reg signed [DATA_WIDTH+2-1:0] in_34;
reg signed [DATA_WIDTH+2-1:0] in_35;
reg signed [DATA_WIDTH+2-1:0] in_36;
reg signed [DATA_WIDTH+2-1:0] in_37;
reg signed [DATA_WIDTH+2-1:0] in_38;
reg signed [DATA_WIDTH+2-1:0] in_39;
reg signed [DATA_WIDTH+2-1:0] in_40;
reg signed [DATA_WIDTH+2-1:0] in_41;
reg signed [DATA_WIDTH+2-1:0] in_42;
reg signed [DATA_WIDTH+2-1:0] in_43;
reg signed [DATA_WIDTH+2-1:0] in_44;
reg signed [DATA_WIDTH+2-1:0] in_45;
reg signed [DATA_WIDTH+2-1:0] in_46;
reg signed [DATA_WIDTH+2-1:0] in_47;

wire signed [DATA_WIDTH+2-1:0] out_0;
wire signed [DATA_WIDTH+2-1:0] out_1;
wire signed [DATA_WIDTH+2-1:0] out_2;
wire signed [DATA_WIDTH+2-1:0] out_3;
wire signed [DATA_WIDTH+2-1:0] out_4;
wire signed [DATA_WIDTH+2-1:0] out_5;
wire signed [DATA_WIDTH+2-1:0] out_6;
wire signed [DATA_WIDTH+2-1:0] out_7;
wire signed [DATA_WIDTH+2-1:0] out_8;
wire signed [DATA_WIDTH+2-1:0] out_9;
wire signed [DATA_WIDTH+2-1:0] out_10;
wire signed [DATA_WIDTH+2-1:0] out_11;
wire signed [DATA_WIDTH+2-1:0] out_12;
wire signed [DATA_WIDTH+2-1:0] out_13;
wire signed [DATA_WIDTH+2-1:0] out_14;
wire signed [DATA_WIDTH+2-1:0] out_15;



initial begin
	$dumpfile("mux3x1_tb.vcd"); 
	$dumpvars;
	$monitor("out_0=%b,out_1=%b,out_2=%b,out_3=%b,out_4=%b,out_5=%b,out_6=%b,out_7=%b,out_8=%b,out_9=%b,out_10=%b,out_11=%b,out_12=%b,out_13=%b,out_14=%b,out_15=%b", out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15);
	
	c0 = 0;
	c1 = 0;
	#5 	
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
   in_10 = 0;
   in_11 = 1;
   in_12 = 2;
   in_13 = 3;
   in_14 = 4;
   in_15 = 5;
   in_16 = 6;
   in_17 = 7;
   in_18 = 8;
   in_19 = 9;
   in_20 = 0;
   in_21 = 1;
   in_22 = 2;
   in_23 = 3;
   in_24 = 4;
   in_25 = 5;
   in_26 = 6;
   in_27 = 7;
   in_28 = 8;
   in_29 = 9;
   in_30 = 0;
   in_31 = 1;
   in_32 = 2;
   in_33 = 3;
   in_34 = 4;
   in_35 = 5;
   in_36 = 6;
   in_37 = 7;
   in_38 = 8;
   in_39 = 9;
   in_40 = 0;
   in_41 = 1;
   in_42 = 2;
   in_43 = 3;
   in_44 = 4;
   in_45 = 5;
   in_46 = 6;
   in_47 = 7;
   #5 
   c0 = 0;
   c1 = 1;
   #5 
   c0 = 1;
   c1 = 1;
   	
	
	#15 $finish; 
end

mux3x1 #(DATA_WIDTH) mux3x1_cell(
  .c0(c0),
  .c1(c1),
  .in_0 (in_0 ),
  .in_1 (in_1 ),
  .in_2 (in_2 ),
  .in_3 (in_3 ),
  .in_4 (in_4 ),
  .in_5 (in_5 ),
  .in_6 (in_6 ),
  .in_7 (in_7 ),
  .in_8 (in_8 ),
  .in_9 (in_9 ),
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
  .in_27(in_27),
  .in_28(in_28),
  .in_29(in_29),
  .in_30(in_30),
  .in_31(in_31),
  .in_32(in_32),
  .in_33(in_33),
  .in_34(in_34),
  .in_35(in_35),
  .in_36(in_36),
  .in_37(in_37),
  .in_38(in_38),
  .in_39(in_39),
  .in_40(in_40),
  .in_41(in_41),
  .in_42(in_42),
  .in_43(in_43),
  .in_44(in_44),
  .in_45(in_45),
  .in_46(in_46),
  .in_47(in_47),
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


