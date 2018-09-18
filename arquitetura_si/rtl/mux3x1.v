module mux3x1(
	c0,
   c1, 
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
   in_32,
   in_33,
   in_34,
   in_35,
   in_36,
   in_37,
   in_38,
   in_39,
   in_40,
   in_41,
   in_42,
   in_43,
   in_44,
   in_45,
   in_46,
   in_47,
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

parameter DATA_WIDTH= 8;

input c0,c1;
input signed [DATA_WIDTH+1:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9, in_10, in_11, in_12, in_13, in_14, in_15, in_16,in_17,in_18,in_19,in_20,in_21,in_22,in_23,in_24,in_25,in_26,in_27,in_28,in_29,in_30,in_31,in_32,in_33,in_34,in_35,in_36,in_37,in_38,in_39,in_40,in_41,in_42,in_43,in_44,in_45,in_46,in_47;
output signed [DATA_WIDTH+1:0] out_0,out_1,out_2,out_3,out_4,out_5,out_6,out_7,out_8,out_9,out_10,out_11,out_12,out_13,out_14,out_15;

assign out_0  = (c1) ? ((c0) ? in_32  :in_16) :in_0 ; // 00 => in_0, 10 => in16, 11=> in 32;
assign out_1  = (c1) ? ((c0) ? in_33  :in_17) :in_1 ;
assign out_2  = (c1) ? ((c0) ? in_34  :in_18) :in_2 ; 
assign out_3  = (c1) ? ((c0) ? in_35  :in_19) :in_3 ; 
assign out_4  = (c1) ? ((c0) ? in_36  :in_20) :in_4 ; 
assign out_5  = (c1) ? ((c0) ? in_37  :in_21) :in_5 ;
assign out_6  = (c1) ? ((c0) ? in_38  :in_22) :in_6 ;
assign out_7  = (c1) ? ((c0) ? in_39  :in_23) :in_7 ;
assign out_8  = (c1) ? ((c0) ? in_40  :in_24) :in_8 ;
assign out_9  = (c1) ? ((c0) ? in_41  :in_25) :in_9 ;
assign out_10 = (c1) ? ((c0) ? in_42  :in_26) :in_10;
assign out_11 = (c1) ? ((c0) ? in_43  :in_27) :in_11;
assign out_12 = (c1) ? ((c0) ? in_44  :in_28) :in_12;
assign out_13 = (c1) ? ((c0) ? in_45  :in_29) :in_13;
assign out_14 = (c1) ? ((c0) ? in_46  :in_30) :in_14;
assign out_15 = (c1) ? ((c0) ? in_47  :in_31) :in_15;  

endmodule