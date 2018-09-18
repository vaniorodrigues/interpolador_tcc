module buffer_int (
	clock, 
	reset,
	enable,
	direction,
	modo_leitura,
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
	out_15
);

parameter DATA_WIDTH = 8;

input clock, reset, enable, direction, modo_leitura;
input [DATA_WIDTH-1:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15;
output [DATA_WIDTH-1:0] out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7, out_8, out_9, out_10, out_11, out_12, out_13, out_14, out_15;
wire [DATA_WIDTH-1:0] 
 out_of_0_0, out_of_0_1, out_of_0_2, out_of_0_3, out_of_0_4, out_of_0_5, out_of_0_6, out_of_0_7, out_of_0_8, out_of_0_9, out_of_0_10, out_of_0_11, out_of_0_12, out_of_0_13, out_of_0_14, out_of_0_15, 
 out_of_1_0, out_of_1_1, out_of_1_2, out_of_1_3, out_of_1_4, out_of_1_5, out_of_1_6, out_of_1_7, out_of_1_8, out_of_1_9, out_of_1_10, out_of_1_11, out_of_1_12, out_of_1_13, out_of_1_14, out_of_1_15,
 out_of_2_0, out_of_2_1, out_of_2_2, out_of_2_3, out_of_2_4, out_of_2_5, out_of_2_6, out_of_2_7, out_of_2_8, out_of_2_9, out_of_2_10, out_of_2_11, out_of_2_12, out_of_2_13, out_of_2_14, out_of_2_15, 
 out_of_3_0, out_of_3_1, out_of_3_2, out_of_3_3, out_of_3_4, out_of_3_5, out_of_3_6, out_of_3_7, out_of_3_8, out_of_3_9, out_of_3_10, out_of_3_11, out_of_3_12, out_of_3_13, out_of_3_14, out_of_3_15, 
 out_of_4_0, out_of_4_1, out_of_4_2, out_of_4_3, out_of_4_4, out_of_4_5, out_of_4_6, out_of_4_7, out_of_4_8, out_of_4_9, out_of_4_10, out_of_4_11, out_of_4_12, out_of_4_13, out_of_4_14, out_of_4_15, 
 out_of_5_0, out_of_5_1, out_of_5_2, out_of_5_3, out_of_5_4, out_of_5_5, out_of_5_6, out_of_5_7, out_of_5_8, out_of_5_9, out_of_5_10, out_of_5_11, out_of_5_12, out_of_5_13, out_of_5_14, out_of_5_15, 
 out_of_6_0, out_of_6_1, out_of_6_2, out_of_6_3, out_of_6_4, out_of_6_5, out_of_6_6, out_of_6_7, out_of_6_8, out_of_6_9, out_of_6_10, out_of_6_11, out_of_6_12, out_of_6_13, out_of_6_14, out_of_6_15, 
 out_of_7_0, out_of_7_1, out_of_7_2, out_of_7_3, out_of_7_4, out_of_7_5, out_of_7_6, out_of_7_7, out_of_7_8, out_of_7_9, out_of_7_10, out_of_7_11, out_of_7_12, out_of_7_13, out_of_7_14, out_of_7_15,
 in_of_0_0, in_of_0_1, in_of_0_2, in_of_0_3, in_of_0_4, in_of_0_5, in_of_0_6, in_of_0_7, in_of_0_8, in_of_0_9, in_of_0_10, in_of_0_11, in_of_0_12, in_of_0_13, in_of_0_14, in_of_0_15;
wire modo;


transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_0(clock, reset, enable, direction, in_of_0_0, out_of_0_1, out_of_0_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_1(clock, reset, enable, direction, in_of_0_1, out_of_0_2, out_of_0_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_2(clock, reset, enable, direction, in_of_0_2, out_of_0_3, out_of_0_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_3(clock, reset, enable, direction, in_of_0_3, out_of_0_4, out_of_0_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_4(clock, reset, enable, direction, in_of_0_4, out_of_0_5, out_of_0_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_5(clock, reset, enable, direction, in_of_0_5, out_of_0_6, out_of_0_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_6(clock, reset, enable, direction, in_of_0_6, out_of_0_7, out_of_0_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_7(clock, reset, enable, direction, in_of_0_7, out_of_0_8, out_of_0_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_8(clock, reset, enable, direction, in_of_0_8, out_of_0_9, out_of_0_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_9(clock, reset, enable, direction, in_of_0_9, out_of_0_10, out_of_0_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_10(clock, reset, enable, direction, in_of_0_10, out_of_0_11, out_of_0_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_11(clock, reset, enable, direction, in_of_0_11, out_of_0_12, out_of_0_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_12(clock, reset, enable, direction, in_of_0_12, out_of_0_13, out_of_0_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_13(clock, reset, enable, direction, in_of_0_13, out_of_0_14, out_of_0_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_14(clock, reset, enable, direction, in_of_0_14, out_of_0_15, out_of_0_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_15(clock, reset, enable, direction, in_of_0_15, out_of_0_0, out_of_0_15); //  QUANDO ESTIVER LENDO, RECARREGA O SINAL HORIZONTALMENTE

transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_0(clock, reset, enable, direction, out_of_0_0, out_of_1_1, out_of_1_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_1(clock, reset, enable, direction, out_of_0_1, out_of_1_2, out_of_1_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_2(clock, reset, enable, direction, out_of_0_2, out_of_1_3, out_of_1_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_3(clock, reset, enable, direction, out_of_0_3, out_of_1_4, out_of_1_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_4(clock, reset, enable, direction, out_of_0_4, out_of_1_5, out_of_1_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_5(clock, reset, enable, direction, out_of_0_5, out_of_1_6, out_of_1_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_6(clock, reset, enable, direction, out_of_0_6, out_of_1_7, out_of_1_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_7(clock, reset, enable, direction, out_of_0_7, out_of_1_8, out_of_1_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_8(clock, reset, enable, direction, out_of_0_8, out_of_1_9, out_of_1_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_9(clock, reset, enable, direction, out_of_0_9, out_of_1_10, out_of_1_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_10(clock, reset, enable, direction, out_of_0_10, out_of_1_11, out_of_1_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_11(clock, reset, enable, direction, out_of_0_11, out_of_1_12, out_of_1_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_12(clock, reset, enable, direction, out_of_0_12, out_of_1_13, out_of_1_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_13(clock, reset, enable, direction, out_of_0_13, out_of_1_14, out_of_1_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_14(clock, reset, enable, direction, out_of_0_14, out_of_1_15, out_of_1_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_15(clock, reset, enable, direction, out_of_0_15, out_of_1_0, out_of_1_15);

transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_0(clock, reset, enable, direction, out_of_1_0, out_of_2_1, out_of_2_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_1(clock, reset, enable, direction, out_of_1_1, out_of_2_2, out_of_2_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_2(clock, reset, enable, direction, out_of_1_2, out_of_2_3, out_of_2_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_3(clock, reset, enable, direction, out_of_1_3, out_of_2_4, out_of_2_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_4(clock, reset, enable, direction, out_of_1_4, out_of_2_5, out_of_2_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_5(clock, reset, enable, direction, out_of_1_5, out_of_2_6, out_of_2_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_6(clock, reset, enable, direction, out_of_1_6, out_of_2_7, out_of_2_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_7(clock, reset, enable, direction, out_of_1_7, out_of_2_8, out_of_2_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_8(clock, reset, enable, direction, out_of_1_8, out_of_2_9, out_of_2_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_9(clock, reset, enable, direction, out_of_1_9, out_of_2_10, out_of_2_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_10(clock, reset, enable, direction, out_of_1_10, out_of_2_11, out_of_2_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_11(clock, reset, enable, direction, out_of_1_11, out_of_2_12, out_of_2_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_12(clock, reset, enable, direction, out_of_1_12, out_of_2_13, out_of_2_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_13(clock, reset, enable, direction, out_of_1_13, out_of_2_14, out_of_2_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_14(clock, reset, enable, direction, out_of_1_14, out_of_2_15, out_of_2_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_15(clock, reset, enable, direction, out_of_1_15, out_of_2_0, out_of_2_15);

transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_0(clock, reset, enable, direction, out_of_2_0, out_of_3_1, out_of_3_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_1(clock, reset, enable, direction, out_of_2_1, out_of_3_2, out_of_3_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_2(clock, reset, enable, direction, out_of_2_2, out_of_3_3, out_of_3_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_3(clock, reset, enable, direction, out_of_2_3, out_of_3_4, out_of_3_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_4(clock, reset, enable, direction, out_of_2_4, out_of_3_5, out_of_3_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_5(clock, reset, enable, direction, out_of_2_5, out_of_3_6, out_of_3_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_6(clock, reset, enable, direction, out_of_2_6, out_of_3_7, out_of_3_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_7(clock, reset, enable, direction, out_of_2_7, out_of_3_8, out_of_3_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_8(clock, reset, enable, direction, out_of_2_8, out_of_3_9, out_of_3_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_9(clock, reset, enable, direction, out_of_2_9, out_of_3_10, out_of_3_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_10(clock, reset, enable, direction, out_of_2_10, out_of_3_11, out_of_3_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_11(clock, reset, enable, direction, out_of_2_11, out_of_3_12, out_of_3_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_12(clock, reset, enable, direction, out_of_2_12, out_of_3_13, out_of_3_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_13(clock, reset, enable, direction, out_of_2_13, out_of_3_14, out_of_3_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_14(clock, reset, enable, direction, out_of_2_14, out_of_3_15, out_of_3_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_15(clock, reset, enable, direction, out_of_2_15, out_of_3_0, out_of_3_15);

transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_0(clock, reset, enable, direction, out_of_3_0, out_of_4_1, out_of_4_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_1(clock, reset, enable, direction, out_of_3_1, out_of_4_2, out_of_4_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_2(clock, reset, enable, direction, out_of_3_2, out_of_4_3, out_of_4_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_3(clock, reset, enable, direction, out_of_3_3, out_of_4_4, out_of_4_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_4(clock, reset, enable, direction, out_of_3_4, out_of_4_5, out_of_4_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_5(clock, reset, enable, direction, out_of_3_5, out_of_4_6, out_of_4_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_6(clock, reset, enable, direction, out_of_3_6, out_of_4_7, out_of_4_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_7(clock, reset, enable, direction, out_of_3_7, out_of_4_8, out_of_4_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_8(clock, reset, enable, direction, out_of_3_8, out_of_4_9, out_of_4_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_9(clock, reset, enable, direction, out_of_3_9, out_of_4_10, out_of_4_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_10(clock, reset, enable, direction, out_of_3_10, out_of_4_11, out_of_4_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_11(clock, reset, enable, direction, out_of_3_11, out_of_4_12, out_of_4_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_12(clock, reset, enable, direction, out_of_3_12, out_of_4_13, out_of_4_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_13(clock, reset, enable, direction, out_of_3_13, out_of_4_14, out_of_4_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_14(clock, reset, enable, direction, out_of_3_14, out_of_4_15, out_of_4_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_15(clock, reset, enable, direction, out_of_3_15, out_of_4_0, out_of_4_15);

transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_0(clock, reset, enable, direction, out_of_4_0, out_of_5_1, out_of_5_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_1(clock, reset, enable, direction, out_of_4_1, out_of_5_2, out_of_5_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_2(clock, reset, enable, direction, out_of_4_2, out_of_5_3, out_of_5_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_3(clock, reset, enable, direction, out_of_4_3, out_of_5_4, out_of_5_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_4(clock, reset, enable, direction, out_of_4_4, out_of_5_5, out_of_5_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_5(clock, reset, enable, direction, out_of_4_5, out_of_5_6, out_of_5_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_6(clock, reset, enable, direction, out_of_4_6, out_of_5_7, out_of_5_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_7(clock, reset, enable, direction, out_of_4_7, out_of_5_8, out_of_5_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_8(clock, reset, enable, direction, out_of_4_8, out_of_5_9, out_of_5_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_9(clock, reset, enable, direction, out_of_4_9, out_of_5_10, out_of_5_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_10(clock, reset, enable, direction, out_of_4_10, out_of_5_11, out_of_5_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_11(clock, reset, enable, direction, out_of_4_11, out_of_5_12, out_of_5_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_12(clock, reset, enable, direction, out_of_4_12, out_of_5_13, out_of_5_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_13(clock, reset, enable, direction, out_of_4_13, out_of_5_14, out_of_5_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_14(clock, reset, enable, direction, out_of_4_14, out_of_5_15, out_of_5_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_15(clock, reset, enable, direction, out_of_4_15, out_of_5_0, out_of_5_15);

transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_0(clock, reset, enable, direction, out_of_5_0, out_of_6_1, out_of_6_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_1(clock, reset, enable, direction, out_of_5_1, out_of_6_2, out_of_6_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_2(clock, reset, enable, direction, out_of_5_2, out_of_6_3, out_of_6_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_3(clock, reset, enable, direction, out_of_5_3, out_of_6_4, out_of_6_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_4(clock, reset, enable, direction, out_of_5_4, out_of_6_5, out_of_6_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_5(clock, reset, enable, direction, out_of_5_5, out_of_6_6, out_of_6_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_6(clock, reset, enable, direction, out_of_5_6, out_of_6_7, out_of_6_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_7(clock, reset, enable, direction, out_of_5_7, out_of_6_8, out_of_6_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_8(clock, reset, enable, direction, out_of_5_8, out_of_6_9, out_of_6_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_9(clock, reset, enable, direction, out_of_5_9, out_of_6_10, out_of_6_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_10(clock, reset, enable, direction, out_of_5_10, out_of_6_11, out_of_6_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_11(clock, reset, enable, direction, out_of_5_11, out_of_6_12, out_of_6_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_12(clock, reset, enable, direction, out_of_5_12, out_of_6_13, out_of_6_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_13(clock, reset, enable, direction, out_of_5_13, out_of_6_14, out_of_6_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_14(clock, reset, enable, direction, out_of_5_14, out_of_6_15, out_of_6_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_15(clock, reset, enable, direction, out_of_5_15, out_of_6_0, out_of_6_15);

transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_0(clock, reset, enable, direction, out_of_6_0, out_of_7_1, out_of_7_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_1(clock, reset, enable, direction, out_of_6_1, out_of_7_2, out_of_7_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_2(clock, reset, enable, direction, out_of_6_2, out_of_7_3, out_of_7_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_3(clock, reset, enable, direction, out_of_6_3, out_of_7_4, out_of_7_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_4(clock, reset, enable, direction, out_of_6_4, out_of_7_5, out_of_7_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_5(clock, reset, enable, direction, out_of_6_5, out_of_7_6, out_of_7_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_6(clock, reset, enable, direction, out_of_6_6, out_of_7_7, out_of_7_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_7(clock, reset, enable, direction, out_of_6_7, out_of_7_8, out_of_7_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_8(clock, reset, enable, direction, out_of_6_8, out_of_7_9, out_of_7_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_9(clock, reset, enable, direction, out_of_6_9, out_of_7_10, out_of_7_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_10(clock, reset, enable, direction, out_of_6_10, out_of_7_11, out_of_7_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_11(clock, reset, enable, direction, out_of_6_11, out_of_7_12, out_of_7_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_12(clock, reset, enable, direction, out_of_6_12, out_of_7_13, out_of_7_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_13(clock, reset, enable, direction, out_of_6_13, out_of_7_14, out_of_7_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_14(clock, reset, enable, direction, out_of_6_14, out_of_7_15, out_of_7_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_15(clock, reset, enable, direction, out_of_6_15, out_of_7_0, out_of_7_15);



assign out_0 =  (direction) ? out_of_7_4 : out_of_7_0;
assign out_1 =  (direction) ? out_of_6_4 : out_of_7_1;
assign out_2 =  (direction) ? out_of_5_4 : out_of_7_2;
assign out_3 =  (direction) ? out_of_4_4 : out_of_7_3;
assign out_4 =  (direction) ? out_of_3_4 : out_of_7_4;
assign out_5 =  (direction) ? out_of_2_4 : out_of_7_5;
assign out_6 =  (direction) ? out_of_1_4 : out_of_7_6;
assign out_7 =  (direction) ? out_of_0_4 : out_of_7_7;
assign out_8 =  (direction) ? 4'hF		 : out_of_7_8;
assign out_9 =  (direction) ? 4'hF		 : out_of_7_9;
assign out_10 = (direction) ? 4'hF		 : out_of_7_10;
assign out_11 = (direction) ? 4'hF		 : out_of_7_11;
assign out_12 = (direction) ? 4'hF		 : out_of_7_12;
assign out_13 = (direction) ? 4'hF		 : out_of_7_13;
assign out_14 = (direction) ? 4'hF		 : out_of_7_14;
assign out_15 = (direction) ? 4'hF		 : out_of_7_15;

// Realimentação vertical 

assign modo = modo_leitura & !direction;

assign in_of_0_0 =  (modo) ?  out_of_7_0  :  in_0;
assign in_of_0_1 =  (modo) ?  out_of_7_1  :  in_1;
assign in_of_0_2 =  (modo) ?  out_of_7_2  :  in_2;
assign in_of_0_3 =  (modo) ?  out_of_7_3  :  in_3;
assign in_of_0_4 =  (modo) ?  out_of_7_4  :  in_4;
assign in_of_0_5 =  (modo) ?  out_of_7_5  :  in_5;
assign in_of_0_6 =  (modo) ?  out_of_7_6  :  in_6;
assign in_of_0_7 =  (modo) ?  out_of_7_7  :  in_7;
assign in_of_0_8 =  (modo) ?  out_of_7_8  :  in_8;
assign in_of_0_9 =  (modo) ?  out_of_7_9  :  in_9;
assign in_of_0_10 = (modo) ?  out_of_7_10 : in_10;
assign in_of_0_11 = (modo) ?  out_of_7_11 : in_11;
assign in_of_0_12 = (modo) ?  out_of_7_12 : in_12;
assign in_of_0_13 = (modo) ?  out_of_7_13 : in_13;
assign in_of_0_14 = (modo) ?  out_of_7_14 : in_14;
assign in_of_0_15 = (modo) ?  out_of_7_15 : in_15;


endmodule
