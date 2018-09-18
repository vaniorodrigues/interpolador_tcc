//-----------------------------------------------------
// Design Name : mux_using_assign
// File Name   : mux_using_assign.v
// Function    : 2:1 Mux using Assign
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module  mux3x1_unitario(
din_0      , // Mux first input
din_1      ,
din_2,  // Mux Second input
c0,
c1,			 // Select input
mux_out      // Mux output
);
//-----------Input Ports---------------
parameter DATA_WIDTH = 8;
input  c0, c1;
input [9:0] din_0, din_1, din_2;
//-----------Output Ports---------------
output [9:0] mux_out;
//------------Internal Variables--------
wire  mux_out;
//-------------Code Start-----------------
assign mux_out = (c1) ? ((c0) ? din_2  : din_1) : din_0;

endmodule //End Of Module mux