module top(
    input [3:0]sw, 
    input btnC,
    output [5:0]led
    
    );
    
    d_flipflop part1(
        .D(sw[0]),
        .Clock(btnC),
        .Q(led[0]),
        .notQ(led[1])
     );
     
    jk_flipflop part2(
        .J(sw[1]),
        .K(sw[2]),
        .Clock(btnC),
        .Q(led[2]),
        .notQ(led[3])
    );
    
    t_flipflop part3(
        .T(sw[3]),
        .Clock(btnC),
        .Q(led[4]),
        .notQ(led[5])
     );
        
    
    
endmodule
