module fme_operativo(
	clock,
	reset,
	in_0,
	in_1,
	in_2,
	in_3,
	in_4,
	in_5,
	in_6,
	in_7,
	in_8,
	in_9,
	in_10,
	in_11,
	in_12,
	in_13,
	in_14,
	in_15,
	in_16,
	in_17,
	in_18,
	in_19,
	in_20,
	in_21,
	in_22,
	in_23,
	in_24,
	in_25,
	in_26,
	in_27,
	in_28,
	in_29,
	in_30,
	in_31,
	reseto,
	enable_buffer_int,
	direction_buffer_int,
	modo_leitura,
	c0,
	c1,
	enable_filtros,
	enable_buffers,
	direction_buffer_a,
	direction_buffer_b,
	direction_buffer_c,
	enable_buffer_verticais,
	enable_buffer_diagonais_a,
	enable_buffer_diagonais_b,
	enable_buffer_diagonais_c,
	escrita_finalizada, 
	fase1_finalizada, 
	fase2p3_finalizada,
	fase3_finalizada, 
	pos_interpolacao_finalizada,
	out_0,
	out_1,
	out_2,
	out_3,
	out_4,
	out_5,
	out_6,
	out_7,
	out_8,
	out_9,	
	out_10,
	out_11,
	out_12,
	out_13,
	out_14,
	out_15,
	out_16,
	out_17,
	out_18,
	out_19,
	out_20,
	out_21,
	out_22,
	out_23,
	out_24,
	out_25,
	out_26,
	out_27,
	out_28,
	out_29,
	out_30,
	out_31,
	out_32,
	out_33,
	out_34,
	out_35,
	out_36,
	out_37,
	out_38,
	out_39,
	out_40,
	out_41,
	out_42,
	out_43,
	out_44,
	out_45,
	out_46,
	out_47,
	out_48,
	out_49,
	out_50,
	out_51,
	out_52,
	out_53,
	out_54,
	out_55,
	out_56,
	out_57,
	out_58,
	out_59,
	out_60,
	out_61,
	out_62,
	out_63,
	out_64,
	out_65,
	out_66,
	out_67,
	out_68,
	out_69,
	out_70,
	out_71,
	out_72,
	out_73,
	out_74,
	out_75,
	out_76,
	out_77,
	out_78,
	out_79,
	out_80,
	out_81,
	out_82,
	out_83,
	out_84,
	out_85,
	out_86,
	out_87,
	out_88,
	out_89,
	out_90,
	out_91,
	out_92,
	out_93,
	out_94,
	out_95,
	out_96,
	out_97,
	out_98,
	out_99,
	out_100,
	out_101,
	out_102,
	out_103,
	out_104,
	out_105,
	out_106,
	out_107,
	out_108,
	out_109,	
	out_110,
	out_111,
	out_112,
	out_113,
	out_114,
	out_115,
	out_116,
	out_117,
	out_118,
	out_119,
	out_120,
	out_121,
	out_122,
	out_123,
	out_124,
	out_125,
	out_126,
	out_127,
	out_128,
	out_129,
	out_130,
	out_131,
	out_132,
	out_133,
	out_134,
	out_135,
	out_136,
	out_137,
	out_138,
	out_139,
	out_140,
	out_141,
	out_142,
	out_143,
	out_144,
	out_145,
	out_146,
	out_147,
	out_148,
	out_149,
	out_150,
	out_151,
	out_152,
	out_153,
	out_154,
	out_155,
	out_156,
	out_157,
	out_158,
	out_159,
	out_160,
	out_161
	);
//--------------------------------- Parametros -----------------------------//

parameter DATA_WIDTH = 8;
 
//--------------------------------- Portas de Entrada -----------------------------//

input clock, reset, enable_buffer_int, direction_buffer_int, modo_leitura, 	c0, c1, enable_filtros, enable_buffers,direction_buffer_a, direction_buffer_b, direction_buffer_c, enable_buffer_verticais, enable_buffer_diagonais_a, enable_buffer_diagonais_b, enable_buffer_diagonais_c, reseto;
input [DATA_WIDTH-1:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15, in_16, in_17,in_18,in_19,in_20,in_21,in_22,in_23,in_24,in_25,in_26, in_27, in_28, in_29, in_30, in_31;

//--------------------------------- Portas de saida -----------------------------//
output [DATA_WIDTH-1:0] out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15,out_16,out_17,out_18,out_19,out_20,out_21,out_22,out_23,out_24,out_25,out_26,out_27,out_28,out_29,out_30,out_31,out_32,out_33,out_34,out_35,out_36,out_37,out_38,out_39,out_40,out_41,out_42,out_43,out_44,out_45,out_46,out_47,out_48,out_49,out_50,out_51,out_52,out_53, out_54,out_55,out_56,out_57,out_58,out_59,out_60,out_61,out_62,out_63,out_64,out_65,out_66,out_67,out_68,out_69,out_70,out_71,out_72,out_73,out_74,out_75,out_76,out_77,out_78,out_79,out_80,out_81,out_82,out_83,out_84,out_85,out_86,out_87,out_88,out_89,out_90,out_91,out_92,out_93,out_94,out_95,out_96,out_97,out_98,out_99,out_100,out_101,out_102,out_103,out_104,out_105,out_106,out_107,out_108,out_109,	out_110,out_111,out_112,out_113,out_114,out_115,out_116,out_117,out_118,out_119,out_120,out_121,out_122,out_123,out_124,out_125,out_126,out_127,out_128,out_129,out_130,out_131,out_132,out_133,out_134,out_135,out_136,out_137,out_138,out_139,out_140,out_141,out_142,out_143,out_144,out_145,out_146,out_147,out_148,out_149,out_150,out_151,out_152,out_153,out_154,out_155,out_156,out_157,out_158,out_159,out_160,out_161;
output reg escrita_finalizada, fase1_finalizada, fase2p3_finalizada,fase3_finalizada, pos_interpolacao_finalizada;
//--------------------------------- Fios Internos -----------------------------//

wire clock, reset, enable_buffer_int, direction_buffer_int, modo_leitura, enable_filtros, enable_buffers,direction_buffer_a, direction_buffer_b, direction_buffer_c, enable_buffer_verticais, enable_buffer_diagonais_a, enable_buffer_diagonais_b, enable_buffer_diagonais_c;
wire [DATA_WIDTH-1:0] out_int_sup_0, out_int_sup_1, out_int_sup_2, out_int_sup_3, out_int_sup_4, out_int_sup_5, out_int_sup_6, out_int_sup_7, out_int_sup_8, out_int_sup_9, out_int_sup_10, out_int_sup_11, out_int_sup_12, out_int_sup_13, out_int_sup_14, out_int_sup_15,out_int_inf_0,out_int_inf_1, out_int_inf_2, out_int_inf_3, out_int_inf_4, out_int_inf_5, out_int_inf_6, out_int_inf_7, out_int_inf_8, out_int_inf_9, out_int_inf_10, out_int_inf_11, out_int_inf_12, out_int_inf_13, out_int_inf_14, out_int_inf_15;
wire [DATA_WIDTH+1:0] in_mux_0, in_mux_1, in_mux_2, in_mux_3, in_mux_4, in_mux_5, in_mux_6, in_mux_7, in_mux_8, in_mux_9, in_mux_10, in_mux_11, in_mux_12, in_mux_13, in_mux_14, in_mux_15, in_mux_16,in_mux_17,in_mux_18,in_mux_19,in_mux_20,in_mux_21,in_mux_22,in_mux_23,in_mux_24,in_mux_25,in_mux_26,in_mux_27,in_mux_28,in_mux_29,in_mux_30,in_mux_31, out_filp_0,out_filp_1,out_filp_2,out_filp_3,out_filp_4,out_filp_5,out_filp_6,out_filp_7,out_filp_8,out_filp_18,out_filp_19,out_filp_20,out_filp_21,out_filp_22,out_filp_23,out_filp_24,out_filp_25,out_filp_26,out_fils_0,out_fils_1,out_fils_2,out_fils_3,out_fils_4,out_fils_5,out_fils_6,out_fils_7,out_fils_8,out_fils_18,out_fils_19,out_fils_20,out_fils_21,out_fils_22,out_fils_23,out_fils_24,out_fils_25,out_fils_26,out_a_inf_0,out_a_inf_1,out_a_inf_2,out_a_inf_3,out_a_inf_4,out_a_inf_5,out_a_inf_6,out_a_inf_7,out_a_inf_8,out_a_sup_0,out_a_sup_1,out_a_sup_2,out_a_sup_3,out_a_sup_4,out_a_sup_5,out_a_sup_6,out_a_sup_7,out_a_sup_8,out_b_inf_0,out_b_inf_1,out_b_inf_2,out_b_inf_3,out_b_inf_4,out_b_inf_5,out_b_inf_6,out_b_inf_7,out_b_inf_8,out_b_sup_0,out_b_sup_1,out_b_sup_2,out_b_sup_3,out_b_sup_4,out_b_sup_5,out_b_sup_6,out_b_sup_7,out_b_sup_8,out_c_inf_0,out_c_inf_1,out_c_inf_2,out_c_inf_3,out_c_inf_4,out_c_inf_5,out_c_inf_6,out_c_inf_7,out_c_inf_8,out_c_sup_0,out_c_sup_1,out_c_sup_2,out_c_sup_3,out_c_sup_4,out_c_sup_5,out_c_sup_6,out_c_sup_7,out_c_sup_8,out_muxp_0,out_muxp_1,out_muxp_2,out_muxp_3,out_muxp_4,out_muxp_5,out_muxp_6,out_muxp_7,out_muxp_8,out_muxp_9,out_muxp_10,out_muxp_11,out_muxp_12,out_muxp_13,out_muxp_14,out_muxp_15,out_muxs_0,out_muxs_1,out_muxs_2,out_muxs_3,out_muxs_4,out_muxs_5,out_muxs_6,out_muxs_7,out_muxs_8,out_muxs_9,out_muxs_10,out_muxs_11,out_muxs_12,out_muxs_13,out_muxs_14,out_muxs_15;
wire [DATA_WIDTH+2:0] out_filp_9,out_filp_10,out_filp_11,out_filp_12,out_filp_13,out_filp_14,out_filp_15,out_filp_16,out_filp_17,out_fils_9,out_fils_10,out_fils_11,out_fils_12,out_fils_13,out_fils_14,out_fils_15,out_fils_16,out_fils_17;
wire [DATA_WIDTH-1:0] out_verticais_0,out_verticais_1,out_verticais_2,out_verticais_3,out_verticais_4,out_verticais_5,out_verticais_6,out_verticais_7,out_verticais_8,out_verticais_9,out_verticais_10,out_verticais_11,out_verticais_12,out_verticais_13,out_verticais_14,out_verticais_15,out_verticais_16,out_verticais_17,out_verticais_18,out_verticais_19,out_verticais_20,out_verticais_21,out_verticais_22,out_verticais_23,out_verticais_24,out_verticais_25,out_verticais_26,out_diagonais_a_0,out_diagonais_a_1,out_diagonais_a_2,out_diagonais_a_3,out_diagonais_a_4,out_diagonais_a_5,out_diagonais_a_6,out_diagonais_a_7,out_diagonais_a_8,out_diagonais_a_9,out_diagonais_a_10,out_diagonais_a_11,out_diagonais_a_12,out_diagonais_a_13,out_diagonais_a_14,out_diagonais_a_15,out_diagonais_a_16,out_diagonais_a_17,out_diagonais_a_18,out_diagonais_a_19,out_diagonais_a_20,out_diagonais_a_21,out_diagonais_a_22,out_diagonais_a_23,out_diagonais_a_24,out_diagonais_a_25,out_diagonais_a_26,out_diagonais_b_0,out_diagonais_b_1,out_diagonais_b_2,out_diagonais_b_3,out_diagonais_b_4,out_diagonais_b_5,out_diagonais_b_6,out_diagonais_b_7,out_diagonais_b_8,out_diagonais_b_9,out_diagonais_b_10,out_diagonais_b_11,out_diagonais_b_12,out_diagonais_b_13,out_diagonais_b_14,out_diagonais_b_15,out_diagonais_b_16,out_diagonais_b_17,out_diagonais_b_18,out_diagonais_b_19,out_diagonais_b_20,out_diagonais_b_21,out_diagonais_b_22,out_diagonais_b_23,out_diagonais_b_24,out_diagonais_b_25,out_diagonais_b_26,out_diagonais_c_0,out_diagonais_c_1,out_diagonais_c_2,out_diagonais_c_3,out_diagonais_c_4,out_diagonais_c_5,out_diagonais_c_6,out_diagonais_c_7,out_diagonais_c_8,out_diagonais_c_9,out_diagonais_c_10,out_diagonais_c_11,out_diagonais_c_12,out_diagonais_c_13,out_diagonais_c_14,out_diagonais_c_15,out_diagonais_c_16,out_diagonais_c_17,out_diagonais_c_18,out_diagonais_c_19,out_diagonais_c_20,out_diagonais_c_21,out_diagonais_c_22,out_diagonais_c_23,out_diagonais_c_24,out_diagonais_c_25,out_diagonais_c_26;


reg [5:0] contador;
//--------------------------------- Componentes do bloco operativo -----------------------------//

buffer_int #(DATA_WIDTH) buffer_int_superior (clock,reseto,enable_buffer_int, direction_buffer_int, modo_leitura, in_16, in_17,in_18,in_19,in_20,in_21,in_22,in_23, in_24,in_25,in_26, in_27, in_28, in_29, in_30, in_31, out_int_sup_0, out_int_sup_1, out_int_sup_2, out_int_sup_3, out_int_sup_4, out_int_sup_5, out_int_sup_6, out_int_sup_7, out_int_sup_8, out_int_sup_9, out_int_sup_10, out_int_sup_11, out_int_sup_12, out_int_sup_13, out_int_sup_14, out_int_sup_15);
buffer_int #(DATA_WIDTH) buffer_int_inferior (clock,reseto,enable_buffer_int, direction_buffer_int, modo_leitura, in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15, out_int_inf_0, out_int_inf_1, out_int_inf_2, out_int_inf_3, out_int_inf_4, out_int_inf_5, out_int_inf_6, out_int_inf_7, out_int_inf_8, out_int_inf_9, out_int_inf_10, out_int_inf_11, out_int_inf_12, out_int_inf_13, out_int_inf_14, out_int_inf_15);

mux3x1 #(DATA_WIDTH) mux_primario   (c0,c1,in_mux_16,in_mux_17,in_mux_18,in_mux_19,in_mux_20,in_mux_21,in_mux_22,in_mux_23,in_mux_24,in_mux_25,in_mux_26,in_mux_27,in_mux_28,in_mux_29,in_mux_30,in_mux_31, out_a_inf_0,out_a_inf_1,out_a_inf_2,out_a_inf_3,out_a_inf_4,out_a_inf_5,out_a_inf_6,out_a_inf_7 ,out_a_sup_0,out_a_sup_1,out_a_sup_2,out_a_sup_3,out_a_sup_4,out_a_sup_5,out_a_sup_6,out_a_sup_7,out_b_inf_0,out_b_inf_1,out_b_inf_2,out_b_inf_3,out_b_inf_4,out_b_inf_5,out_b_inf_6,out_b_inf_7,out_b_sup_0,out_b_sup_1,out_b_sup_2,out_b_sup_3,out_b_sup_4,out_b_sup_5,out_b_sup_6,out_b_sup_7 ,out_muxp_0,out_muxp_1,out_muxp_2,out_muxp_3,out_muxp_4,out_muxp_5,out_muxp_6,out_muxp_7,out_muxp_8,out_muxp_9,out_muxp_10,out_muxp_11,out_muxp_12,out_muxp_13,out_muxp_14,out_muxp_15); 
mux3x1 #(DATA_WIDTH) mux_secundario (c0,c1,in_mux_0, in_mux_1, in_mux_2, in_mux_3, in_mux_4, in_mux_5, in_mux_6, in_mux_7, in_mux_8, in_mux_9, in_mux_10, in_mux_11, in_mux_12, in_mux_13, in_mux_14, in_mux_15, in_mux_0, in_mux_1, in_mux_2, in_mux_3, in_mux_4, in_mux_5, in_mux_6, in_mux_7, in_mux_16,in_mux_17,in_mux_18,in_mux_19,in_mux_20,in_mux_21,in_mux_22,in_mux_23,		out_c_inf_0,out_c_inf_1,out_c_inf_2,out_c_inf_3,out_c_inf_4,out_c_inf_5,out_c_inf_6,out_c_inf_7,out_c_sup_0,out_c_sup_1,out_c_sup_2,out_c_sup_3,out_c_sup_4,out_c_sup_5,out_c_sup_6,out_c_sup_7,out_muxs_0,out_muxs_1,out_muxs_2,out_muxs_3,out_muxs_4,out_muxs_5,out_muxs_6,out_muxs_7,out_muxs_8,out_muxs_9,out_muxs_10,out_muxs_11,out_muxs_12,out_muxs_13,out_muxs_14,out_muxs_15);

filtros #(DATA_WIDTH) filtro_primario   (out_muxp_0,out_muxp_1,out_muxp_2,out_muxp_3,out_muxp_4,out_muxp_5,out_muxp_6,out_muxp_7,out_muxp_8,out_muxp_9,out_muxp_10,out_muxp_11,out_muxp_12,out_muxp_13,out_muxp_14,out_muxp_15,out_filp_0,out_filp_1,out_filp_2,out_filp_3,out_filp_4,out_filp_5,out_filp_6,out_filp_7,out_filp_8,out_filp_9,out_filp_10,out_filp_11,out_filp_12,out_filp_13,out_filp_14,out_filp_15,out_filp_16,out_filp_17,out_filp_18,out_filp_19,out_filp_20,out_filp_21,out_filp_22,out_filp_23,out_filp_24,out_filp_25,out_filp_26);
filtros #(DATA_WIDTH) filtro_secundario (out_muxs_0,out_muxs_1,out_muxs_2,out_muxs_3,out_muxs_4,out_muxs_5,out_muxs_6,out_muxs_7,out_muxs_8,out_muxs_9,out_muxs_10,out_muxs_11,out_muxs_12,out_muxs_13,out_muxs_14,out_muxs_15,out_fils_0,out_fils_1,out_fils_2,out_fils_3,out_fils_4,out_fils_5,out_fils_6,out_fils_7,out_fils_8,out_fils_9,out_fils_10,out_fils_11,out_fils_12,out_fils_13,out_fils_14,out_fils_15,out_fils_16,out_fils_17,out_fils_18,out_fils_19,out_fils_20,out_fils_21,out_fils_22,out_fils_23,out_fils_24,out_fils_25,out_fils_26);

buffer_ah #(DATA_WIDTH) buffer_a_superior (clock,reseto,enable_buffers,direction_buffer_a, out_filp_0,out_filp_1,out_filp_2,out_filp_3,out_filp_4,out_filp_5,out_filp_6,out_filp_7,out_filp_8,out_a_sup_0,out_a_sup_1,out_a_sup_2,out_a_sup_3,out_a_sup_4,out_a_sup_5,out_a_sup_6,out_a_sup_7,out_a_sup_8);
buffer_ah #(DATA_WIDTH) buffer_a_inferior (clock,reseto,enable_buffers,direction_buffer_a, out_fils_0,out_fils_1,out_fils_2,out_fils_3,out_fils_4,out_fils_5,out_fils_6,out_fils_7,out_fils_8,out_a_inf_0,out_a_inf_1,out_a_inf_2,out_a_inf_3,out_a_inf_4,out_a_inf_5,out_a_inf_6,out_a_inf_7,out_a_inf_8);

buffer_ah #(DATA_WIDTH) buffer_b_superior (clock,reseto,enable_buffers,direction_buffer_b, out_filp_9[9:0],out_filp_10[9:0],out_filp_11[9:0],out_filp_12[9:0],out_filp_13[9:0],out_filp_14[9:0],out_filp_15[9:0],out_filp_16[9:0],out_filp_17[9:0],out_b_sup_0,out_b_sup_1,out_b_sup_2,out_b_sup_3,out_b_sup_4,out_b_sup_5,out_b_sup_6,out_b_sup_7,out_b_sup_8);
buffer_ah #(DATA_WIDTH) buffer_b_inferior (clock,reseto,enable_buffers,direction_buffer_b, out_fils_9[9:0],out_fils_10[9:0],out_fils_11[9:0],out_fils_12[9:0],out_fils_13[9:0],out_fils_14[9:0],out_fils_15[9:0],out_fils_16[9:0],out_fils_17[9:0],out_b_inf_0,out_b_inf_1,out_b_inf_2,out_b_inf_3,out_b_inf_4,out_b_inf_5,out_b_inf_6,out_b_inf_7,out_b_inf_8);

buffer_ah #(DATA_WIDTH) buffer_c_superior (clock,reseto,enable_buffers,direction_buffer_c, out_filp_18,out_filp_19,out_filp_20,out_filp_21,out_filp_22,out_filp_23,out_filp_24,out_filp_25,out_filp_26,out_c_sup_0,out_c_sup_1,out_c_sup_2,out_c_sup_3,out_c_sup_4,out_c_sup_5,out_c_sup_6,out_c_sup_7,out_c_sup_8);
buffer_ah #(DATA_WIDTH) buffer_c_inferior (clock,reseto,enable_buffers,direction_buffer_c, out_fils_18,out_fils_19,out_fils_20,out_fils_21,out_fils_22,out_fils_23,out_fils_24,out_fils_25,out_fils_26,out_c_inf_0,out_c_inf_1,out_c_inf_2,out_c_inf_3,out_c_inf_4,out_c_inf_5,out_c_inf_6,out_c_inf_7,out_c_inf_8);

buffer_verticais #(DATA_WIDTH) buffer_ver (clock,reseto,enable_buffer_verticais,out_fils_18,out_fils_19,out_fils_20,out_fils_21,out_fils_22,out_fils_23,out_fils_24,out_fils_25,out_fils_26,out_fils_9,out_fils_10,out_fils_11,out_fils_12,out_fils_13,out_fils_14,out_fils_15,out_fils_16,out_fils_17,out_fils_0,out_fils_1,out_fils_2,out_fils_3,out_fils_4,out_fils_5,out_fils_6,out_fils_7,out_fils_8,out_verticais_0,out_verticais_1,out_verticais_2,out_verticais_3,out_verticais_4,out_verticais_5,out_verticais_6,out_verticais_7,out_verticais_8,out_verticais_9,out_verticais_10,out_verticais_11,out_verticais_12,out_verticais_13,out_verticais_14,out_verticais_15,out_verticais_16,out_verticais_17,out_verticais_18,out_verticais_19,out_verticais_20,out_verticais_21,out_verticais_22,out_verticais_23,out_verticais_24,out_verticais_25,out_verticais_26); 
buffer_diagonais #(DATA_WIDTH) buffer_diag_a (clock,reseto,enable_buffer_diagonais_a, out_filp_18,out_filp_19,out_filp_20,out_filp_21,out_filp_22,out_filp_23,out_filp_24,out_filp_25,out_filp_26,out_filp_9,out_filp_10,out_filp_11,out_filp_12,out_filp_13,out_filp_14,out_filp_15,out_filp_16,out_filp_17,out_filp_0,out_filp_1,out_filp_2,out_filp_3,out_filp_4,out_filp_5,out_filp_6,out_filp_7,out_filp_8,out_diagonais_a_0,out_diagonais_a_1,out_diagonais_a_2,out_diagonais_a_3,out_diagonais_a_4,out_diagonais_a_5,out_diagonais_a_6,out_diagonais_a_7,out_diagonais_a_8,out_diagonais_a_9,out_diagonais_a_10,out_diagonais_a_11,out_diagonais_a_12,out_diagonais_a_13,out_diagonais_a_14,out_diagonais_a_15,out_diagonais_a_16,out_diagonais_a_17,out_diagonais_a_18,out_diagonais_a_19,out_diagonais_a_20,out_diagonais_a_21,out_diagonais_a_22,out_diagonais_a_23,out_diagonais_a_24,out_diagonais_a_25,out_diagonais_a_26); 
buffer_diagonais #(DATA_WIDTH) buffer_diag_b (clock,reseto,enable_buffer_diagonais_b, out_filp_18,out_filp_19,out_filp_20,out_filp_21,out_filp_22,out_filp_23,out_filp_24,out_filp_25,out_filp_26,out_filp_9,out_filp_10,out_filp_11,out_filp_12,out_filp_13,out_filp_14,out_filp_15,out_filp_16,out_filp_17,out_filp_0,out_filp_1,out_filp_2,out_filp_3,out_filp_4,out_filp_5,out_filp_6,out_filp_7,out_filp_8,out_diagonais_b_0,out_diagonais_b_1,out_diagonais_b_2,out_diagonais_b_3,out_diagonais_b_4,out_diagonais_b_5,out_diagonais_b_6,out_diagonais_b_7,out_diagonais_b_8,out_diagonais_b_9,out_diagonais_b_10,out_diagonais_b_11,out_diagonais_b_12,out_diagonais_b_13,out_diagonais_b_14,out_diagonais_b_15,out_diagonais_b_16,out_diagonais_b_17,out_diagonais_b_18,out_diagonais_b_19,out_diagonais_b_20,out_diagonais_b_21,out_diagonais_b_22,out_diagonais_b_23,out_diagonais_b_24,out_diagonais_b_25,out_diagonais_b_26);
buffer_diagonais #(DATA_WIDTH) buffer_diag_c (clock,reseto,enable_buffer_diagonais_c, out_fils_18,out_fils_19,out_fils_20,out_fils_21,out_fils_22,out_fils_23,out_fils_24,out_fils_25,out_fils_26,out_fils_9,out_fils_10,out_fils_11,out_fils_12,out_fils_13,out_fils_14,out_fils_15,out_fils_16,out_fils_17,out_fils_0,out_fils_1,out_fils_2,out_fils_3,out_fils_4,out_fils_5,out_fils_6,out_fils_7,out_fils_8,out_diagonais_c_0,out_diagonais_c_1,out_diagonais_c_2,out_diagonais_c_3,out_diagonais_c_4,out_diagonais_c_5,out_diagonais_c_6,out_diagonais_c_7,out_diagonais_c_8,out_diagonais_c_9,out_diagonais_c_10,out_diagonais_c_11,out_diagonais_c_12,out_diagonais_c_13,out_diagonais_c_14,out_diagonais_c_15,out_diagonais_c_16,out_diagonais_c_17,out_diagonais_c_18,out_diagonais_c_19,out_diagonais_c_20,out_diagonais_c_21,out_diagonais_c_22,out_diagonais_c_23,out_diagonais_c_24,out_diagonais_c_25,out_diagonais_c_26);
// confirmar se os diagonais A e B sao ligados ao filtro primario, e C e verticais ao secundario.
 
assign 	in_mux_0  = {2'b00, out_int_inf_0 }; //verticais 1
assign 	in_mux_1  = {2'b00, out_int_inf_1 }; //verticais 2
assign 	in_mux_2  = {2'b00, out_int_inf_2 }; //verticais 3
assign 	in_mux_3  = {2'b00, out_int_inf_3 }; //verticais
assign 	in_mux_4  = {2'b00, out_int_inf_4 }; //verticais
assign 	in_mux_5  = {2'b00, out_int_inf_5 }; //verticais
assign 	in_mux_6  = {2'b00, out_int_inf_6 }; //verticais
assign 	in_mux_7  = {2'b00, out_int_inf_7 }; //verticais
assign 	in_mux_8  = {2'b00, out_int_inf_8 };
assign 	in_mux_9  = {2'b00, out_int_inf_9 };
assign 	in_mux_10 = {2'b00, out_int_inf_10};
assign 	in_mux_11 = {2'b00, out_int_inf_11};
assign 	in_mux_12 = {2'b00, out_int_inf_12};
assign 	in_mux_13 = {2'b00, out_int_inf_13};
assign 	in_mux_14 = {2'b00, out_int_inf_14};
assign 	in_mux_15 = {2'b00, out_int_inf_15};
assign 	in_mux_16 = {2'b00, out_int_sup_0 }; //verticais 8
assign 	in_mux_17 = {2'b00, out_int_sup_1 }; //verticais 9
assign 	in_mux_18 = {2'b00, out_int_sup_2 }; //verticais
assign 	in_mux_19 = {2'b00, out_int_sup_3 }; //verticais
assign 	in_mux_20 = {2'b00, out_int_sup_4 }; //verticais
assign 	in_mux_21 = {2'b00, out_int_sup_5 }; //verticais
assign 	in_mux_22 = {2'b00, out_int_sup_6 }; //verticais
assign 	in_mux_23 = {2'b00, out_int_sup_7 }; //verticais
assign 	in_mux_24 = {2'b00, out_int_sup_8 }; 
assign 	in_mux_25 = {2'b00, out_int_sup_9 };
assign 	in_mux_26 = {2'b00, out_int_sup_10};
assign 	in_mux_27 = {2'b00, out_int_sup_11};
assign 	in_mux_28 = {2'b00, out_int_sup_12};
assign 	in_mux_29 = {2'b00, out_int_sup_13};
assign 	in_mux_30 = {2'b00, out_int_sup_14};
assign 	in_mux_31 = {2'b00, out_int_sup_15};

assign out_0 = 	(out_a_inf_0[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_0[9]  == 1'b0 && out_a_inf_0[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_0 [7:0];
assign out_1 = 	(out_a_inf_1[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_1[9]  == 1'b0 && out_a_inf_1[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_1 [7:0];
assign out_2 = 	(out_a_inf_2[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_2[9]  == 1'b0 && out_a_inf_2[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_2 [7:0];
assign out_3 = 	(out_a_inf_3[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_3[9]  == 1'b0 && out_a_inf_3[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_3 [7:0];
assign out_4 = 	(out_a_inf_4[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_4[9]  == 1'b0 && out_a_inf_4[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_4 [7:0];
assign out_5 = 	(out_a_inf_5[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_5[9]  == 1'b0 && out_a_inf_5[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_5 [7:0];
assign out_6 = 	(out_a_inf_6[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_6[9]  == 1'b0 && out_a_inf_6[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_6 [7:0];
assign out_7 = 	(out_a_inf_7[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_7[9]  == 1'b0 && out_a_inf_7[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_7 [7:0];
assign out_8 = 	(out_a_inf_8[9]  == 1'b1) ? 8'b0 : 
          		(out_a_inf_8[9]  == 1'b0 && out_a_inf_8[8] == 1'b1) ? 8'b11111111 : 
          		out_a_inf_8 [7:0];
assign out_9 = 	(out_a_sup_0[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_0[9]  == 1'b0 && out_a_sup_0[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_0 [7:0];
assign out_10 = (out_a_sup_1[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_1[9]  == 1'b0 && out_a_sup_1[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_1 [7:0];
assign out_11 = (out_a_sup_2[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_2[9]  == 1'b0 && out_a_sup_2[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_2[7:0];
assign out_12 = (out_a_sup_3[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_3[9]  == 1'b0 && out_a_sup_3[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_3[7:0];
assign out_13 = (out_a_sup_4[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_4[9]  == 1'b0 && out_a_sup_4[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_4[7:0];
assign out_14 = (out_a_sup_5[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_5[9]  == 1'b0 && out_a_sup_5[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_5[7:0];
assign out_15 = (out_a_sup_6[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_6[9]  == 1'b0 && out_a_sup_6[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_6[7:0];
assign out_16 = (out_a_sup_7[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_7[9]  == 1'b0 && out_a_sup_7[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_7[7:0];
assign out_17 = (out_a_sup_8[9]  == 1'b1) ? 8'b0 : 
          		(out_a_sup_8[9]  == 1'b0 && out_a_sup_8[8] == 1'b1) ? 8'b11111111 : 
          		out_a_sup_8[7:0];
assign out_18= 	(out_b_inf_0[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_0[9]  == 1'b0 && out_b_inf_0[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_0 [7:0];
assign out_19= 	(out_b_inf_1[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_1[9]  == 1'b0 && out_b_inf_1[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_1 [7:0];
assign out_20= 	(out_b_inf_2[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_2[9]  == 1'b0 && out_b_inf_2[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_2 [7:0];
assign out_21= 	(out_b_inf_3[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_3[9]  == 1'b0 && out_b_inf_3[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_3 [7:0];
assign out_22= 	(out_b_inf_4[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_4[9]  == 1'b0 && out_b_inf_4[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_4 [7:0];
assign out_23= 	(out_b_inf_5[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_5[9]  == 1'b0 && out_b_inf_5[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_5 [7:0];
assign out_24= 	(out_b_inf_6[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_6[9]  == 1'b0 && out_b_inf_6[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_6 [7:0];
assign out_25= 	(out_b_inf_7[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_7[9]  == 1'b0 && out_b_inf_7[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_7 [7:0];
assign out_26= 	(out_b_inf_8[9]  == 1'b1) ? 8'b0 : 
          		(out_b_inf_8[9]  == 1'b0 && out_b_inf_8[8] == 1'b1) ? 8'b11111111 : 
          		out_b_inf_8 [7:0];
assign out_27= 	(out_b_sup_0[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_0[9]  == 1'b0 && out_b_sup_0[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_0 [7:0];
assign out_28 = (out_b_sup_1[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_1[9]  == 1'b0 && out_b_sup_1[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_1 [7:0];
assign out_29 = (out_b_sup_2[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_2[9]  == 1'b0 && out_b_sup_2[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_2[7:0];
assign out_30 = (out_b_sup_3[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_3[9]  == 1'b0 && out_b_sup_3[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_3[7:0];
assign out_31 = (out_b_sup_4[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_4[9]  == 1'b0 && out_b_sup_4[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_4[7:0];
assign out_32 = (out_b_sup_5[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_5[9]  == 1'b0 && out_b_sup_5[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_5[7:0];
assign out_33 = (out_b_sup_6[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_6[9]  == 1'b0 && out_b_sup_6[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_6[7:0];
assign out_34 = (out_b_sup_7[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_7[9]  == 1'b0 && out_b_sup_7[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_7[7:0];
assign out_35 = (out_b_sup_8[9]  == 1'b1) ? 8'b0 : 
          		(out_b_sup_8[9]  == 1'b0 && out_b_sup_8[8] == 1'b1) ? 8'b11111111 : 
          		out_b_sup_8[7:0];	
assign out_36= 	(out_c_inf_0[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_0[9]  == 1'b0 && out_c_inf_0[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_0 [7:0];
assign out_37= 	(out_c_inf_1[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_1[9]  == 1'b0 && out_c_inf_1[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_1 [7:0];
assign out_38= 	(out_c_inf_2[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_2[9]  == 1'b0 && out_c_inf_2[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_2 [7:0];
assign out_39= 	(out_c_inf_3[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_3[9]  == 1'b0 && out_c_inf_3[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_3 [7:0];
assign out_40= 	(out_c_inf_4[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_4[9]  == 1'b0 && out_c_inf_4[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_4 [7:0];
assign out_41= 	(out_c_inf_5[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_5[9]  == 1'b0 && out_c_inf_5[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_5 [7:0];
assign out_42= 	(out_c_inf_6[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_6[9]  == 1'b0 && out_c_inf_6[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_6 [7:0];
assign out_43= 	(out_c_inf_7[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_7[9]  == 1'b0 && out_c_inf_7[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_7 [7:0];
assign out_44= 	(out_c_inf_8[9]  == 1'b1) ? 8'b0 : 
          		(out_c_inf_8[9]  == 1'b0 && out_c_inf_8[8] == 1'b1) ? 8'b11111111 : 
          		out_c_inf_8 [7:0];
assign out_45= 	(out_c_sup_0[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_0[9]  == 1'b0 && out_c_sup_0[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_0 [7:0];
assign out_46 = (out_c_sup_1[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_1[9]  == 1'b0 && out_c_sup_1[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_1 [7:0];
assign out_47 = (out_c_sup_2[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_2[9]  == 1'b0 && out_c_sup_2[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_2[7:0];
assign out_48 = (out_c_sup_3[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_3[9]  == 1'b0 && out_c_sup_3[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_3[7:0];
assign out_49 = (out_c_sup_4[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_4[9]  == 1'b0 && out_c_sup_4[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_4[7:0];
assign out_50 = (out_c_sup_5[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_5[9]  == 1'b0 && out_c_sup_5[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_5[7:0];
assign out_51 = (out_c_sup_6[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_6[9]  == 1'b0 && out_c_sup_6[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_6[7:0];
assign out_52 = (out_c_sup_7[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_7[9]  == 1'b0 && out_c_sup_7[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_7[7:0];
assign out_53 = (out_c_sup_8[9]  == 1'b1) ? 8'b0 : 
          		(out_c_sup_8[9]  == 1'b0 && out_c_sup_8[8] == 1'b1) ? 8'b11111111 : 
          		out_c_sup_8[7:0];

assign out_54  = out_verticais_0 ;
assign out_55  = out_verticais_1 ;
assign out_56  = out_verticais_2 ;
assign out_57  = out_verticais_3 ;
assign out_58  = out_verticais_4 ;
assign out_59  = out_verticais_5 ;
assign out_60  = out_verticais_6 ;
assign out_61  = out_verticais_7 ;
assign out_62  = out_verticais_8 ;
assign out_63  = out_verticais_9 ;
assign out_64  = out_verticais_10;
assign out_65  = out_verticais_11;
assign out_66  = out_verticais_12;
assign out_67  = out_verticais_13;
assign out_68  = out_verticais_14;
assign out_69  = out_verticais_15;
assign out_70  = out_verticais_16;
assign out_71  = out_verticais_17;
assign out_72  = out_verticais_18;
assign out_73  = out_verticais_19;
assign out_74  = out_verticais_20;
assign out_75  = out_verticais_21;
assign out_76  = out_verticais_22;
assign out_77  = out_verticais_23;
assign out_78  = out_verticais_24;
assign out_79  = out_verticais_25;
assign out_80  = out_verticais_26;

assign out_81  = out_diagonais_a_0 ;
assign out_82  = out_diagonais_a_1 ;
assign out_83  = out_diagonais_a_2 ;
assign out_84  = out_diagonais_a_3 ;
assign out_85  = out_diagonais_a_4 ;
assign out_86  = out_diagonais_a_5 ;
assign out_87  = out_diagonais_a_6 ;
assign out_88  = out_diagonais_a_7 ;
assign out_89  = out_diagonais_a_8 ;
assign out_90  = out_diagonais_a_9 ;
assign out_91  = out_diagonais_a_10;
assign out_92  = out_diagonais_a_11;
assign out_93  = out_diagonais_a_12;
assign out_94  = out_diagonais_a_13;
assign out_95  = out_diagonais_a_14;
assign out_96  = out_diagonais_a_15;
assign out_97  = out_diagonais_a_16;
assign out_98  = out_diagonais_a_17;
assign out_99  = out_diagonais_a_18;
assign out_100 = out_diagonais_a_19;
assign out_101 = out_diagonais_a_20;
assign out_102 = out_diagonais_a_21;
assign out_103 = out_diagonais_a_22;
assign out_104 = out_diagonais_a_23;
assign out_105 = out_diagonais_a_24;
assign out_106 = out_diagonais_a_25;
assign out_107 = out_diagonais_a_26;

assign out_108  =out_diagonais_b_0 ;
assign out_109  =out_diagonais_b_1 ;
assign out_110  =out_diagonais_b_2 ;
assign out_111  =out_diagonais_b_3 ;
assign out_112  =out_diagonais_b_4 ;
assign out_113  =out_diagonais_b_5 ;
assign out_114  =out_diagonais_b_6 ;
assign out_115  =out_diagonais_b_7 ;
assign out_116  =out_diagonais_b_8 ;
assign out_117  =out_diagonais_b_9 ;
assign out_118  =out_diagonais_b_10;
assign out_119  =out_diagonais_b_11;
assign out_120  =out_diagonais_b_12;
assign out_121  =out_diagonais_b_13;
assign out_122  =out_diagonais_b_14;
assign out_123  =out_diagonais_b_15;
assign out_124  =out_diagonais_b_16;
assign out_125  =out_diagonais_b_17;
assign out_126  =out_diagonais_b_18;
assign out_127  =out_diagonais_b_19;
assign out_128  =out_diagonais_b_20;
assign out_129  =out_diagonais_b_21;
assign out_130  =out_diagonais_b_22;
assign out_131  =out_diagonais_b_23;
assign out_132  =out_diagonais_b_24;
assign out_133  =out_diagonais_b_25;
assign out_134  =out_diagonais_b_26;

assign out_135  =out_diagonais_c_0 ;
assign out_136  =out_diagonais_c_1 ;
assign out_137  =out_diagonais_c_2 ;
assign out_138  =out_diagonais_c_3 ;
assign out_139  =out_diagonais_c_4 ;
assign out_140  =out_diagonais_c_5 ;
assign out_141  =out_diagonais_c_6 ;
assign out_142  =out_diagonais_c_7 ;
assign out_143  =out_diagonais_c_8 ;
assign out_144  =out_diagonais_c_9 ;
assign out_145  =out_diagonais_c_10;
assign out_146  =out_diagonais_c_11;
assign out_147  =out_diagonais_c_12;
assign out_148  =out_diagonais_c_13;
assign out_149  =out_diagonais_c_14;
assign out_150  =out_diagonais_c_15;
assign out_151  =out_diagonais_c_16;
assign out_152  =out_diagonais_c_17;
assign out_153  =out_diagonais_c_18;
assign out_154  =out_diagonais_c_19;
assign out_155  =out_diagonais_c_20;
assign out_156  =out_diagonais_c_21;
assign out_157  =out_diagonais_c_22;
assign out_158  =out_diagonais_c_23;
assign out_159  =out_diagonais_c_24;
assign out_160  =out_diagonais_c_25;
assign out_161  =out_diagonais_c_26;


always @(posedge clock or posedge reset) begin
 	if (reset) begin
 		contador = 0;
 		escrita_finalizada <= 0;
 		fase1_finalizada <= 0;
 		fase2p3_finalizada <= 0;
 		fase3_finalizada <= 0;
 		pos_interpolacao_finalizada <= 0;
 	end
 	else if (enable_buffer_int || enable_filtros) begin
 		contador = contador +1;
 			if (contador == 7) begin
 				escrita_finalizada <= 1;
 			end
 			else if (contador == 15) begin
 				fase1_finalizada <= 1;
 			end
 			else if (contador == 24) begin
 				fase2p3_finalizada <= 1;
 			end
 			else if (contador == 33) begin
 				fase3_finalizada <= 1;
 			end
 			else if (contador == 44) begin
 				pos_interpolacao_finalizada <= 1;
 			end
 	end
 end

endmodule