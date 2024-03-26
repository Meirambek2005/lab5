`timescale 1ns / 1ps
module tb_Mealy();
	reg [3:1] cnt;
	reg clk;
	wire [5:1] w;
	initial begin 
		cnt = 0;
		clk = 0;
		end
		always
		begin
			#1 cnt <= cnt + 1'b1;
			#0.5 clk <= ~clk;
		end
		
		Mealy dut(
			.z(cnt),
			.clk(clk),
			.w(w)
		);
	
endmodule
