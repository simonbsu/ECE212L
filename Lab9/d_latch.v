`timescale 1ns / 1ps
module d_latch(
    input D,
    input E,
    output reg Q,
    output NotQ
);

always @(E) begin 
        if (E)
            Q <= D; 
    end

    assign NotQ = ~Q; 


endmodule
