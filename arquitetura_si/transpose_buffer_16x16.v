module transpose_buffer_16x16 (
	clock, 
	reset,
	enable,
	direction,
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

input clock, reset, enable, direction;
input signed [DATA_WIDTH-1:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15;
output signed [DATA_WIDTH-1:0] out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7, out_8, out_9, out_10, out_11, out_12, out_13, out_14, out_15;
wire signed [DATA_WIDTH-1:0] out_of_0_0, out_of_0_1, out_of_0_2, out_of_0_3, out_of_0_4, out_of_0_5, out_of_0_6, out_of_0_7, out_of_0_8, out_of_0_9, out_of_0_10, out_of_0_11, out_of_0_12, out_of_0_13, out_of_0_14, out_of_0_15, out_of_1_0, out_of_1_1, out_of_1_2, out_of_1_3, out_of_1_4, out_of_1_5, out_of_1_6, out_of_1_7, out_of_1_8, out_of_1_9, out_of_1_10, out_of_1_11, out_of_1_12, out_of_1_13, out_of_1_14, out_of_1_15, out_of_2_0, out_of_2_1, out_of_2_2, out_of_2_3, out_of_2_4, out_of_2_5, out_of_2_6, out_of_2_7, out_of_2_8, out_of_2_9, out_of_2_10, out_of_2_11, out_of_2_12, out_of_2_13, out_of_2_14, out_of_2_15, out_of_3_0, out_of_3_1, out_of_3_2, out_of_3_3, out_of_3_4, out_of_3_5, out_of_3_6, out_of_3_7, out_of_3_8, out_of_3_9, out_of_3_10, out_of_3_11, out_of_3_12, out_of_3_13, out_of_3_14, out_of_3_15, out_of_4_0, out_of_4_1, out_of_4_2, out_of_4_3, out_of_4_4, out_of_4_5, out_of_4_6, out_of_4_7, out_of_4_8, out_of_4_9, out_of_4_10, out_of_4_11, out_of_4_12, out_of_4_13, out_of_4_14, out_of_4_15, out_of_5_0, out_of_5_1, out_of_5_2, out_of_5_3, out_of_5_4, out_of_5_5, out_of_5_6, out_of_5_7, out_of_5_8, out_of_5_9, out_of_5_10, out_of_5_11, out_of_5_12, out_of_5_13, out_of_5_14, out_of_5_15, out_of_6_0, out_of_6_1, out_of_6_2, out_of_6_3, out_of_6_4, out_of_6_5, out_of_6_6, out_of_6_7, out_of_6_8, out_of_6_9, out_of_6_10, out_of_6_11, out_of_6_12, out_of_6_13, out_of_6_14, out_of_6_15, out_of_7_0, out_of_7_1, out_of_7_2, out_of_7_3, out_of_7_4, out_of_7_5, out_of_7_6, out_of_7_7, out_of_7_8, out_of_7_9, out_of_7_10, out_of_7_11, out_of_7_12, out_of_7_13, out_of_7_14, out_of_7_15, out_of_8_0, out_of_8_1, out_of_8_2, out_of_8_3, out_of_8_4, out_of_8_5, out_of_8_6, out_of_8_7, out_of_8_8, out_of_8_9, out_of_8_10, out_of_8_11, out_of_8_12, out_of_8_13, out_of_8_14, out_of_8_15, out_of_9_0, out_of_9_1, out_of_9_2, out_of_9_3, out_of_9_4, out_of_9_5, out_of_9_6, out_of_9_7, out_of_9_8, out_of_9_9, out_of_9_10, out_of_9_11, out_of_9_12, out_of_9_13, out_of_9_14, out_of_9_15, out_of_10_0, out_of_10_1, out_of_10_2, out_of_10_3, out_of_10_4, out_of_10_5, out_of_10_6, out_of_10_7, out_of_10_8, out_of_10_9, out_of_10_10, out_of_10_11, out_of_10_12, out_of_10_13, out_of_10_14, out_of_10_15, out_of_11_0, out_of_11_1, out_of_11_2, out_of_11_3, out_of_11_4, out_of_11_5, out_of_11_6, out_of_11_7, out_of_11_8, out_of_11_9, out_of_11_10, out_of_11_11, out_of_11_12, out_of_11_13, out_of_11_14, out_of_11_15, out_of_12_0, out_of_12_1, out_of_12_2, out_of_12_3, out_of_12_4, out_of_12_5, out_of_12_6, out_of_12_7, out_of_12_8, out_of_12_9, out_of_12_10, out_of_12_11, out_of_12_12, out_of_12_13, out_of_12_14, out_of_12_15, out_of_13_0, out_of_13_1, out_of_13_2, out_of_13_3, out_of_13_4, out_of_13_5, out_of_13_6, out_of_13_7, out_of_13_8, out_of_13_9, out_of_13_10, out_of_13_11, out_of_13_12, out_of_13_13, out_of_13_14, out_of_13_15, out_of_14_0, out_of_14_1, out_of_14_2, out_of_14_3, out_of_14_4, out_of_14_5, out_of_14_6, out_of_14_7, out_of_14_8, out_of_14_9, out_of_14_10, out_of_14_11, out_of_14_12, out_of_14_13, out_of_14_14, out_of_14_15, out_of_15_0, out_of_15_1, out_of_15_2, out_of_15_3, out_of_15_4, out_of_15_5, out_of_15_6, out_of_15_7, out_of_15_8, out_of_15_9, out_of_15_10, out_of_15_11, out_of_15_12, out_of_15_13, out_of_15_14, out_of_15_15;

transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_0(clock, reset, enable, direction, in_15, in_0, out_of_0_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_1(clock, reset, enable, direction, in_14, out_of_0_0, out_of_0_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_2(clock, reset, enable, direction, in_13, out_of_0_1, out_of_0_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_3(clock, reset, enable, direction, in_12, out_of_0_2, out_of_0_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_4(clock, reset, enable, direction, in_11, out_of_0_3, out_of_0_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_5(clock, reset, enable, direction, in_10, out_of_0_4, out_of_0_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_6(clock, reset, enable, direction, in_9, out_of_0_5, out_of_0_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_7(clock, reset, enable, direction, in_8, out_of_0_6, out_of_0_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_8(clock, reset, enable, direction, in_7, out_of_0_7, out_of_0_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_9(clock, reset, enable, direction, in_6, out_of_0_8, out_of_0_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_10(clock, reset, enable, direction, in_5, out_of_0_9, out_of_0_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_11(clock, reset, enable, direction, in_4, out_of_0_10, out_of_0_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_12(clock, reset, enable, direction, in_3, out_of_0_11, out_of_0_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_13(clock, reset, enable, direction, in_2, out_of_0_12, out_of_0_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_14(clock, reset, enable, direction, in_1, out_of_0_13, out_of_0_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_0_15(clock, reset, enable, direction, in_0, out_of_0_14, out_of_0_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_0(clock, reset, enable, direction, out_of_0_0, in_1, out_of_1_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_1(clock, reset, enable, direction, out_of_0_1, out_of_1_0, out_of_1_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_2(clock, reset, enable, direction, out_of_0_2, out_of_1_1, out_of_1_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_3(clock, reset, enable, direction, out_of_0_3, out_of_1_2, out_of_1_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_4(clock, reset, enable, direction, out_of_0_4, out_of_1_3, out_of_1_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_5(clock, reset, enable, direction, out_of_0_5, out_of_1_4, out_of_1_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_6(clock, reset, enable, direction, out_of_0_6, out_of_1_5, out_of_1_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_7(clock, reset, enable, direction, out_of_0_7, out_of_1_6, out_of_1_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_8(clock, reset, enable, direction, out_of_0_8, out_of_1_7, out_of_1_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_9(clock, reset, enable, direction, out_of_0_9, out_of_1_8, out_of_1_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_10(clock, reset, enable, direction, out_of_0_10, out_of_1_9, out_of_1_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_11(clock, reset, enable, direction, out_of_0_11, out_of_1_10, out_of_1_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_12(clock, reset, enable, direction, out_of_0_12, out_of_1_11, out_of_1_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_13(clock, reset, enable, direction, out_of_0_13, out_of_1_12, out_of_1_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_14(clock, reset, enable, direction, out_of_0_14, out_of_1_13, out_of_1_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_1_15(clock, reset, enable, direction, out_of_0_15, out_of_1_14, out_of_1_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_0(clock, reset, enable, direction, out_of_1_0, in_2, out_of_2_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_1(clock, reset, enable, direction, out_of_1_1, out_of_2_0, out_of_2_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_2(clock, reset, enable, direction, out_of_1_2, out_of_2_1, out_of_2_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_3(clock, reset, enable, direction, out_of_1_3, out_of_2_2, out_of_2_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_4(clock, reset, enable, direction, out_of_1_4, out_of_2_3, out_of_2_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_5(clock, reset, enable, direction, out_of_1_5, out_of_2_4, out_of_2_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_6(clock, reset, enable, direction, out_of_1_6, out_of_2_5, out_of_2_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_7(clock, reset, enable, direction, out_of_1_7, out_of_2_6, out_of_2_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_8(clock, reset, enable, direction, out_of_1_8, out_of_2_7, out_of_2_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_9(clock, reset, enable, direction, out_of_1_9, out_of_2_8, out_of_2_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_10(clock, reset, enable, direction, out_of_1_10, out_of_2_9, out_of_2_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_11(clock, reset, enable, direction, out_of_1_11, out_of_2_10, out_of_2_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_12(clock, reset, enable, direction, out_of_1_12, out_of_2_11, out_of_2_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_13(clock, reset, enable, direction, out_of_1_13, out_of_2_12, out_of_2_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_14(clock, reset, enable, direction, out_of_1_14, out_of_2_13, out_of_2_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_2_15(clock, reset, enable, direction, out_of_1_15, out_of_2_14, out_of_2_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_0(clock, reset, enable, direction, out_of_2_0, in_3, out_of_3_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_1(clock, reset, enable, direction, out_of_2_1, out_of_3_0, out_of_3_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_2(clock, reset, enable, direction, out_of_2_2, out_of_3_1, out_of_3_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_3(clock, reset, enable, direction, out_of_2_3, out_of_3_2, out_of_3_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_4(clock, reset, enable, direction, out_of_2_4, out_of_3_3, out_of_3_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_5(clock, reset, enable, direction, out_of_2_5, out_of_3_4, out_of_3_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_6(clock, reset, enable, direction, out_of_2_6, out_of_3_5, out_of_3_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_7(clock, reset, enable, direction, out_of_2_7, out_of_3_6, out_of_3_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_8(clock, reset, enable, direction, out_of_2_8, out_of_3_7, out_of_3_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_9(clock, reset, enable, direction, out_of_2_9, out_of_3_8, out_of_3_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_10(clock, reset, enable, direction, out_of_2_10, out_of_3_9, out_of_3_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_11(clock, reset, enable, direction, out_of_2_11, out_of_3_10, out_of_3_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_12(clock, reset, enable, direction, out_of_2_12, out_of_3_11, out_of_3_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_13(clock, reset, enable, direction, out_of_2_13, out_of_3_12, out_of_3_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_14(clock, reset, enable, direction, out_of_2_14, out_of_3_13, out_of_3_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_3_15(clock, reset, enable, direction, out_of_2_15, out_of_3_14, out_of_3_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_0(clock, reset, enable, direction, out_of_3_0, in_4, out_of_4_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_1(clock, reset, enable, direction, out_of_3_1, out_of_4_0, out_of_4_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_2(clock, reset, enable, direction, out_of_3_2, out_of_4_1, out_of_4_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_3(clock, reset, enable, direction, out_of_3_3, out_of_4_2, out_of_4_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_4(clock, reset, enable, direction, out_of_3_4, out_of_4_3, out_of_4_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_5(clock, reset, enable, direction, out_of_3_5, out_of_4_4, out_of_4_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_6(clock, reset, enable, direction, out_of_3_6, out_of_4_5, out_of_4_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_7(clock, reset, enable, direction, out_of_3_7, out_of_4_6, out_of_4_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_8(clock, reset, enable, direction, out_of_3_8, out_of_4_7, out_of_4_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_9(clock, reset, enable, direction, out_of_3_9, out_of_4_8, out_of_4_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_10(clock, reset, enable, direction, out_of_3_10, out_of_4_9, out_of_4_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_11(clock, reset, enable, direction, out_of_3_11, out_of_4_10, out_of_4_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_12(clock, reset, enable, direction, out_of_3_12, out_of_4_11, out_of_4_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_13(clock, reset, enable, direction, out_of_3_13, out_of_4_12, out_of_4_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_14(clock, reset, enable, direction, out_of_3_14, out_of_4_13, out_of_4_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_4_15(clock, reset, enable, direction, out_of_3_15, out_of_4_14, out_of_4_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_0(clock, reset, enable, direction, out_of_4_0, in_5, out_of_5_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_1(clock, reset, enable, direction, out_of_4_1, out_of_5_0, out_of_5_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_2(clock, reset, enable, direction, out_of_4_2, out_of_5_1, out_of_5_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_3(clock, reset, enable, direction, out_of_4_3, out_of_5_2, out_of_5_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_4(clock, reset, enable, direction, out_of_4_4, out_of_5_3, out_of_5_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_5(clock, reset, enable, direction, out_of_4_5, out_of_5_4, out_of_5_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_6(clock, reset, enable, direction, out_of_4_6, out_of_5_5, out_of_5_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_7(clock, reset, enable, direction, out_of_4_7, out_of_5_6, out_of_5_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_8(clock, reset, enable, direction, out_of_4_8, out_of_5_7, out_of_5_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_9(clock, reset, enable, direction, out_of_4_9, out_of_5_8, out_of_5_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_10(clock, reset, enable, direction, out_of_4_10, out_of_5_9, out_of_5_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_11(clock, reset, enable, direction, out_of_4_11, out_of_5_10, out_of_5_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_12(clock, reset, enable, direction, out_of_4_12, out_of_5_11, out_of_5_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_13(clock, reset, enable, direction, out_of_4_13, out_of_5_12, out_of_5_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_14(clock, reset, enable, direction, out_of_4_14, out_of_5_13, out_of_5_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_5_15(clock, reset, enable, direction, out_of_4_15, out_of_5_14, out_of_5_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_0(clock, reset, enable, direction, out_of_5_0, in_6, out_of_6_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_1(clock, reset, enable, direction, out_of_5_1, out_of_6_0, out_of_6_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_2(clock, reset, enable, direction, out_of_5_2, out_of_6_1, out_of_6_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_3(clock, reset, enable, direction, out_of_5_3, out_of_6_2, out_of_6_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_4(clock, reset, enable, direction, out_of_5_4, out_of_6_3, out_of_6_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_5(clock, reset, enable, direction, out_of_5_5, out_of_6_4, out_of_6_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_6(clock, reset, enable, direction, out_of_5_6, out_of_6_5, out_of_6_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_7(clock, reset, enable, direction, out_of_5_7, out_of_6_6, out_of_6_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_8(clock, reset, enable, direction, out_of_5_8, out_of_6_7, out_of_6_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_9(clock, reset, enable, direction, out_of_5_9, out_of_6_8, out_of_6_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_10(clock, reset, enable, direction, out_of_5_10, out_of_6_9, out_of_6_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_11(clock, reset, enable, direction, out_of_5_11, out_of_6_10, out_of_6_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_12(clock, reset, enable, direction, out_of_5_12, out_of_6_11, out_of_6_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_13(clock, reset, enable, direction, out_of_5_13, out_of_6_12, out_of_6_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_14(clock, reset, enable, direction, out_of_5_14, out_of_6_13, out_of_6_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_6_15(clock, reset, enable, direction, out_of_5_15, out_of_6_14, out_of_6_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_0(clock, reset, enable, direction, out_of_6_0, in_7, out_of_7_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_1(clock, reset, enable, direction, out_of_6_1, out_of_7_0, out_of_7_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_2(clock, reset, enable, direction, out_of_6_2, out_of_7_1, out_of_7_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_3(clock, reset, enable, direction, out_of_6_3, out_of_7_2, out_of_7_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_4(clock, reset, enable, direction, out_of_6_4, out_of_7_3, out_of_7_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_5(clock, reset, enable, direction, out_of_6_5, out_of_7_4, out_of_7_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_6(clock, reset, enable, direction, out_of_6_6, out_of_7_5, out_of_7_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_7(clock, reset, enable, direction, out_of_6_7, out_of_7_6, out_of_7_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_8(clock, reset, enable, direction, out_of_6_8, out_of_7_7, out_of_7_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_9(clock, reset, enable, direction, out_of_6_9, out_of_7_8, out_of_7_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_10(clock, reset, enable, direction, out_of_6_10, out_of_7_9, out_of_7_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_11(clock, reset, enable, direction, out_of_6_11, out_of_7_10, out_of_7_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_12(clock, reset, enable, direction, out_of_6_12, out_of_7_11, out_of_7_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_13(clock, reset, enable, direction, out_of_6_13, out_of_7_12, out_of_7_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_14(clock, reset, enable, direction, out_of_6_14, out_of_7_13, out_of_7_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_7_15(clock, reset, enable, direction, out_of_6_15, out_of_7_14, out_of_7_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_0(clock, reset, enable, direction, out_of_7_0, in_8, out_of_8_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_1(clock, reset, enable, direction, out_of_7_1, out_of_8_0, out_of_8_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_2(clock, reset, enable, direction, out_of_7_2, out_of_8_1, out_of_8_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_3(clock, reset, enable, direction, out_of_7_3, out_of_8_2, out_of_8_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_4(clock, reset, enable, direction, out_of_7_4, out_of_8_3, out_of_8_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_5(clock, reset, enable, direction, out_of_7_5, out_of_8_4, out_of_8_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_6(clock, reset, enable, direction, out_of_7_6, out_of_8_5, out_of_8_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_7(clock, reset, enable, direction, out_of_7_7, out_of_8_6, out_of_8_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_8(clock, reset, enable, direction, out_of_7_8, out_of_8_7, out_of_8_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_9(clock, reset, enable, direction, out_of_7_9, out_of_8_8, out_of_8_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_10(clock, reset, enable, direction, out_of_7_10, out_of_8_9, out_of_8_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_11(clock, reset, enable, direction, out_of_7_11, out_of_8_10, out_of_8_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_12(clock, reset, enable, direction, out_of_7_12, out_of_8_11, out_of_8_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_13(clock, reset, enable, direction, out_of_7_13, out_of_8_12, out_of_8_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_14(clock, reset, enable, direction, out_of_7_14, out_of_8_13, out_of_8_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_8_15(clock, reset, enable, direction, out_of_7_15, out_of_8_14, out_of_8_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_0(clock, reset, enable, direction, out_of_8_0, in_9, out_of_9_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_1(clock, reset, enable, direction, out_of_8_1, out_of_9_0, out_of_9_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_2(clock, reset, enable, direction, out_of_8_2, out_of_9_1, out_of_9_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_3(clock, reset, enable, direction, out_of_8_3, out_of_9_2, out_of_9_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_4(clock, reset, enable, direction, out_of_8_4, out_of_9_3, out_of_9_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_5(clock, reset, enable, direction, out_of_8_5, out_of_9_4, out_of_9_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_6(clock, reset, enable, direction, out_of_8_6, out_of_9_5, out_of_9_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_7(clock, reset, enable, direction, out_of_8_7, out_of_9_6, out_of_9_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_8(clock, reset, enable, direction, out_of_8_8, out_of_9_7, out_of_9_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_9(clock, reset, enable, direction, out_of_8_9, out_of_9_8, out_of_9_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_10(clock, reset, enable, direction, out_of_8_10, out_of_9_9, out_of_9_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_11(clock, reset, enable, direction, out_of_8_11, out_of_9_10, out_of_9_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_12(clock, reset, enable, direction, out_of_8_12, out_of_9_11, out_of_9_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_13(clock, reset, enable, direction, out_of_8_13, out_of_9_12, out_of_9_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_14(clock, reset, enable, direction, out_of_8_14, out_of_9_13, out_of_9_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_9_15(clock, reset, enable, direction, out_of_8_15, out_of_9_14, out_of_9_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_0(clock, reset, enable, direction, out_of_9_0, in_10, out_of_10_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_1(clock, reset, enable, direction, out_of_9_1, out_of_10_0, out_of_10_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_2(clock, reset, enable, direction, out_of_9_2, out_of_10_1, out_of_10_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_3(clock, reset, enable, direction, out_of_9_3, out_of_10_2, out_of_10_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_4(clock, reset, enable, direction, out_of_9_4, out_of_10_3, out_of_10_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_5(clock, reset, enable, direction, out_of_9_5, out_of_10_4, out_of_10_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_6(clock, reset, enable, direction, out_of_9_6, out_of_10_5, out_of_10_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_7(clock, reset, enable, direction, out_of_9_7, out_of_10_6, out_of_10_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_8(clock, reset, enable, direction, out_of_9_8, out_of_10_7, out_of_10_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_9(clock, reset, enable, direction, out_of_9_9, out_of_10_8, out_of_10_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_10(clock, reset, enable, direction, out_of_9_10, out_of_10_9, out_of_10_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_11(clock, reset, enable, direction, out_of_9_11, out_of_10_10, out_of_10_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_12(clock, reset, enable, direction, out_of_9_12, out_of_10_11, out_of_10_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_13(clock, reset, enable, direction, out_of_9_13, out_of_10_12, out_of_10_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_14(clock, reset, enable, direction, out_of_9_14, out_of_10_13, out_of_10_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_10_15(clock, reset, enable, direction, out_of_9_15, out_of_10_14, out_of_10_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_0(clock, reset, enable, direction, out_of_10_0, in_11, out_of_11_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_1(clock, reset, enable, direction, out_of_10_1, out_of_11_0, out_of_11_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_2(clock, reset, enable, direction, out_of_10_2, out_of_11_1, out_of_11_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_3(clock, reset, enable, direction, out_of_10_3, out_of_11_2, out_of_11_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_4(clock, reset, enable, direction, out_of_10_4, out_of_11_3, out_of_11_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_5(clock, reset, enable, direction, out_of_10_5, out_of_11_4, out_of_11_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_6(clock, reset, enable, direction, out_of_10_6, out_of_11_5, out_of_11_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_7(clock, reset, enable, direction, out_of_10_7, out_of_11_6, out_of_11_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_8(clock, reset, enable, direction, out_of_10_8, out_of_11_7, out_of_11_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_9(clock, reset, enable, direction, out_of_10_9, out_of_11_8, out_of_11_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_10(clock, reset, enable, direction, out_of_10_10, out_of_11_9, out_of_11_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_11(clock, reset, enable, direction, out_of_10_11, out_of_11_10, out_of_11_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_12(clock, reset, enable, direction, out_of_10_12, out_of_11_11, out_of_11_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_13(clock, reset, enable, direction, out_of_10_13, out_of_11_12, out_of_11_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_14(clock, reset, enable, direction, out_of_10_14, out_of_11_13, out_of_11_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_11_15(clock, reset, enable, direction, out_of_10_15, out_of_11_14, out_of_11_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_0(clock, reset, enable, direction, out_of_11_0, in_12, out_of_12_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_1(clock, reset, enable, direction, out_of_11_1, out_of_12_0, out_of_12_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_2(clock, reset, enable, direction, out_of_11_2, out_of_12_1, out_of_12_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_3(clock, reset, enable, direction, out_of_11_3, out_of_12_2, out_of_12_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_4(clock, reset, enable, direction, out_of_11_4, out_of_12_3, out_of_12_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_5(clock, reset, enable, direction, out_of_11_5, out_of_12_4, out_of_12_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_6(clock, reset, enable, direction, out_of_11_6, out_of_12_5, out_of_12_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_7(clock, reset, enable, direction, out_of_11_7, out_of_12_6, out_of_12_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_8(clock, reset, enable, direction, out_of_11_8, out_of_12_7, out_of_12_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_9(clock, reset, enable, direction, out_of_11_9, out_of_12_8, out_of_12_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_10(clock, reset, enable, direction, out_of_11_10, out_of_12_9, out_of_12_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_11(clock, reset, enable, direction, out_of_11_11, out_of_12_10, out_of_12_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_12(clock, reset, enable, direction, out_of_11_12, out_of_12_11, out_of_12_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_13(clock, reset, enable, direction, out_of_11_13, out_of_12_12, out_of_12_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_14(clock, reset, enable, direction, out_of_11_14, out_of_12_13, out_of_12_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_12_15(clock, reset, enable, direction, out_of_11_15, out_of_12_14, out_of_12_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_0(clock, reset, enable, direction, out_of_12_0, in_13, out_of_13_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_1(clock, reset, enable, direction, out_of_12_1, out_of_13_0, out_of_13_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_2(clock, reset, enable, direction, out_of_12_2, out_of_13_1, out_of_13_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_3(clock, reset, enable, direction, out_of_12_3, out_of_13_2, out_of_13_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_4(clock, reset, enable, direction, out_of_12_4, out_of_13_3, out_of_13_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_5(clock, reset, enable, direction, out_of_12_5, out_of_13_4, out_of_13_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_6(clock, reset, enable, direction, out_of_12_6, out_of_13_5, out_of_13_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_7(clock, reset, enable, direction, out_of_12_7, out_of_13_6, out_of_13_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_8(clock, reset, enable, direction, out_of_12_8, out_of_13_7, out_of_13_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_9(clock, reset, enable, direction, out_of_12_9, out_of_13_8, out_of_13_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_10(clock, reset, enable, direction, out_of_12_10, out_of_13_9, out_of_13_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_11(clock, reset, enable, direction, out_of_12_11, out_of_13_10, out_of_13_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_12(clock, reset, enable, direction, out_of_12_12, out_of_13_11, out_of_13_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_13(clock, reset, enable, direction, out_of_12_13, out_of_13_12, out_of_13_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_14(clock, reset, enable, direction, out_of_12_14, out_of_13_13, out_of_13_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_13_15(clock, reset, enable, direction, out_of_12_15, out_of_13_14, out_of_13_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_0(clock, reset, enable, direction, out_of_13_0, in_14, out_of_14_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_1(clock, reset, enable, direction, out_of_13_1, out_of_14_0, out_of_14_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_2(clock, reset, enable, direction, out_of_13_2, out_of_14_1, out_of_14_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_3(clock, reset, enable, direction, out_of_13_3, out_of_14_2, out_of_14_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_4(clock, reset, enable, direction, out_of_13_4, out_of_14_3, out_of_14_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_5(clock, reset, enable, direction, out_of_13_5, out_of_14_4, out_of_14_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_6(clock, reset, enable, direction, out_of_13_6, out_of_14_5, out_of_14_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_7(clock, reset, enable, direction, out_of_13_7, out_of_14_6, out_of_14_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_8(clock, reset, enable, direction, out_of_13_8, out_of_14_7, out_of_14_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_9(clock, reset, enable, direction, out_of_13_9, out_of_14_8, out_of_14_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_10(clock, reset, enable, direction, out_of_13_10, out_of_14_9, out_of_14_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_11(clock, reset, enable, direction, out_of_13_11, out_of_14_10, out_of_14_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_12(clock, reset, enable, direction, out_of_13_12, out_of_14_11, out_of_14_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_13(clock, reset, enable, direction, out_of_13_13, out_of_14_12, out_of_14_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_14(clock, reset, enable, direction, out_of_13_14, out_of_14_13, out_of_14_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_14_15(clock, reset, enable, direction, out_of_13_15, out_of_14_14, out_of_14_15);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_0(clock, reset, enable, direction, out_of_14_0, in_15, out_of_15_0);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_1(clock, reset, enable, direction, out_of_14_1, out_of_15_0, out_of_15_1);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_2(clock, reset, enable, direction, out_of_14_2, out_of_15_1, out_of_15_2);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_3(clock, reset, enable, direction, out_of_14_3, out_of_15_2, out_of_15_3);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_4(clock, reset, enable, direction, out_of_14_4, out_of_15_3, out_of_15_4);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_5(clock, reset, enable, direction, out_of_14_5, out_of_15_4, out_of_15_5);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_6(clock, reset, enable, direction, out_of_14_6, out_of_15_5, out_of_15_6);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_7(clock, reset, enable, direction, out_of_14_7, out_of_15_6, out_of_15_7);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_8(clock, reset, enable, direction, out_of_14_8, out_of_15_7, out_of_15_8);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_9(clock, reset, enable, direction, out_of_14_9, out_of_15_8, out_of_15_9);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_10(clock, reset, enable, direction, out_of_14_10, out_of_15_9, out_of_15_10);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_11(clock, reset, enable, direction, out_of_14_11, out_of_15_10, out_of_15_11);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_12(clock, reset, enable, direction, out_of_14_12, out_of_15_11, out_of_15_12);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_13(clock, reset, enable, direction, out_of_14_13, out_of_15_12, out_of_15_13);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_14(clock, reset, enable, direction, out_of_14_14, out_of_15_13, out_of_15_14);
transpose_buffer_cell #(DATA_WIDTH) tb_cell_15_15(clock, reset, enable, direction, out_of_14_15, out_of_15_14, out_of_15_15);

assign out_0 = (direction) ? out_of_0_15 : out_of_15_15;
assign out_1 = (direction) ? out_of_1_15 : out_of_15_14;
assign out_2 = (direction) ? out_of_2_15 : out_of_15_13;
assign out_3 = (direction) ? out_of_3_15 : out_of_15_12;
assign out_4 = (direction) ? out_of_4_15 : out_of_15_11;
assign out_5 = (direction) ? out_of_5_15 : out_of_15_10;
assign out_6 = (direction) ? out_of_6_15 : out_of_15_9;
assign out_7 = (direction) ? out_of_7_15 : out_of_15_8;
assign out_8 = (direction) ? out_of_8_15 : out_of_15_7;
assign out_9 = (direction) ? out_of_9_15 : out_of_15_6;
assign out_10 = (direction) ? out_of_10_15 : out_of_15_5;
assign out_11 = (direction) ? out_of_11_15 : out_of_15_4;
assign out_12 = (direction) ? out_of_12_15 : out_of_15_3;
assign out_13 = (direction) ? out_of_13_15 : out_of_15_2;
assign out_14 = (direction) ? out_of_14_15 : out_of_15_1;
assign out_15 = (direction) ? out_of_15_15 : out_of_15_0;

endmodule

