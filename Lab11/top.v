`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2026 09:18:56 AM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input btnC, btnU,
    output [6:0] led
    );
    
    modulo_counter inst_m (
    
    .reset(btnU),
    .clock(btnC),
    .data(led[5:3]),
    .out(led[6])
    
    );
    
    ripple_counter inst_r (
    
    .reset(btnU),
    .clock(btnC),
    .data(led[2:0])
    
    );
    
    
endmodule
