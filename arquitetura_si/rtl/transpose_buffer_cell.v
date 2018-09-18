module transpose_buffer_cell (
	clock, 
	reset,
	enable,
	direction,
	in_0,
	in_1,
	out
);

parameter DATA_WIDTH = 8;

input clock, reset, enable, direction;
input signed[DATA_WIDTH-1:0] in_0, in_1;
output signed[DATA_WIDTH-1:0] out;

reg signed[DATA_WIDTH-1:0] out;

always @ (posedge clock or posedge reset)
if (reset) begin
 out <= 0;
end else if (enable && !direction) begin // direction 0 = escrevendo verticalmente, // direction 1 = lendo a memoria;
  out <= in_0;
end else if (enable && direction) begin
  out <= in_1;
end

endmodule
