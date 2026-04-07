module t_flipflop(
    input T, Clock, Reset,
    output reg Q,
    output notQ
    );
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clock or posedge Reset) begin
        if (Reset)
            Q <= 1'b0;
        else if (Clock)
            Q <= Q ^ T;
        end
        
    assign notQ = ~Q;
    
endmodule
