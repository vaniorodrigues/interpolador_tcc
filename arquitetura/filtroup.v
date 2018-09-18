module filtroup (
	in0,
	in1,
	in2,
	in3,
	in4,
	in5,
	in6,
	out
);

parameter DATA_WIDTH = 8;

// Portas de entrada
input signed [DATA_WIDTH+1:0] in0;
input signed [DATA_WIDTH+1:0] in1;
input signed [DATA_WIDTH+1:0] in2;
input signed [DATA_WIDTH+1:0] in3;
input signed [DATA_WIDTH+1:0] in4;
input signed [DATA_WIDTH+1:0] in5;
input signed [DATA_WIDTH+1:0] in6;

// Portas de Saída
output signed [DATA_WIDTH+1:0] out;

// Tipos de dados
wire signed [DATA_WIDTH+1:0] in0;
wire signed [DATA_WIDTH+1:0] in1;
wire signed [DATA_WIDTH+1:0] in2;
wire signed [DATA_WIDTH+1:0] in3;
wire signed [DATA_WIDTH+1:0] in4;
wire signed [DATA_WIDTH+1:0] in5;
wire signed [DATA_WIDTH+1:0] in6;
wire signed [DATA_WIDTH+10:0] p;


assign p = (-in0+in4-in5+in6) - ((in2+in3)<<1) + ((in1-in3-in5)<<2) - (in2<<3) + (in4<<4) + (in3<<6);


assign out = p >> 6;

endmodule