`include "filtrodown.v"
`include "filtroup.v"
`include "filtromiddle.v"

module filtros(
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
	out_26
);

parameter DATA_WIDTH = 8;

//Portas de Entrada
input signed [DATA_WIDTH+1:0] in_0;
input signed [DATA_WIDTH+1:0] in_1;
input signed [DATA_WIDTH+1:0] in_2;
input signed [DATA_WIDTH+1:0] in_3;
input signed [DATA_WIDTH+1:0] in_4;
input signed [DATA_WIDTH+1:0] in_5;
input signed [DATA_WIDTH+1:0] in_6;
input signed [DATA_WIDTH+1:0] in_7;
input signed [DATA_WIDTH+1:0] in_8;
input signed [DATA_WIDTH+1:0] in_9;
input signed [DATA_WIDTH+1:0] in_10;
input signed [DATA_WIDTH+1:0] in_11;
input signed [DATA_WIDTH+1:0] in_12;
input signed [DATA_WIDTH+1:0] in_13;
input signed [DATA_WIDTH+1:0] in_14;
input signed [DATA_WIDTH+1:0] in_15;

// Portas de Saída
// Saidas dos filtros UP
output signed [DATA_WIDTH+1:0] out_0;
output signed [DATA_WIDTH+1:0] out_1;
output signed [DATA_WIDTH+1:0] out_2;
output signed [DATA_WIDTH+1:0] out_3;
output signed [DATA_WIDTH+1:0] out_4;
output signed [DATA_WIDTH+1:0] out_5;
output signed [DATA_WIDTH+1:0] out_6;
output signed [DATA_WIDTH+1:0] out_7;
output signed [DATA_WIDTH+1:0] out_8;

// Saidas dos filtros MIDDLE
output signed [DATA_WIDTH+2:0] out_9;
output signed [DATA_WIDTH+2:0] out_10;
output signed [DATA_WIDTH+2:0] out_11;
output signed [DATA_WIDTH+2:0] out_12;
output signed [DATA_WIDTH+2:0] out_13;
output signed [DATA_WIDTH+2:0] out_14;
output signed [DATA_WIDTH+2:0] out_15;
output signed [DATA_WIDTH+2:0] out_16;
output signed [DATA_WIDTH+2:0] out_17;

// Saidas dos filtros DOWN
output signed [DATA_WIDTH+1:0] out_18;
output signed [DATA_WIDTH+1:0] out_19;
output signed [DATA_WIDTH+1:0] out_20;
output signed [DATA_WIDTH+1:0] out_21;
output signed [DATA_WIDTH+1:0] out_22;
output signed [DATA_WIDTH+1:0] out_23;
output signed [DATA_WIDTH+1:0] out_24;
output signed [DATA_WIDTH+1:0] out_25;
output signed [DATA_WIDTH+1:0] out_26;


filtroup #(DATA_WIDTH) filtroup_cell_01(in_0,in_1,in_2,in_3,in_4,in_5,in_6,out_0);
filtroup #(DATA_WIDTH) filtroup_cell_02(in_1,in_2,in_3,in_4,in_5,in_6,in_7,out_1);
filtroup #(DATA_WIDTH) filtroup_cell_03(in_2,in_3,in_4,in_5,in_6,in_7,in_8,out_2);
filtroup #(DATA_WIDTH) filtroup_cell_04(in_3,in_4,in_5,in_6,in_7,in_8,in_9,out_3);
filtroup #(DATA_WIDTH) filtroup_cell_05(in_4,in_5,in_6,in_7,in_8,in_9,in_10,out_4);
filtroup #(DATA_WIDTH) filtroup_cell_06(in_5,in_6,in_7,in_8,in_9,in_10,in_11,out_5);
filtroup #(DATA_WIDTH) filtroup_cell_07(in_6,in_7,in_8,in_9,in_10,in_11,in_12,out_6);
filtroup #(DATA_WIDTH) filtroup_cell_08(in_7,in_8,in_9,in_10,in_11,in_12,in_13,out_7);
filtroup #(DATA_WIDTH) filtroup_cell_09(in_8,in_9,in_10,in_11,in_12,in_13,in_14,out_8);

filtromiddle #(DATA_WIDTH) filtromiddle_cell_01(in_0,in_1,in_2,in_3,in_4,in_5,in_6,in_7,out_9);
filtromiddle #(DATA_WIDTH) filtromiddle_cell_02(in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,out_10);
filtromiddle #(DATA_WIDTH) filtromiddle_cell_03(in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,out_11);
filtromiddle #(DATA_WIDTH) filtromiddle_cell_04(in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,out_12);
filtromiddle #(DATA_WIDTH) filtromiddle_cell_05(in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,out_13);
filtromiddle #(DATA_WIDTH) filtromiddle_cell_06(in_5,in_6,in_7,in_8,in_9,in_10,in_11,in_12,out_14);
filtromiddle #(DATA_WIDTH) filtromiddle_cell_07(in_6,in_7,in_8,in_9,in_10,in_11,in_12,in_13,out_15);
filtromiddle #(DATA_WIDTH) filtromiddle_cell_08(in_7,in_8,in_9,in_10,in_11,in_12,in_13,in_14,out_16);
filtromiddle #(DATA_WIDTH) filtromiddle_cell_09(in_8,in_9,in_10,in_11,in_12,in_13,in_14,in_15,out_17);

filtrodown #(DATA_WIDTH) filtrodown_cell_01(in_1,in_2,in_3,in_4,in_5,in_6,in_7,out_18);
filtrodown #(DATA_WIDTH) filtrodown_cell_02(in_2,in_3,in_4,in_5,in_6,in_7,in_8,out_19);
filtrodown #(DATA_WIDTH) filtrodown_cell_03(in_3,in_4,in_5,in_6,in_7,in_8,in_9,out_20);
filtrodown #(DATA_WIDTH) filtrodown_cell_04(in_4,in_5,in_6,in_7,in_8,in_9,in_10,out_21);
filtrodown #(DATA_WIDTH) filtrodown_cell_05(in_5,in_6,in_7,in_8,in_9,in_10,in_11,out_22);
filtrodown #(DATA_WIDTH) filtrodown_cell_06(in_6,in_7,in_8,in_9,in_10,in_11,in_12,out_23);
filtrodown #(DATA_WIDTH) filtrodown_cell_07(in_7,in_8,in_9,in_10,in_11,in_12,in_13,out_24);
filtrodown #(DATA_WIDTH) filtrodown_cell_08(in_8,in_9,in_10,in_11,in_12,in_13,in_14,out_25);
filtrodown #(DATA_WIDTH) filtrodown_cell_09(in_9,in_10,in_11,in_12,in_13,in_14,in_15,out_26);



endmodule