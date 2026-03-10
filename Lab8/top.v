module top( 
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

wire [3:0] internet;

mux m_inst(
    .CEO(sw[3:0]),
    .You(sw[7:4]),
    .Fred(sw[11:8]),
    .Jill(sw[15:12]),
    .sel({btnU, btnL}),
    .Enable(btnC),
    .Y(internet)
);

demux dm_inst(
    .local_lib(led[3:0]),
    .FireDepartment(led[7:4]),
    .School(led[11:8]),
    .RibShack(led[15:12]),
    .Sel({btnR, btnD}),
    .enable(btnC),
    .In(internet)
);

endmodule