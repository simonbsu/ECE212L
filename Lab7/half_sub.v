module half_sub(
    // declare inputs
    input A, B,
    // declare outputs
    output Y, borrow
);


    // logic equation
    assign Y = A^B;
    assign borrow = ~A & B;
    
    
endmodule