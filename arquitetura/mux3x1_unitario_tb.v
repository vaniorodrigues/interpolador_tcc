module mux3x1_unitario_tb;


parameter DATA_WIDTH = 8;
	reg c0, c1 ;
	reg [9:0] din_0,din_1, din_2;
	wire [9:0] mux_out;

	initial begin
		$dumpfile("mux3x1_unitario_tb.vcd"); 
		$dumpvars;
		c0 = 0;
		c1 = 0;
		din_0 = 0;
		din_1 = 1;
		din_2 = 1;
		#5 c1 = 1;
		#5 c1 = 0;
		c0 = 1;
		
		#10 $finish;
	end


	mux3x1_unitario #(DATA_WIDTH) mux3x1_unitario_cell(
  .din_0(din_0),
  .din_1(din_1),
  .din_2(din_2),
  .c0(c0),
  .c1(c1),
  .mux_out(mux_out)
 );



endmodule
