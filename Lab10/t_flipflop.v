module t_flipflop(
    input T, Clock,
    output reg Q,
    output notQ
    );
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clock) begin
        if (Clock)
            Q <= Q ^ T;
        end
        
    assign notQ = ~Q;
    
endmodule
