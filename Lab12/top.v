module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines
    onehot inst_onehot (
        .w(sw),
        .clock(btnC),
        .reset(btnU),
        .z(led[0]),
        .outputstate(led[6:2])
        
    );
    
    binary inst_binary (
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .outputstate(led[9:7])
    );

endmodule