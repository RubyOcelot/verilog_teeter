module simAcce();
reg clk,rst;
reg [7:0]accel_x,accel_y;
wire [9:0]pl_x,pl_y;
reg pix_stb=1,screenend=1;

initial begin
    rst=0;
    clk=0;
    accel_x=0;
    accel_y=0;
    #50 accel_x=-32;
    accel_y=-120;
end
always #5 clk=~clk;

accelBallMove #(
    .SPRITE_PL_X(250),
    .SPRITE_PL_Y(130))
    test1(
    .CLK(clk),
    .rst(rst),
    .pix_stb(pix_stb),
    .screenend(screenend),
    .accel_x(accel_x),
    .accel_y(accel_y),
    .pl_x(pl_x),
    .pl_y(pl_y)
);

endmodule