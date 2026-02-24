// Implement top level module
module top(
    input[7:0]sw,
    output[5:0]led
    
);

wire wire1;


    light light_inst(
        .upstairs(sw[0]),
        .downstairs(sw[1]),
        .stair_light(led[0])
    );
    
    adder adder_inst(
         .A(sw[2]),
         .B(sw[3]),
         .Y(led[1]),
         .carry(led[2])
    );
    
    full_adder fulladder_inst(
        .A(sw[4]),    
        .B(sw[5]),
        .Cin(1'b0),  
        .Y(led[3]),
        .Cout(wire1)
    );
    
    full_adder fulladder_inst2(
        .A(sw[6]),    
        .B(sw[7]), 
        .Cin(wire1), 
        .Y(led[4]),
        .Cout(led[5])
    );
    
endmodule