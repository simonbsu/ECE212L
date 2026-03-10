`timescale 1ns / 1ps
module demux(
    input [3:0] In, 
    input [1:0] Sel,
    input enable,
    output [3:0] local_lib, FireDepartment, School, RibShack
);

assign local_lib = enable ? (Sel == 0 ? In : 0): 0;
assign FireDepartment = enable ? (Sel == 1 ? In : 0): 0; 
assign School = enable ? (Sel == 2 ? In : 0): 0; 
assign RibShack = enable ? (Sel == 3 ? In : 0): 0; 
 

endmodule
