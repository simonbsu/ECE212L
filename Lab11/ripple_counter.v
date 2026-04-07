module ripple_counter(
        input clock, reset,
        output [2:0] data
    );
    
    
    t_flipflop bit0 (
        .T(1'b1),
        .Clock(clock),
        .Reset(reset),
        .Q(data[0])
        );
        
    t_flipflop bit1 (
        .T(1'b1),
        .Clock(~data[0]),
        .Reset(reset),
        .Q(data[1])
        );
        
        
    t_flipflop bit2 (
        .T(1'b1),
        .Clock(~data[1]),
        .Reset(reset),
        .Q(data[2])
        );
        
endmodule