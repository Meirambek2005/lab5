`timescale 1ns / 1ps

module tb_trigger();
    reg [4:0]cnt;
    wire Q1,Q2;
    
    initial cnt = 0;
    always #10 cnt = cnt+1'b1;
    
    T_trigger_a dut1(
    	.R(cnt[4]),
    	.S(cnt[3]),
    	.Te(cnt[2]),
    	.Ti(cnt[1]),
    	.C(cnt[0]),
    	.Q(Q1)
    );
    T_trigger dut2(
    	.R(cnt[4]),
    	.S(cnt[3]),
    	.Te(cnt[2]),
    	.Ti(cnt[1]),
    	.C(cnt[0]),
    	.Q(Q2)
    );
   
    		
endmodule
