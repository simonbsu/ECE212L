module jk_flipflop(
    input J, K, Clock,
    output Q,
    output notQ
    );
    
    wire D;
    
    d_flipflop inst(
        .D(D),
        .Clock(Clock),
        .Q(Q),
        .notQ(notQ)
    );
    
    assign D = J & notQ | ~K & Q;
    
    
    
    
    
endmodule
