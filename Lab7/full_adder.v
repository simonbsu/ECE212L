// Implement module called full_adder
module full_adder(
    // Declare ABCD inputs
    input A, B, Cin,
    // declare outputs
    output Y, Cout
);

    // assign outputs
    assign Y = A^B^Cin;
    assign Cout = A&B|Cin&(A^B);
    
endmodule