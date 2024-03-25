`timescale 1ns / 1ps



module NAO(
    input a,
    input b,
    input c,
    output y
    );
    
    assign #5 y=~((a|b)&c);
endmodule
