module d_flipflop(
    input D, Clock,
    output reg Q, 
    output notQ
    );
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clock) begin
        if (Clock)
            Q <= D;
        end
        
    assign notQ = ~Q;
    
    
endmodule
