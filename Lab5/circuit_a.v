module circuit_a(
    input A, B, C, D,// Declare inputs
    output Y // Declare Y output
);

    // Enter logic equation here
    assign Y = D & ~A;
    
    wire wire1;
    assign wire1=Y;

endmodule
