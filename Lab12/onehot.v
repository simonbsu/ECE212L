// Implement one-hot state machine
module onehot (
    input w, clock, reset,
    output z, 
    output [4:0] outputstate
);

wire Astate, Bstate, Cstate, Dstate, Estate;
wire Anext, Bnext, Cnext, Dnext, Enext;

dff A(
    .Default(1'b1),
    .D(Anext),
    .clk(clock),
    .reset(reset),
    .Q(Astate)
);

dff B(
    .Default(1'b0),
    .D(Bnext),
    .clk(clock),
    .reset(reset),
    .Q(Bstate)
);

dff C(
    .Default(1'b0),
    .D(Cnext),
    .clk(clock),
    .reset(reset),
    .Q(Cstate)
);

dff D(
    .Default(1'b0),
    .D(Dnext),
    .clk(clock),
    .reset(reset),
    .Q(Dstate)
);

dff E(
    .Default(1'b0),
    .D(Enext),
    .clk(clock),
    .reset(reset),
    .Q(Estate)
);

assign z = Cstate | Estate;

assign Anext = 0;
assign Bnext = ~w & (Astate | Dstate | Estate);
assign Cnext = ~w & (Bstate | Cstate);
assign Dnext = w & (Astate | Bstate | Cstate);
assign Enext = w & (Dstate | Estate);


//assign Anext = ~w;
//assign Bnext = ~w & Astate;
//assign Cnext = ~w & (Cstate | Bstate);
//assign Dnext = (Cstate & w) | (Dstate & w);
//assign Enext = (Dstate & w) | (Estate & w);

assign outputstate = {Estate, Dstate, Cstate, Bstate, Astate};

endmodule