//Timer: Mod-60 downcounter with synchronous load
module timer(
    input clk,
    input rst,
    input en,               //Enables or Disables clk
    input load,             //If load=1, load the counter with "load_value"
    input [5:0] load_value, //Value to load into counter register. Counter will then start counting from this value
    output [5:0] state     //6-bits to represent the highest number 59
);

reg [5:0] next_state;
reg [5:0] d_in;

always @(*) begin
    if (state == 6'd0)
        next_state = 6'd0;
    else 
        next_state = state - 6'd1;
end

always @(*) begin
    if (load)
        d_in <= load_value;
    else if (en)
        d_in <= next_state;
    else 
        d_in <= state;
end

d_flipflop dff0 (
    .D(d_in[0]),
    .clk(clk),
    .rst(rst),
    .Q(state[0])
);

d_flipflop dff1 (
    .D(d_in[1]),
    .clk(clk),
    .rst(rst),
    .Q(state[1])
);

d_flipflop dff2 (
    .D(d_in[2]),
    .clk(clk),
    .rst(rst),
    .Q(state[2])
);

d_flipflop dff3 (
    .D(d_in[3]),
    .clk(clk),
    .rst(rst),
    .Q(state[3])
);

d_flipflop dff4 (
    .D(d_in[4]),
    .clk(clk),
    .rst(rst),
    .Q(state[4])
);

d_flipflop dff5 (
    .D(d_in[5]),
    .clk(clk),
    .rst(rst),
    .Q(state[5])
);

    
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