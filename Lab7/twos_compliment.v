module twos_compliment(
    input [7:0] A,
    output [7:0] Y
);

    wire [7:0]S;
    assign S = ~A;
    
    wire C1, C2, C3, C4, C5, C6, C7;

    full_adder fa0 (.A(S[0]), .B(1'b1), .Cin(1'b0), .Y(Y[0]), .Cout(C1));
    full_adder fa1 (.A(S[1]), .B(1'b0), .Cin(C1), .Y(Y[1]), .Cout(C2));
    full_adder fa2 (.A(S[2]), .B(1'b0), .Cin(C2), .Y(Y[2]), .Cout(C3));
    full_adder fa3 (.A(S[3]), .B(1'b0), .Cin(C3), .Y(Y[3]), .Cout(C4));
    full_adder fa4 (.A(S[4]), .B(1'b0), .Cin(C4), .Y(Y[4]), .Cout(C5));
    full_adder fa5 (.A(S[5]), .B(1'b0), .Cin(C5), .Y(Y[5]), .Cout(C6));
    full_adder fa6 (.A(S[6]), .B(1'b0), .Cin(C6), .Y(Y[6]), .Cout(C7));
    full_adder fa7 (.A(S[7]), .B(1'b0), .Cin(C7), .Y(Y[7]), .Cout());

endmodule