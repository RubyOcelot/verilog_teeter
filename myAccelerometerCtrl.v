module myAccelerometerCtrl(
    input CLK,
    input rst,
    input ACL_MISO,
    output ACL_SCLK,
    output ACL_MOSI,
    output ACL_CSN,
    output reg [11:0]accel_x,
    output reg [11:0]accel_y,
    output o_data_ready
);
    wire [11:0]accel_x_wire,accel_y_wire,accel_z,accel_tmp;
    wire data_ready;
    assign o_data_ready=data_ready;

    always @(posedge CLK) begin
        if(data_ready) begin
            accel_x<=~accel_x_wire+12'h1;
            accel_y<=accel_y_wire;
        end
    end
    ADXL362Control_0 getXY(
        .SYSCLK(CLK),
        .RESET(rst),
        //exchange x y
        .ACCEL_X(accel_y_wire),//ok
        .ACCEL_Y(accel_x_wire),//oppsite
        .ACCEL_Z(accel_z),
        .ACCEL_TMP(accel_tmp),
        .Data_Ready(data_ready),
        .SCLK(ACL_SCLK),
        .MOSI(ACL_MOSI),
        .MISO(ACL_MISO),
        .SS(ACL_CSN)
    );

endmodule