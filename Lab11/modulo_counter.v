module modulo_counter(
    input clock, reset,
    output [2:0] data,
    output out
    );
    
    wire [2:0] counter_Y_out;
    
    wire [1:0] Cout;
    
    wire resetwire;
    wire restart;
    
    
    full_adder fa_bit0 (
        .A(data[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Cout(Cout[0]),
        .Y(counter_Y_out[0])
    );
    
    d_flipflop dff_bit0 (
        .D(counter_Y_out[0]),
        .Clock(clock),
        .Reset(resetwire),
        .Q(data[0])
    );
    
    full_adder fa_bit1 (
        .A(data[1]),
        .B(Cout[0]),
        .Cin(1'b0),
        .Cout(Cout[1]),
        .Y(counter_Y_out[1])
    );
    
    d_flipflop dff_bit1 (
        .D(counter_Y_out[1]),
        .Clock(clock),
        .Reset(resetwire),
        .Q(data[1])
    );
    
    full_adder fa_bit2 (
        .A(data[2]),
        .B(Cout[1]),
        .Cin(1'b0),
        .Y(counter_Y_out[2])
    );
    
    d_flipflop dff_bit2 (
        .D(counter_Y_out[2]),
        .Clock(clock),
        .Reset(resetwire),
        .Q(data[2])
    );
    
    
    assign resetwire = reset | restart;
    
    assign restart = data[1] & data[2]; // send restart signal once 5 is reached
    
    assign check = (data == 3'b101);
    
    d_flipflop dff_final (
        .D(out ^ check),
        .Clock(clock),
        .Reset(reset),
        .Q(out)
        );
    
    
    
endmodule
