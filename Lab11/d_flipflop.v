module d_flipflop(
    input D, Clock, Reset,
    output reg Q, 
    output notQ
    );
    
    initial begin
        Q <= 1'b0;
    end
    
    always @(posedge Clock, posedge Reset) begin
        if (Reset)
            Q <= 1'b0;
        else if (Clock)
            Q <= D;
    end
        
    assign notQ = ~Q;
    
    
endmodule
