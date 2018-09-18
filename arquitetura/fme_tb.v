module fme_tb;

	parameter H_CLK_PERIOD = 5;
	parameter CLK_PERIOD = H_CLK_PERIOD*2;
	

	parameter DATA_WIDTH = 8;

	reg clock;
	reg reset;
	reg enable;
	reg [DATA_WIDTH-1:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15, in_16, in_17,in_18,in_19,in_20,in_21,in_22,in_23,in_24,in_25,in_26, in_27, in_28, in_29, in_30, in_31;

	reg [5:0] i; 
	reg [3:0] quanti_escritas, K;
	reg [DATA_WIDTH-1:0] integer_pixels [255:0];
	reg [DATA_WIDTH-1:0] horizontal_pixels_a [143:0];
	reg [DATA_WIDTH-1:0] horizontal_pixels_b [143:0];
	reg [DATA_WIDTH-1:0] horizontal_pixels_c [143:0];
	reg [DATA_WIDTH-1:0] verticais_pixels [215:0];
	reg [DATA_WIDTH-1:0] diagonais_pixels_a [242:0];
	reg [DATA_WIDTH-1:0] diagonais_pixels_b [242:0];
	reg [DATA_WIDTH-1:0] diagonais_pixels_c [242:0];


	wire [DATA_WIDTH-1:0] out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15,out_16,out_17,out_18,out_19,out_20,out_21,out_22,out_23,out_24,out_25,out_26,out_27,out_28,out_29,out_30,out_31,out_32,out_33,out_34,out_35,out_36,out_37,out_38,out_39,out_40,out_41,out_42,out_43,out_44,out_45,out_46,out_47,out_48,out_49,out_50,out_51,out_52,out_53,out_54,out_55,out_56,out_57,out_58,out_59,out_60,out_61,out_62,out_63,out_64,out_65,out_66,out_67,out_68,out_69,out_70,out_71,out_72,out_73,out_74,out_75,out_76,out_77,out_78,out_79,	out_80,out_81,out_82,out_83,out_84,out_85,out_86,out_87,out_88,out_89,	out_90,out_91,out_92,out_93,out_94,out_95,out_96,out_97,out_98,out_99,out_100,out_101,out_102,out_103,out_104,out_105,out_106,out_107,out_108,out_109,	out_110,out_111,out_112,out_113,out_114,out_115,out_116,out_117,out_118,out_119,out_120,out_121,out_122,out_123,out_124,out_125,out_126,out_127,out_128,out_129,out_130,out_131,out_132,out_133,out_134,out_135,out_136,out_137,out_138,out_139,out_140,out_141,out_142,out_143,out_144,out_145,out_146,out_147,out_148,out_149,out_150,out_151,out_152,out_153,out_154,out_155,out_156,out_157,out_158,out_159,out_160,out_161;
	wire done;

	fme #(DATA_WIDTH) fme_cell(
  	.clock (clock),
  	.reset (reset),
  	.enable(enable),
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
	.out_26(out_26),
	.out_27(out_27),
	.out_28(out_28),
	.out_29(out_29),
	.out_30(out_30),
	.out_31(out_31),
	.out_32(out_32),
	.out_33(out_33),
	.out_34(out_34),
	.out_35(out_35),
	.out_36(out_36),
	.out_37(out_37),
	.out_38(out_38),
	.out_39(out_39),
	.out_40(out_40),
	.out_41(out_41),
	.out_42(out_42),
	.out_43(out_43),
	.out_44(out_44),
	.out_45(out_45),
	.out_46(out_46),
	.out_47(out_47),
	.out_48(out_48),
	.out_49(out_49),
	.out_50(out_50),
	.out_51(out_51),
	.out_52(out_52),
	.out_53(out_53),
	.out_54(out_54),
	.out_55(out_55),
	.out_56(out_56),
	.out_57(out_57),
	.out_58(out_58),
	.out_59(out_59),
	.out_60(out_60),
	.out_61(out_61),
	.out_62(out_62),
	.out_63(out_63),
	.out_64(out_64),
	.out_65(out_65),
	.out_66(out_66),
	.out_67(out_67),
	.out_68(out_68),
	.out_69(out_69),
	.out_70(out_70),
	.out_71(out_71),
	.out_72(out_72),
	.out_73(out_73),
	.out_74(out_74),
	.out_75(out_75),
	.out_76(out_76),
	.out_77(out_77),
	.out_78(out_78),
	.out_79(out_79),
	.out_80(out_80),
	.out_81(out_81),
	.out_82(out_82),
	.out_83(out_83),
	.out_84(out_84),
	.out_85(out_85),
	.out_86(out_86),
	.out_87(out_87),
	.out_88(out_88),
	.out_89(out_89),
	.out_90(out_90),
	.out_91(out_91),
	.out_92(out_92),
	.out_93(out_93),
	.out_94(out_94),
	.out_95(out_95),
	.out_96(out_96),
	.out_97(out_97),
	.out_98(out_98),
	.out_99(out_99),
	.out_100(out_100),
	.out_101(out_101),
	.out_102(out_102),
	.out_103(out_103),
	.out_104(out_104),
	.out_105(out_105),
	.out_106(out_106),
	.out_107(out_107),
	.out_108(out_108),
	.out_109(out_109),	
	.out_110(out_110),
	.out_111(out_111),
	.out_112(out_112),
	.out_113(out_113),
	.out_114(out_114),
	.out_115(out_115),
	.out_116(out_116),
	.out_117(out_117),
	.out_118(out_118),
	.out_119(out_119),
	.out_120(out_120),
	.out_121(out_121),
	.out_122(out_122),
	.out_123(out_123),
	.out_124(out_124),
	.out_125(out_125),
	.out_126(out_126),
	.out_127(out_127),
	.out_128(out_128),
	.out_129(out_129),
	.out_130(out_130),
	.out_131(out_131),
	.out_132(out_132),
	.out_133(out_133),
	.out_134(out_134),
	.out_135(out_135),
	.out_136(out_136),
	.out_137(out_137),
	.out_138(out_138),
	.out_139(out_139),
	.out_140(out_140),
	.out_141(out_141),
	.out_142(out_142),
	.out_143(out_143),
	.out_144(out_144),
	.out_145(out_145),
	.out_146(out_146),
	.out_147(out_147),
	.out_148(out_148),
	.out_149(out_149),
	.out_150(out_150),
	.out_151(out_151),
	.out_152(out_152),
	.out_153(out_153),
	.out_154(out_154),
	.out_155(out_155),
	.out_156(out_156),
	.out_157(out_157),
	.out_158(out_158),
	.out_159(out_159),	
	.out_160(out_160),
	.out_161(out_161),
	.done(done)
	);


	initial $readmemh("./fprintf_referencia/integer_pixels.txt", integer_pixels);
	initial $readmemh("./fprintf_referencia/horizontal_pixels_a.txt", horizontal_pixels_a);
	initial $readmemh("./fprintf_referencia/horizontal_pixels_b.txt", horizontal_pixels_b);
	initial $readmemh("./fprintf_referencia/horizontal_pixels_c.txt", horizontal_pixels_c);
	initial $readmemh("./fprintf_referencia/verticais_pixels.txt", verticais_pixels);
	initial $readmemh("./fprintf_referencia/diagonais_pixels_a.txt", diagonais_pixels_a);
	initial $readmemh("./fprintf_referencia/diagonais_pixels_b.txt", diagonais_pixels_b);
	initial $readmemh("./fprintf_referencia/diagonais_pixels_c.txt", diagonais_pixels_c);

	always 
		#H_CLK_PERIOD clock = !clock;
 

	initial begin
		$dumpfile ("fme_tb.vcd");
		$dumpvars;

		clock = 0;
		reset = 0;
		enable = 0;

		i = 0;
		K = 0;
		quanti_escritas = 8;
		in_0  = 0;
		in_1  = 0;
		in_2  = 0;
		in_3  = 0;
		in_4  = 0;
		in_5  = 0;
		in_6  = 0;
		in_7  = 0;
		in_8  = 0;
		in_9  = 0;
		in_10 = 0;
		in_11 = 0;
		in_12 = 0;
		in_13 = 0;
		in_14 = 0;
		in_15 = 0;
		in_16 = 0;
		in_17 = 0;
		in_18 = 0;
		in_19 = 0;
		in_20 = 0;
		in_21 = 0;
		in_22 = 0;
		in_23 = 0;
		in_24 = 0;
		in_25 = 0;
		in_26 = 0;
		in_27 = 0;
		in_28 = 0;
		in_29 = 0;
		in_30 = 0;
		in_31 = 0;

		#H_CLK_PERIOD
			reset = 1;
				
		#CLK_PERIOD
			reset = 0;
		
		#CLK_PERIOD 
			enable = 1;


		for (i = 0; i < 8; i = i +1) begin // espera os calculos serem realizados
			#CLK_PERIOD;//ESCRITA_INTEIRAS1
			in_0  = integer_pixels [i];
			in_1  = integer_pixels [i+16*1];
			in_2  = integer_pixels [i+16*2];
			in_3  = integer_pixels [i+16*3];
			in_4  = integer_pixels [i+16*4];
			in_5  = integer_pixels [i+16*5];
			in_6  = integer_pixels [i+16*6];
			in_7  = integer_pixels [i+16*7];
			in_8  = integer_pixels [i+16*8];
			in_9  = integer_pixels [i+16*9];
			in_10 = integer_pixels [i+16*10];
			in_11 = integer_pixels [i+16*11];
			in_12 = integer_pixels [i+16*12];
			in_13 = integer_pixels [i+16*13];
			in_14 = integer_pixels [i+16*14];
			in_15 = integer_pixels [i+16*15];
			in_16 = integer_pixels [i+8];
			in_17 = integer_pixels [i+8+16*1];
			in_18 = integer_pixels [i+8+16*2];
			in_19 = integer_pixels [i+8+16*3];
			in_20 = integer_pixels [i+8+16*4];
			in_21 = integer_pixels [i+8+16*5];
			in_22 = integer_pixels [i+8+16*6];
			in_23 = integer_pixels [i+8+16*7];
			in_24 = integer_pixels [i+8+16*8];
			in_25 = integer_pixels [i+8+16*9];
			in_26 = integer_pixels [i+8+16*10];
			in_27 = integer_pixels [i+8+16*11];
			in_28 = integer_pixels [i+8+16*12];
			in_29 = integer_pixels [i+8+16*13];
			in_30 = integer_pixels [i+8+16*14];
			in_31 = integer_pixels [i+8+16*15];
		end



		for (i = 8; i < 25; i = i +1) begin // espera os calculos serem realizados
			#CLK_PERIOD;
		end

		for (i= 25; i <34; i = i +1) begin
		#CLK_PERIOD;
		if (out_0 != horizontal_pixels_a[K*16]) begin
				$display("ERROR:(out_0, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_0, horizontal_pixels_a[K*16]);
				$finish;	
		end
		if (out_1 != horizontal_pixels_a[K*16+1]) begin
				$display("ERROR:(out_1, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_1, horizontal_pixels_a[K*16+1]);
				$finish;	
		end
		if (out_2 != horizontal_pixels_a[K*16+2]) begin
				$display("ERROR:(out_2, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_2, horizontal_pixels_a[K*16+2]);
				$finish;	
		end
		if (out_3 != horizontal_pixels_a[K*16+3]) begin
				$display("ERROR:(out_3, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_3, horizontal_pixels_a[K*16+3]);
				$finish;	
		end
		if (out_4 != horizontal_pixels_a[K*16+4]) begin
				$display("ERROR:(out_4, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_4, horizontal_pixels_a[K*16+4]);
				$finish;	
		end
		if (out_5 != horizontal_pixels_a[K*16+5]) begin
				$display("ERROR:(out_5, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_5, horizontal_pixels_a[K*16+5]);
				$finish;	
		end
		if (out_6 != horizontal_pixels_a[K*16+6]) begin
				$display("ERROR:(out_6, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_6, horizontal_pixels_a[K*16+6]);
				$finish;	
		end
		if (out_7 != horizontal_pixels_a[K*16+7]) begin
				$display("ERROR:(out_7, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_7, horizontal_pixels_a[K*16+7]);
				$finish;	
		end
		if (out_9 != horizontal_pixels_a[K*16+8]) begin
				$display("ERROR:(out_9, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_9, horizontal_pixels_a[K*16+8]);
				$finish;	
		end
		if (out_10 != horizontal_pixels_a[K*16+9]) begin
				$display("ERROR:(out_10, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_10, horizontal_pixels_a[K*16+9]);
				$finish;	
		end
		if (out_11 != horizontal_pixels_a[K*16+10]) begin
				$display("ERROR:(out_11, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_11, horizontal_pixels_a[K*16+10]);
				$finish;	
		end
		if (out_12 != horizontal_pixels_a[K*16+11]) begin
				$display("ERROR:(out_12, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_12, horizontal_pixels_a[K*16+11]);
				$finish;	
		end
		if (out_13 != horizontal_pixels_a[K*16+12]) begin
				$display("ERROR:(out_13, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_13, horizontal_pixels_a[K*16+12]);
				$finish;	
		end
		if (out_14 != horizontal_pixels_a[K*16+13]) begin
				$display("ERROR:(out_14, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_14, horizontal_pixels_a[K*16+13]);
				$finish;	
		end
		if (out_15 != horizontal_pixels_a[K*16+14]) begin
				$display("ERROR:(out_15, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_15, horizontal_pixels_a[K*16+14]);
				$finish;	
		end
		if (out_16 != horizontal_pixels_a[K*16+15]) begin
				$display("ERROR:(out_16, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_16, horizontal_pixels_a[K*16+15]);
				$finish;	
		end
		if (out_18 != horizontal_pixels_b[K*16]) begin
				$display("ERROR:(out_18, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_18, horizontal_pixels_b[K*16]);
				$finish;	
		end
		if (out_19 != horizontal_pixels_b[K*16+1]) begin
				$display("ERROR:(out_19, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_19, horizontal_pixels_b[K*16+1]);
				$finish;	
		end
		if (out_20 != horizontal_pixels_b[K*16+2]) begin
				$display("ERROR:(out_20, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_20, horizontal_pixels_b[K*16+2]);
				$finish;	
		end
		if (out_21 != horizontal_pixels_b[K*16+3]) begin
				$display("ERROR:(out_21, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_21, horizontal_pixels_b[K*16+3]);
				$finish;	
		end
		if (out_22 != horizontal_pixels_b[K*16+4]) begin
				$display("ERROR:(out_22, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_22, horizontal_pixels_b[K*16+4]);
				$finish;	
		end
		if (out_23 != horizontal_pixels_b[K*16+5]) begin
				$display("ERROR:(out_23, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_23, horizontal_pixels_b[K*16+5]);
				$finish;	
		end
		if (out_24 != horizontal_pixels_b[K*16+6]) begin
				$display("ERROR:(out_24, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_24, horizontal_pixels_b[K*16+6]);
				$finish;	
		end
		if (out_25 != horizontal_pixels_b[K*16+7]) begin
				$display("ERROR:(out_25, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_25, horizontal_pixels_b[K*16+7]);
				$finish;	
		end
		if (out_27 != horizontal_pixels_b[K*16+8]) begin
				$display("ERROR:(out_27, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_27, horizontal_pixels_b[K*16+8]);
				$finish;	
		end
		if (out_28 != horizontal_pixels_b[K*16+9]) begin
				$display("ERROR:(out_28, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_28, horizontal_pixels_b[K*16+9]);
				$finish;	
		end
		if (out_29 != horizontal_pixels_b[K*16+10]) begin
				$display("ERROR:(out_29, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_29, horizontal_pixels_b[K*16+10]);
				$finish;	
		end
		if (out_30 != horizontal_pixels_b[K*16+11]) begin
				$display("ERROR:(out_30, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_30, horizontal_pixels_b[K*16+11]);
				$finish;	
		end
		if (out_31 != horizontal_pixels_b[K*16+12]) begin
				$display("ERROR:(out_31, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_31, horizontal_pixels_b[K*16+12]);
				$finish;	
		end
		if (out_32 != horizontal_pixels_b[K*16+13]) begin
				$display("ERROR:(out_32, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_32, horizontal_pixels_b[K*16+13]);
				$finish;	
		end
		if (out_33 != horizontal_pixels_b[K*16+14]) begin
				$display("ERROR:(out_33, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_33, horizontal_pixels_b[K*16+14]);
				$finish;	
		end
		if (out_34 != horizontal_pixels_b[K*16+15]) begin
				$display("ERROR:(out_34, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_34, horizontal_pixels_b[K*16+15]);
				$finish;	
		end

		if (out_36 != horizontal_pixels_c[K*16]) begin
				$display("ERROR:(out_36, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_36, horizontal_pixels_c[K*16]);
				$finish;	
		end
		if (out_37 != horizontal_pixels_c[K*16+1]) begin
				$display("ERROR:(out_37, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_37, horizontal_pixels_c[K*16+1]);
				$finish;	
		end
		if (out_38 != horizontal_pixels_c[K*16+2]) begin
				$display("ERROR:(out_38, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_38, horizontal_pixels_c[K*16+2]);
				$finish;	
		end
		if (out_39 != horizontal_pixels_c[K*16+3]) begin
				$display("ERROR:(out_39, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_39, horizontal_pixels_c[K*16+3]);
				$finish;	
		end
		if (out_40 != horizontal_pixels_c[K*16+4]) begin
				$display("ERROR:(out_40, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_40, horizontal_pixels_c[K*16+4]);
				$finish;	
		end
		if (out_41 != horizontal_pixels_c[K*16+5]) begin
				$display("ERROR:(out_41, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_41, horizontal_pixels_c[K*16+5]);
				$finish;	
		end
		if (out_42 != horizontal_pixels_c[K*16+6]) begin
				$display("ERROR:(out_42, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_42, horizontal_pixels_c[K*16+6]);
				$finish;	
		end
		if (out_43 != horizontal_pixels_c[K*16+7]) begin
				$display("ERROR:(out_43, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_43, horizontal_pixels_c[K*16+7]);
				$finish;	
		end
		if (out_45 != horizontal_pixels_c[K*16+8]) begin
				$display("ERROR:(out_45, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_45, horizontal_pixels_c[K*16+8]);
				$finish;	
		end
		if (out_46 != horizontal_pixels_c[K*16+9]) begin
				$display("ERROR:(out_46, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_46, horizontal_pixels_c[K*16+9]);
				$finish;	
		end
		if (out_47 != horizontal_pixels_c[K*16+10]) begin
				$display("ERROR:(out_47, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_47, horizontal_pixels_c[K*16+10]);
				$finish;	
		end
		if (out_48 != horizontal_pixels_c[K*16+11]) begin
				$display("ERROR:(out_48, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_48, horizontal_pixels_c[K*16+11]);
				$finish;	
		end
		if (out_49 != horizontal_pixels_c[K*16+12]) begin
				$display("ERROR:(out_49, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_49, horizontal_pixels_c[K*16+12]);
				$finish;	
		end
		if (out_50 != horizontal_pixels_c[K*16+13]) begin
				$display("ERROR:(out_50, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_50, horizontal_pixels_c[K*16+13]);
				$finish;	
		end
		if (out_51 != horizontal_pixels_c[K*16+14]) begin
				$display("ERROR:(out_51, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_51, horizontal_pixels_c[K*16+14]);
				$finish;	
		end
		if (out_52 != horizontal_pixels_c[K*16+15]) begin
				$display("ERROR:(out_52, interaçao = %d, Resultado Obtido = %d, Resultado Esperado = %d", K, out_52, horizontal_pixels_c[K*16+15]);
				$finish;	
		end
		K = K+1;
		end

		K = 0;
		#CLK_PERIOD
		for (i = 35; i < 42; i = i +1) begin
			if (out_54 != verticais_pixels[K*27+0] )begin
			$display ("ERROR: out_54, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_54, verticais_pixels[K*27+0]);
			$finish;
			end
			if (out_55 != verticais_pixels[K*27+1] )begin
			$display ("ERROR: out_55, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_55, verticais_pixels[K*27+1]);
				$finish;
			end
			if (out_56 != verticais_pixels[K*27+2] )begin
			$display ("ERROR: out_56, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_56, verticais_pixels[K*27+2]);
				$finish;
			end
			if (out_57 != verticais_pixels[K*27+3] )begin
			$display ("ERROR: out_57, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_57, verticais_pixels[K*27+3]);
				$finish;
			end
			if (out_58 != verticais_pixels[K*27+4] )begin
			$display ("ERROR: out_58, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_58, verticais_pixels[K*27+4]);
				$finish;
			end
			if (out_59 != verticais_pixels[K*27+5] )begin
			$display ("ERROR: out_59, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_59, verticais_pixels[K*27+5]);
				$finish;
			end
			if (out_60 != verticais_pixels[K*27+6] )begin
			$display ("ERROR: out_60, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_60, verticais_pixels[K*27+6]);
				$finish;
			end
			if (out_61 != verticais_pixels[K*27+7] )begin
			$display ("ERROR: out_61, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_61, verticais_pixels[K*27+7]);
				$finish;
			end
			if (out_62 != verticais_pixels[K*27+8] )begin
			$display ("ERROR: out_62, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_62, verticais_pixels[K*27+8]);
				$finish;
			end
			if (out_63 != verticais_pixels[K*27+9] )begin
			$display ("ERROR: out_63, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_63, verticais_pixels[K*27+9]);
				$finish;
			end
			if (out_64 != verticais_pixels[K*27+10]) begin
			$display ("ERROR: out_64, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_64, verticais_pixels[K*27+10]);
				$finish;
			end
			if (out_65 != verticais_pixels[K*27+11]) begin
			$display ("ERROR: out_65, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_65, verticais_pixels[K*27+11]);
				$finish;
			end
			if (out_66 != verticais_pixels[K*27+12]) begin
			$display ("ERROR: out_66, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_66, verticais_pixels[K*27+12]);
				$finish;
			end
			if (out_67 != verticais_pixels[K*27+13]) begin
			$display ("ERROR: out_67, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_67, verticais_pixels[K*27+13]);
				$finish;
			end
			if (out_68 != verticais_pixels[K*27+14]) begin
			$display ("ERROR: out_68, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_68, verticais_pixels[K*27+14]);
				$finish;
			end
			if (out_69 != verticais_pixels[K*27+15]) begin
			$display ("ERROR: out_69, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_69, verticais_pixels[K*27+15]);
				$finish;
			end
			if (out_70 != verticais_pixels[K*27+16]) begin
			$display ("ERROR: out_70, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_70, verticais_pixels[K*27+16]);
				$finish;
			end
			if (out_71 != verticais_pixels[K*27+17]) begin
			$display ("ERROR: out_71, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_71, verticais_pixels[K*27+17]);
				$finish;
			end
			if (out_72 != verticais_pixels[K*27+18]) begin
			$display ("ERROR: out_72, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_72, verticais_pixels[K*27+18]);
				$finish;
			end
			if (out_73 != verticais_pixels[K*27+19]) begin
			$display ("ERROR: out_73, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_73, verticais_pixels[K*27+19]);
				$finish;
			end
			if (out_74 != verticais_pixels[K*27+20]) begin
			$display ("ERROR: out_74, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_74, verticais_pixels[K*27+20]);
				$finish;
			end
			if (out_75 != verticais_pixels[K*27+21]) begin
			$display ("ERROR: out_75, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_75, verticais_pixels[K*27+21]);
				$finish;
			end
			if (out_76 != verticais_pixels[K*27+22]) begin
			$display ("ERROR: out_76, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_76, verticais_pixels[K*27+22]);
				$finish;
			end
			if (out_77 != verticais_pixels[K*27+23]) begin
			$display ("ERROR: out_77, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_77, verticais_pixels[K*27+23]);
				$finish;
			end
			if (out_78 != verticais_pixels[K*27+24]) begin
			$display ("ERROR: out_78, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_78, verticais_pixels[K*27+24]);
				$finish;
			end
			if (out_79 != verticais_pixels[K*27+25]) begin
			$display ("ERROR: out_79, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_79, verticais_pixels[K*27+25]);
				$finish;
			end
			if (out_80 != verticais_pixels[K*27+26]) begin
			$display ("ERROR: out_80, interaçao = %d, Resultado Obtido = %d, Resultado Esperado =%d ", K, out_80, verticais_pixels[K*27+26]);
				$finish;
			end

			
		#CLK_PERIOD;
		

			if ((out_81 != diagonais_pixels_a[K*27+0 ])) begin
			$display("ERROR: out_81, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_81 , diagonais_pixels_a[K*27+0]); 
			$finish;
			end

			if ((out_82 != diagonais_pixels_a[K*27+1 ])) begin
			$display("ERROR: out_82, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_82 , diagonais_pixels_a[K*27+1]); 
			$finish;
			end
			if ((out_83 != diagonais_pixels_a[K*27+2 ])) begin
			$display("ERROR: out_83, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_83 , diagonais_pixels_a[K*27+2]); 
			$finish;
			end
			if ((out_84 != diagonais_pixels_a[K*27+3 ])) begin
			$display("ERROR: out_84, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_84 , diagonais_pixels_a[K*27+3]); 
			$finish;
			end
			if ((out_85 != diagonais_pixels_a[K*27+4 ])) begin
			$display("ERROR: out_85, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_85 , diagonais_pixels_a[K*27+4]); 
			$finish;
			end
			if ((out_86 != diagonais_pixels_a[K*27+5 ])) begin
			$display("ERROR: out_86, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_86 , diagonais_pixels_a[K*27+5]); 
			$finish;
			end
			if ((out_87 != diagonais_pixels_a[K*27+6 ])) begin
			$display("ERROR: out_87, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_87 , diagonais_pixels_a[K*27+6]); 
			$finish;
			end
			if ((out_88 != diagonais_pixels_a[K*27+7 ])) begin
			$display("ERROR: out_88, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_88 , diagonais_pixels_a[K*27+7]); 
			$finish;
			end

			if ((out_89 != diagonais_pixels_a[K*27+8 ])) begin
			$display("ERROR: out_89, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_89 , diagonais_pixels_a[K*27+8]); 
			$finish;
			end
			if ((out_90 != diagonais_pixels_a[K*27+9 ])) begin
			$display("ERROR: out_90, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_90 , diagonais_pixels_a[K*27+9]); 
			$finish;
			end
			if ((out_91 != diagonais_pixels_a[K*27+10])) begin
			$display("ERROR: out_91, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_91 , diagonais_pixels_a[K*27+10]); 
			$finish;
			end
			if ((out_92 != diagonais_pixels_a[K*27+11])) begin
			$display("ERROR: out_92, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_92 , diagonais_pixels_a[K*27+11]); 
			$finish;
			end
			if ((out_93 != diagonais_pixels_a[K*27+12])) begin
			$display("ERROR: out_93, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_93 , diagonais_pixels_a[K*27+12]); 
			$finish;
			end
			if ((out_94 != diagonais_pixels_a[K*27+13])) begin
			$display("ERROR: out_94, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_94 , diagonais_pixels_a[K*27+13]); 
			$finish;
			end
			if ((out_95 != diagonais_pixels_a[K*27+14])) begin
			$display("ERROR: out_95, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_95 , diagonais_pixels_a[K*27+14]); 
			$finish;
			end
			if ((out_96 != diagonais_pixels_a[K*27+15])) begin
			$display("ERROR: out_96, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_96 , diagonais_pixels_a[K*27+15]); 
			$finish;
			end
			if ((out_97 != diagonais_pixels_a[K*27+16])) begin
			$display("ERROR: out_97, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_97 , diagonais_pixels_a[K*27+16]); 
			$finish;
			end
			if ((out_98 != diagonais_pixels_a[K*27+17])) begin
			$display("ERROR: out_98, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_98 , diagonais_pixels_a[K*27+17]); 
			$finish;
			end
			if ((out_99 != diagonais_pixels_a[K*27+18])) begin
			$display("ERROR: out_99, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_99 , diagonais_pixels_a[K*27+18]); 
			$finish;
			end
			if ((out_100 != diagonais_pixels_a[K*27+19])) begin
			$display("ERROR: out_100, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_100, diagonais_pixels_a[K*27+19]); 
			$finish;
			end
			if ((out_101 != diagonais_pixels_a[K*27+20])) begin
			$display("ERROR: out_101, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_101, diagonais_pixels_a[K*27+20]); 
			$finish;
			end
			if ((out_102 != diagonais_pixels_a[K*27+21])) begin
			$display("ERROR: out_102, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_102, diagonais_pixels_a[K*27+21]); 
			$finish;
			end 
			if ((out_103 != diagonais_pixels_a[K*27+22])) begin
			$display("ERROR: out_103, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_103, diagonais_pixels_a[K*27+22]); 
			$finish;
			end
			if ((out_104 != diagonais_pixels_a[K*27+23])) begin
			$display("ERROR: out_104, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_104, diagonais_pixels_a[K*27+23]); 
			$finish;
			end
			if ((out_105 != diagonais_pixels_a[K*27+24])) begin
			$display("ERROR: out_105, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_105, diagonais_pixels_a[K*27+24]); 
			$finish;
			end
			if ((out_106 != diagonais_pixels_a[K*27+25])) begin
			$display("ERROR: out_106, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_106, diagonais_pixels_a[K*27+25]); 
			$finish;
			end
			if ((out_107 != diagonais_pixels_a[K*27+26])) begin
			$display("ERROR: out_107, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_107, diagonais_pixels_a[K*27+26]); 
			$finish;
			end


			if ((out_108 != diagonais_pixels_b[K*27+0 ])) begin
			$display("ERROR: out_108, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_108 , diagonais_pixels_b[K*27+0]); 
			$finish;
			end

			if ((out_109 != diagonais_pixels_b[K*27+1 ])) begin
			$display("ERROR: out_109, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_109 , diagonais_pixels_b[K*27+1]); 
			$finish;
			end
			if ((out_110 != diagonais_pixels_b[K*27+2 ])) begin
			$display("ERROR: out_83, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_83 , diagonais_pixels_b[K*27+2]); 
			$finish;
			end
			if ((out_111 != diagonais_pixels_b[K*27+3 ])) begin
			$display("ERROR: out_111, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_111 , diagonais_pixels_b[K*27+3]); 
			$finish;
			end
			if ((out_112 != diagonais_pixels_b[K*27+4 ])) begin
			$display("ERROR: out_112, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_112 , diagonais_pixels_b[K*27+4]); 
			$finish;
			end
			if ((out_113 != diagonais_pixels_b[K*27+5 ])) begin
			$display("ERROR: out_113, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_113 , diagonais_pixels_b[K*27+5]); 
			$finish;
			end
			if ((out_114 != diagonais_pixels_b[K*27+6 ])) begin
			$display("ERROR: out_114, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_114 , diagonais_pixels_b[K*27+6]); 
			$finish;
			end
			if ((out_115 != diagonais_pixels_b[K*27+7 ])) begin
			$display("ERROR: out_115, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_115 , diagonais_pixels_b[K*27+7]); 
			$finish;
			end

			if ((out_116 != diagonais_pixels_b[K*27+8 ])) begin
			$display("ERROR: out_116, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_116 , diagonais_pixels_b[K*27+8]); 
			$finish;
			end
			if ((out_117 != diagonais_pixels_b[K*27+9 ])) begin
			$display("ERROR: out_117, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_117 , diagonais_pixels_b[K*27+9]); 
			$finish;
			end
			if ((out_118 != diagonais_pixels_b[K*27+10])) begin
			$display("ERROR: out_118, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_118 , diagonais_pixels_b[K*27+10]); 
			$finish;
			end
			if ((out_119 != diagonais_pixels_b[K*27+11])) begin
			$display("ERROR: out_119, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_119 , diagonais_pixels_b[K*27+11]); 
			$finish;
			end
			if ((out_120 != diagonais_pixels_b[K*27+12])) begin
			$display("ERROR: out_120, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_120 , diagonais_pixels_b[K*27+12]); 
			$finish;
			end
			if ((out_121 != diagonais_pixels_b[K*27+13])) begin
			$display("ERROR: out_121, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_121 , diagonais_pixels_b[K*27+13]); 
			$finish;
			end
			if ((out_122 != diagonais_pixels_b[K*27+14])) begin
			$display("ERROR: out_122, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_122 , diagonais_pixels_b[K*27+14]); 
			$finish;
			end
			if ((out_123 != diagonais_pixels_b[K*27+15])) begin
			$display("ERROR: out_123, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_123 , diagonais_pixels_b[K*27+15]); 
			$finish;
			end
			if ((out_124 != diagonais_pixels_b[K*27+16])) begin
			$display("ERROR: out_124, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_124 , diagonais_pixels_b[K*27+16]); 
			$finish;
			end
			if ((out_125 != diagonais_pixels_b[K*27+17])) begin
			$display("ERROR: out_125, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_125 , diagonais_pixels_b[K*27+17]); 
			$finish;
			end
			if ((out_126 != diagonais_pixels_b[K*27+18])) begin
			$display("ERROR: out_126, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_126 , diagonais_pixels_b[K*27+18]); 
			$finish;
			end
			if ((out_127 != diagonais_pixels_b[K*27+19])) begin
			$display("ERROR: out_127, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_127, diagonais_pixels_b[K*27+19]); 
			$finish;
			end
			if ((out_128 != diagonais_pixels_b[K*27+20])) begin
			$display("ERROR: out_128, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_128, diagonais_pixels_b[K*27+20]); 
			$finish;
			end
			if ((out_129 != diagonais_pixels_b[K*27+21])) begin
			$display("ERROR: out_129, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_129, diagonais_pixels_b[K*27+21]); 
			$finish;
			end 
			if ((out_130 != diagonais_pixels_b[K*27+22])) begin
			$display("ERROR: out_130, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_130, diagonais_pixels_b[K*27+22]); 
			$finish;
			end
			if ((out_131 != diagonais_pixels_b[K*27+23])) begin
			$display("ERROR: out_131, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_131, diagonais_pixels_b[K*27+23]); 
			$finish;
			end
			if ((out_132 != diagonais_pixels_b[K*27+24])) begin
			$display("ERROR: out_132, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_132, diagonais_pixels_b[K*27+24]); 
			$finish;
			end
			if ((out_133 != diagonais_pixels_b[K*27+25])) begin
			$display("ERROR: out_133, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_133, diagonais_pixels_b[K*27+25]); 
			$finish;
			end
			if ((out_134 != diagonais_pixels_b[K*27+26])) begin
			$display("ERROR: out_134, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_134, diagonais_pixels_b[K*27+26]); 
			$finish;
			end

			if ((out_135 != diagonais_pixels_c[K*27+ 0])) begin
			$display("ERROR: out_135, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_135, diagonais_pixels_c[K*27+ 0]); 
			$finish;
			end
			if ((out_136 != diagonais_pixels_c[K*27+ 1])) begin
			$display("ERROR: out_136, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_136, diagonais_pixels_c[K*27+ 1]); 
			$finish;
			end
			if ((out_137 != diagonais_pixels_c[K*27+ 2])) begin
			$display("ERROR: out_137, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_137, diagonais_pixels_c[K*27+ 2]); 
			$finish;
			end
			if ((out_138 != diagonais_pixels_c[K*27+ 3])) begin
			$display("ERROR: out_138, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_138, diagonais_pixels_c[K*27+ 3]); 
			$finish;
			end
			if ((out_139 != diagonais_pixels_c[K*27+ 4])) begin
			$display("ERROR: out_139, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_139, diagonais_pixels_c[K*27+ 4]); 
			$finish;
			end
			if ((out_140 != diagonais_pixels_c[K*27+ 5])) begin
			$display("ERROR: out_140, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_140, diagonais_pixels_c[K*27+ 5]); 
			$finish;
			end
			if ((out_141 != diagonais_pixels_c[K*27+ 6])) begin
			$display("ERROR: out_141, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_141, diagonais_pixels_c[K*27+ 6]); 
			$finish;
			end
			if ((out_142 != diagonais_pixels_c[K*27+ 7])) begin
			$display("ERROR: out_142, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_142, diagonais_pixels_c[K*27+ 7]); 
			$finish;
			end
			if ((out_143 != diagonais_pixels_c[K*27+ 8])) begin
			$display("ERROR: out_143, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_143, diagonais_pixels_c[K*27+ 8]); 
			$finish;
			end
			if ((out_144 != diagonais_pixels_c[K*27+ 9])) begin
			$display("ERROR: out_144, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_144, diagonais_pixels_c[K*27+ 9]); 
			$finish;
			end
			if ((out_145 != diagonais_pixels_c[K*27+10])) begin
			$display("ERROR: out_145, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_145, diagonais_pixels_c[K*27+10]); 
			$finish;
			end
			if ((out_146 != diagonais_pixels_c[K*27+11])) begin
			$display("ERROR: out_146, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_146, diagonais_pixels_c[K*27+11]); 
			$finish;
			end
			if ((out_147 != diagonais_pixels_c[K*27+12])) begin
			$display("ERROR: out_147, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_147, diagonais_pixels_c[K*27+12]); 
			$finish;
			end
			if ((out_148 != diagonais_pixels_c[K*27+13])) begin
			$display("ERROR: out_148, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_148, diagonais_pixels_c[K*27+13]); 
			$finish;
			end
			if ((out_149 != diagonais_pixels_c[K*27+14])) begin
			$display("ERROR: out_149, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_149, diagonais_pixels_c[K*27+14]); 
			$finish;
			end
			if ((out_150 != diagonais_pixels_c[K*27+15])) begin
			$display("ERROR: out_150, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_150, diagonais_pixels_c[K*27+15]); 
			$finish;
			end
			if ((out_151 != diagonais_pixels_c[K*27+16])) begin
			$display("ERROR: out_151, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_151, diagonais_pixels_c[K*27+16]); 
			$finish;
			end
			if ((out_152 != diagonais_pixels_c[K*27+17])) begin
			$display("ERROR: out_152, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_152, diagonais_pixels_c[K*27+17]); 
			$finish;
			end
			if ((out_153 != diagonais_pixels_c[K*27+18])) begin
			$display("ERROR: out_153, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_153, diagonais_pixels_c[K*27+18]); 
			$finish;
			end
			if ((out_154 != diagonais_pixels_c[K*27+19])) begin
			$display("ERROR: out_154, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_154, diagonais_pixels_c[K*27+19]); 
			$finish;
			end
			if ((out_155 != diagonais_pixels_c[K*27+20])) begin
			$display("ERROR: out_155, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_155, diagonais_pixels_c[K*27+20]); 
			$finish;
			end
			if ((out_156 != diagonais_pixels_c[K*27+21])) begin
			$display("ERROR: out_156, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_156, diagonais_pixels_c[K*27+21]); 
			$finish;
			end
			if ((out_157 != diagonais_pixels_c[K*27+22])) begin
			$display("ERROR: out_157, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_157, diagonais_pixels_c[K*27+22]); 
			$finish;
			end
			if ((out_158 != diagonais_pixels_c[K*27+23])) begin
			$display("ERROR: out_158, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_158, diagonais_pixels_c[K*27+23]); 
			$finish;
			end
			if ((out_159 != diagonais_pixels_c[K*27+24])) begin
			$display("ERROR: out_159, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_159, diagonais_pixels_c[K*27+24]); 
			$finish;
			end
			if ((out_160 != diagonais_pixels_c[K*27+25])) begin
			$display("ERROR: out_160, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_160, diagonais_pixels_c[K*27+25]); 
			$finish;
			end
			if ((out_161 != diagonais_pixels_c[K*27+26])) begin
			$display("ERROR: out_161, interaçao =%d, Resultado Obtido =%d, Resultado Esperado =%d", i, out_161, diagonais_pixels_c[K*27+26]); 
			$finish;
			end
			K = K+1;
	

		end


		

		$display("Sucessfull interpolation");
		#CLK_PERIOD;
		#CLK_PERIOD;
		enable = 0;
		$finish;
		
	end

endmodule