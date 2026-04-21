//StopWatch: Modulo-60 Counter
module stopwatch(
    input clk,
    input rst,
    input en,
    output [5:0] state     //6-bits to represent the highest number 59
);
    
    wire [5:0] counter_Y_out;
    
    wire [4:0] Cout;
    
    wire resetwire;
    wire restart;
    
    
    full_adder fa_bit0 (
        .A(state[0]),
        .B(en),
        .Cin(1'b0),
        .Cout(Cout[0]),
        .Y(counter_Y_out[0])
    );
    
    d_flipflop dff_bit0 (
        .D(counter_Y_out[0]),
        .clk(clk),
        .rst(resetwire),
        .Q(state[0])
    );
    
    full_adder fa_bit1 (
        .A(state[1]),
        .B(Cout[0]),
        .Cin(1'b0),
        .Cout(Cout[1]),
        .Y(counter_Y_out[1])
    );
    
    d_flipflop dff_bit1 (
        .D(counter_Y_out[1]),
        .clk(clk),
        .rst(resetwire),
        .Q(state[1])
    );
    
    full_adder fa_bit2 (
        .A(state[2]),
        .B(Cout[1]),
        .Cin(1'b0),
        .Cout(Cout[2]),
        .Y(counter_Y_out[2])
    );
    
    d_flipflop dff_bit2 (
        .D(counter_Y_out[2]),
        .clk(clk),
        .rst(resetwire),
        .Q(state[2])
    );
    
    
    
    full_adder fa_bit3 (
        .A(state[3]),
        .B(Cout[2]),
        .Cin(1'b0),
        .Cout(Cout[3]),
        .Y(counter_Y_out[3])
    );
    
    d_flipflop dff_bit3 (
        .D(counter_Y_out[3]),
        .clk(clk),
        .rst(resetwire),
        .Q(state[3])
    );
    
    full_adder fa_bit4 (
        .A(state[4]),
        .B(Cout[3]),
        .Cin(1'b0),
        .Cout(Cout[4]),
        .Y(counter_Y_out[4])
    );
    
    d_flipflop dff_bit4 (
        .D(counter_Y_out[4]),
        .clk(clk),
        .rst(resetwire),
        .Q(state[4])
    );
    
    full_adder fa_bit5 (
        .A(state[5]),
        .B(Cout[4]),
        .Cin(1'b0),
        .Y(counter_Y_out[5])
    );
    
    d_flipflop dff_bit5 (
        .D(counter_Y_out[5]),
        .clk(clk),
        .rst(resetwire),
        .Q(state[5])
    );
    
    
    assign resetwire = rst | restart;
    
    assign restart = state[2] & state[3] & state[4] & state[5]; // send restart signal once 58 is reached
    
    assign check = (state == 6'd60);
    
    d_flipflop dff_final (
        .D(state ^ check),
        .clk(clck),
        .rst(rst),
        .Q(out)
        );
   
endmodule


module full_adder(
    // Declare ABCD inputs
    input A, B, Cin,
    // declare outputs
    output Y, Cout
);

    // assign outputs
    assign Y = A^B^Cin;
    assign Cout = (A&B)|(A&Cin)|(B&Cin);
    
endmodule


module d_flipflop(
    input D, clk, rst,
    output reg Q, 
    output notQ
    );
    
    initial begin
        Q <= 1'b0;
    end
    
    always @(posedge clk, posedge rst) begin
        if (rst)
            Q <= 1'b0;
        else if (clk)
            Q <= D;
    end
        
    assign notQ = ~Q;
    
    
endmodule


