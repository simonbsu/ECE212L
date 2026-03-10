`timescale 1ns / 1ps
module mux(
    input[1:0] sel,
    input Enable,
    input [3:0] CEO, [7:4] You, [11:8] Fred, [15:12] Jill,
    output [3:0] Y
);

    assign Y = Enable ? ((sel == 0) ? CEO : (sel == 1) ? You : (sel == 2) ? Fred : Jill): 4'b0000;


endmodule
