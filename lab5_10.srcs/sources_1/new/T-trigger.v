`timescale 1ns / 1ps



module T_trigger(
    input R,
    input S,
    input Te,
    input Ti,
    input C,
    output Q
    );
    
    wire out_N10,out_N5,out_N6,out_N8,out_N9;
    wire out_NOAA7,out_NOAA1,out_NOAA3;
    wire out_NAO2,out_NAO4;
    
    
    N inst_N10 (
    	.a(R),
    	.y(out_N10)
    );
    N inst_N5 (
    	.a(C),
    	.y(out_N5)
    );
     N inst_N6 (
    	.a(out_N5),
    	.y(out_N6)
    );
    N inst_N8 (
    	.a(Te),
    	.y(out_N8)
    );
    NOAA inst_NOAA7 (
    	.a(out_NAO4),
    	.b(out_N8),
    	.c(Ti),
    	.d(Te),
    	.y(out_NOAA7)
    );
    NOAA inst_NOAA1 (
    	.a(out_NAO2),
    	.b(out_N6),
    	.c(out_NOAA7),
    	.d(out_N5),
    	.y(out_NOAA1)
    );
    NOAA inst_NOAA3 (
    	.a(out_NAO4),
    	.b(out_N5),
    	.c(out_NAO2),
    	.d(out_N6),
    	.y(out_NOAA3)
    );
    NAO inst_NAO2 (
    	.a(S),
    	.b(out_NOAA1),
    	.c(out_N10),
   		.y(out_NAO2)
    );
    NAO inst_NAO4 (
    	.a(S),
    	.b(out_NOAA3),
    	.c(out_N10),
   		.y(out_NAO4)
    );
    
    N inst_N9(
    	.a(out_NAO4),
    	.y(Q)
    );
    
endmodule
