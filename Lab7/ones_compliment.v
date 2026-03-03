module ones_compliment(
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Y,
    output Cout
);

    wire [3:0] S; 
    wire [3:0] S_final; 
    wire C1, C2, C3, C4, C5, C6, C7;

    full_adder fa0 (.A(A[0]), .B(B[0]), .Cin(1'b0), .Y(S[0]), .Cout(C1));
    full_adder fa1 (.A(A[1]), .B(B[1]), .Cin(C1),   .Y(S[1]), .Cout(C2));
    full_adder fa2 (.A(A[2]), .B(B[2]), .Cin(C2),   .Y(S[2]), .Cout(C3));
    full_adder fa3 (.A(A[3]), .B(B[3]), .Cin(C3),   .Y(S[3]), .Cout(C4));

    full_adder fa4 (.A(S[0]), .B(1'b0), .Cin(C4), .Y(S_final[0]), .Cout(C5));
    full_adder fa5 (.A(S[1]), .B(1'b0), .Cin(C5), .Y(S_final[1]), .Cout(C6));
    full_adder fa6 (.A(S[2]), .B(1'b0), .Cin(C6), .Y(S_final[2]), .Cout(C7));
    full_adder fa7 (.A(S[3]), .B(1'b0), .Cin(C7), .Y(S_final[3]), .Cout());

    assign Y = S_final;
    assign Cout = C4;

endmodule