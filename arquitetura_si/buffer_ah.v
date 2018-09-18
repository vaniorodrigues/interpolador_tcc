module buffer_ah(
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
	out_0,
	out_1,
	out_2,
	out_3,
	out_4,
	out_5,
	out_6,
	out_7,
	out_8
);

parameter DATA_WIDTH = 8;

input clock, reset, enable, direction;
input signed [DATA_WIDTH+2-1:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8;
output signed [DATA_WIDTH+2-1:0] out_0, out_1, out_2, out_3, out_4, out_5, out_6, out_7, out_8;
wire signed [DATA_WIDTH+2-1:0] 
out_of_0_0, out_of_0_1, out_of_0_2, out_of_0_3, out_of_0_4, out_of_0_5, out_of_0_6, out_of_0_7, out_of_0_8,
out_of_1_0, out_of_1_1, out_of_1_2, out_of_1_3, out_of_1_4, out_of_1_5, out_of_1_6, out_of_1_7, out_of_1_8,
out_of_2_0, out_of_2_1, out_of_2_2, out_of_2_3, out_of_2_4, out_of_2_5, out_of_2_6, out_of_2_7, out_of_2_8,
out_of_3_0, out_of_3_1, out_of_3_2, out_of_3_3, out_of_3_4, out_of_3_5, out_of_3_6, out_of_3_7, out_of_3_8,
out_of_4_0, out_of_4_1, out_of_4_2, out_of_4_3, out_of_4_4, out_of_4_5, out_of_4_6, out_of_4_7, out_of_4_8,
out_of_5_0, out_of_5_1, out_of_5_2, out_of_5_3, out_of_5_4, out_of_5_5, out_of_5_6, out_of_5_7, out_of_5_8,
out_of_6_0, out_of_6_1, out_of_6_2, out_of_6_3, out_of_6_4, out_of_6_5, out_of_6_6, out_of_6_7, out_of_6_8,
out_of_7_0, out_of_7_1, out_of_7_2, out_of_7_3, out_of_7_4, out_of_7_5, out_of_7_6, out_of_7_7, out_of_7_8;

transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_0(clock, reset, enable, direction, in_0, out_of_0_1, out_of_0_0);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_1(clock, reset, enable, direction, in_1, out_of_0_2, out_of_0_1);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_2(clock, reset, enable, direction, in_2, out_of_0_3, out_of_0_2);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_3(clock, reset, enable, direction, in_3, out_of_0_4, out_of_0_3);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_4(clock, reset, enable, direction, in_4, out_of_0_5, out_of_0_4);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_5(clock, reset, enable, direction, in_5, out_of_0_6, out_of_0_5);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_6(clock, reset, enable, direction, in_6, out_of_0_7, out_of_0_6);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_7(clock, reset, enable, direction, in_7, out_of_0_8, out_of_0_7);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_0_8(clock, reset, enable, direction, in_8, out_of_0_0, out_of_0_8);  //  QUANDO ESTIVER LENDO, RECARREGA O SINAL 

transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_0(clock, reset, enable, direction, out_of_0_0, out_of_1_1, out_of_1_0);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_1(clock, reset, enable, direction, out_of_0_1, out_of_1_2, out_of_1_1);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_2(clock, reset, enable, direction, out_of_0_2, out_of_1_3, out_of_1_2);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_3(clock, reset, enable, direction, out_of_0_3, out_of_1_4, out_of_1_3);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_4(clock, reset, enable, direction, out_of_0_4, out_of_1_5, out_of_1_4);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_5(clock, reset, enable, direction, out_of_0_5, out_of_1_6, out_of_1_5);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_6(clock, reset, enable, direction, out_of_0_6, out_of_1_7, out_of_1_6);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_7(clock, reset, enable, direction, out_of_0_7, out_of_1_8, out_of_1_7);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_1_8(clock, reset, enable, direction, out_of_0_8, out_of_1_0, out_of_1_8);

transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_0(clock, reset, enable, direction, out_of_1_0, out_of_2_1, out_of_2_0);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_1(clock, reset, enable, direction, out_of_1_1, out_of_2_2, out_of_2_1);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_2(clock, reset, enable, direction, out_of_1_2, out_of_2_3, out_of_2_2);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_3(clock, reset, enable, direction, out_of_1_3, out_of_2_4, out_of_2_3);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_4(clock, reset, enable, direction, out_of_1_4, out_of_2_5, out_of_2_4);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_5(clock, reset, enable, direction, out_of_1_5, out_of_2_6, out_of_2_5);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_6(clock, reset, enable, direction, out_of_1_6, out_of_2_7, out_of_2_6);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_7(clock, reset, enable, direction, out_of_1_7, out_of_2_8, out_of_2_7);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_2_8(clock, reset, enable, direction, out_of_1_8, out_of_2_0, out_of_2_8);

transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_0(clock, reset, enable, direction, out_of_2_0, out_of_3_1, out_of_3_0);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_1(clock, reset, enable, direction, out_of_2_1, out_of_3_2, out_of_3_1);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_2(clock, reset, enable, direction, out_of_2_2, out_of_3_3, out_of_3_2);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_3(clock, reset, enable, direction, out_of_2_3, out_of_3_4, out_of_3_3);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_4(clock, reset, enable, direction, out_of_2_4, out_of_3_5, out_of_3_4);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_5(clock, reset, enable, direction, out_of_2_5, out_of_3_6, out_of_3_5);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_6(clock, reset, enable, direction, out_of_2_6, out_of_3_7, out_of_3_6);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_7(clock, reset, enable, direction, out_of_2_7, out_of_3_8, out_of_3_7);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_3_8(clock, reset, enable, direction, out_of_2_8, out_of_3_0, out_of_3_8);

transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_0(clock, reset, enable, direction, out_of_3_0, out_of_4_1, out_of_4_0);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_1(clock, reset, enable, direction, out_of_3_1, out_of_4_2, out_of_4_1);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_2(clock, reset, enable, direction, out_of_3_2, out_of_4_3, out_of_4_2);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_3(clock, reset, enable, direction, out_of_3_3, out_of_4_4, out_of_4_3);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_4(clock, reset, enable, direction, out_of_3_4, out_of_4_5, out_of_4_4);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_5(clock, reset, enable, direction, out_of_3_5, out_of_4_6, out_of_4_5);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_6(clock, reset, enable, direction, out_of_3_6, out_of_4_7, out_of_4_6);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_7(clock, reset, enable, direction, out_of_3_7, out_of_4_8, out_of_4_7);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_4_8(clock, reset, enable, direction, out_of_3_8, out_of_4_0, out_of_4_8);

transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_0(clock, reset, enable, direction, out_of_4_0, out_of_5_1, out_of_5_0);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_1(clock, reset, enable, direction, out_of_4_1, out_of_5_2, out_of_5_1);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_2(clock, reset, enable, direction, out_of_4_2, out_of_5_3, out_of_5_2);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_3(clock, reset, enable, direction, out_of_4_3, out_of_5_4, out_of_5_3);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_4(clock, reset, enable, direction, out_of_4_4, out_of_5_5, out_of_5_4);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_5(clock, reset, enable, direction, out_of_4_5, out_of_5_6, out_of_5_5);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_6(clock, reset, enable, direction, out_of_4_6, out_of_5_7, out_of_5_6);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_7(clock, reset, enable, direction, out_of_4_7, out_of_5_8, out_of_5_7);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_5_8(clock, reset, enable, direction, out_of_4_8, out_of_5_0, out_of_5_8);

transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_0(clock, reset, enable, direction, out_of_5_0, out_of_6_1, out_of_6_0);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_1(clock, reset, enable, direction, out_of_5_1, out_of_6_2, out_of_6_1);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_2(clock, reset, enable, direction, out_of_5_2, out_of_6_3, out_of_6_2);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_3(clock, reset, enable, direction, out_of_5_3, out_of_6_4, out_of_6_3);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_4(clock, reset, enable, direction, out_of_5_4, out_of_6_5, out_of_6_4);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_5(clock, reset, enable, direction, out_of_5_5, out_of_6_6, out_of_6_5);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_6(clock, reset, enable, direction, out_of_5_6, out_of_6_7, out_of_6_6);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_7(clock, reset, enable, direction, out_of_5_7, out_of_6_8, out_of_6_7);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_6_8(clock, reset, enable, direction, out_of_5_8, out_of_6_0, out_of_6_8);

transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_0(clock, reset, enable, direction, out_of_6_0, out_of_7_1, out_of_7_0);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_1(clock, reset, enable, direction, out_of_6_1, out_of_7_2, out_of_7_1);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_2(clock, reset, enable, direction, out_of_6_2, out_of_7_3, out_of_7_2);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_3(clock, reset, enable, direction, out_of_6_3, out_of_7_4, out_of_7_3);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_4(clock, reset, enable, direction, out_of_6_4, out_of_7_5, out_of_7_4);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_5(clock, reset, enable, direction, out_of_6_5, out_of_7_6, out_of_7_5);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_6(clock, reset, enable, direction, out_of_6_6, out_of_7_7, out_of_7_6);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_7(clock, reset, enable, direction, out_of_6_7, out_of_7_8, out_of_7_7);
transpose_buffer_cell #(DATA_WIDTH+2) tb_cell_7_8(clock, reset, enable, direction, out_of_6_8, out_of_7_0, out_of_7_8);

assign out_0 = out_of_7_0;
assign out_1 = (!direction) ? out_of_7_1 : out_of_6_0;
assign out_2 = (!direction) ? out_of_7_2 : out_of_5_0;
assign out_3 = (!direction) ? out_of_7_3 : out_of_4_0;
assign out_4 = (!direction) ? out_of_7_4 : out_of_3_0;
assign out_5 = (!direction) ? out_of_7_5 : out_of_2_0;
assign out_6 = (!direction) ? out_of_7_6 : out_of_1_0;
assign out_7 = (!direction) ? out_of_7_7 : out_of_0_0;
assign out_8 = out_of_7_8;



endmodule

