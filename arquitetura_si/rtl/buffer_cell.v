module buffer_cell(
	clock, 
	reset,
	enable,
	in,
	out
);

parameter DATA_WIDTH = 8;

input clock, reset, enable;
input signed[DATA_WIDTH-1:0] in;
output signed[DATA_WIDTH-1:0] out;

reg signed[DATA_WIDTH-1:0] out;

always @ (posedge clock or posedge reset)
if (reset) begin
 out <= 0;
end else if (enable) begin // Enable, permite acesso à escrita. 
  out <= in;
end

endmodule