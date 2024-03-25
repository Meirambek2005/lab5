`timescale 1ns / 1ps



module NOAA(
    input a,
    input b,
    input c,
    input d,
    output y
    );
   
    assign #5 y= ~(a&b | d&c);
endmodule
