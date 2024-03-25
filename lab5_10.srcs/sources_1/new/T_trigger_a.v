`timescale 1ns / 1ps

module T_trigger_a (
    input R, S, C, Te, Ti, 
    output reg Q  
);

reg Q_next;  

always @(posedge C or posedge R or posedge S)
    if (R) Q_next <= 1'b0;
    else if (S) Q_next <= 1'b1;
    else
        if (Te) Q_next <= ~Q;
        else if (Ti) Q_next <= Ti;
        else Q_next <= Q;
    
    
always @(posedge C)
    Q <= Q_next;

endmodule