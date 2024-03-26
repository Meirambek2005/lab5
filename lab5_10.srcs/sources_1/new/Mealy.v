`timescale 1ns / 1ps

module Mealy 
#(parameter a1=3'b001, a2=3'b010, a3=3'b011, a4=3'b100)
   (input [3:1] z,
    input clk,
    output reg [5:1] w);
    reg [2:0] state;


always @(posedge clk) begin
    state <= a1;
end

always @(posedge clk) begin
    case (state)
        a1: begin
            case (z)
                2'b00: w <= 5'b00001; 
                2'b01: w <= 5'b00001; 
                2'b10: w <= 5'b00010; 
                default: w <= 5'b00000; 
            endcase
        end
        a2: begin
            case (z)
                2'b00: w <= 5'b00001; 
                2'b01: w <= 5'b00001; 
                2'b10: w <= 5'b00011; 
                default: w <= 5'b00000; 
            endcase
        end
        a3: begin
            case (z)
                2'b00: w <= 5'b00010; 
                2'b01: w <= 5'b00011; 
                2'b10: w <= 5'b00100; 
                default: w <= 5'b00000; 
            endcase
        end
        a4: begin
            case (z)
                2'b00: w <= 5'b00100; 
                2'b01: w <= 5'b00101; 
                2'b10: w <= 5'b00101; 
                default: w <= 5'b00000; 
            endcase
        end
        default: begin
            w <= 5'b00000; 
        end
    endcase
end

endmodule
    
    

