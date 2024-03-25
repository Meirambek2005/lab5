`timescale 1ns / 1ps



module N(
    input a,
    output y
    );
    assign #5 y = ~a;
endmodule
