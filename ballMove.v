module accelBallMove #(
    parameter 
    SPRITE_BL_X=100,
    SPRITE_BL_Y=50,
    SPRITE_SIZE=32,
    SCREEN_WIDTH=320,
    SCREEN_HEIGHT=180,
    PIXEL_COORD_BIT=10)
(
    input CLK,
    input rst,
    input screenend,
    input [7:0]accel_x,
    input [7:0]accel_y,
    output [9:0]bl_x,
    output [9:0]bl_y
);
    localparam SCREEN_FREQUNCY=60;       //hz
    localparam GRAVITY=98;               //dm/s^2
    localparam SCREEN_WIDTH_DM=4;           //dm
    localparam VELOCITY_SHIFT_BIT=8;
    localparam integer VELOCITY_CONST=($ceil(((GRAVITY*SCREEN_WIDTH)<<VELOCITY_SHIFT_BIT)/(SCREEN_FREQUNCY*SCREEN_FREQUNCY*SCREEN_WIDTH_DM)))/32;
    localparam ACCEL_WIDTH=8;
    localparam DELTA_VELOCITY_BIT=32;
    localparam VELOCITY_BIT=32;
    localparam ARITH_BIT_WIDTH=32;

    //calculation clock
    reg [17:0]calc_cnt=0;
    localparam CALC_CNT=70587>>1;
    always @(posedge CLK) begin
        if(rst)
            calc_cnt<=0;
        else if(calc_cnt>=CALC_CNT-1) begin
            calc_cnt<=0;
        end
        else
            calc_cnt<=calc_cnt+1;
    end
    wire calc_time;
    assign calc_time=(calc_cnt==(CALC_CNT-1));
    
    //calculate V
    wire [31:0]velocity_x,velocity_y;
    wire rst_vx,rst_vy;

    wire rst1_x,rst2_x,rst1_y,rst2_y;
    assign rst_vx=rst|rst1_x|rst2_x;
    assign rst_vy=rst|rst1_y|rst2_y;
    localparam VELOCITY_SHIFT=8;
    localparam POSITION_SHIFT=8;
    calculateV  #(
        .VELOCITY_SHIFT(VELOCITY_SHIFT)
        )
        vx(
        .CLK(CLK),
        .i_calc_time(calc_time),
        .i_rst_v(rst_vx),
        .i_accel(accel_x),
        .o_velocity(velocity_x)
    );
    calculateV #(
        .VELOCITY_SHIFT(VELOCITY_SHIFT)
    )
        vy(
        .CLK(CLK),
        .i_calc_time(calc_time),
        .i_rst_v(rst_vy),
        .i_accel(accel_y),
        .o_velocity(velocity_y)
    );

    //calculate positon
    wire [31:0]next_pos_x,next_pos_y;

    
    localparam NEG=32'h80000000;

    assign rst1_x=(next_pos_x>NEG);
    assign rst2_x=(next_pos_x>(SCREEN_WIDTH-SPRITE_SIZE));
    calculateX #(
        .POSITION_SHIFT(POSITION_SHIFT),
        .RST0_VALUE(SPRITE_BL_X),
        .RST1_VALUE(0),
        .RST2_VALUE(SCREEN_WIDTH-SPRITE_SIZE)
    )
        pos_x(
        .CLK(CLK),
        .i_rst0(rst),
        .i_rst1(rst1_x),
        .i_rst2(rst2_x),
        .i_calc_time(calc_time),
        .i_velocity(velocity_x),
        .o_next_pos(next_pos_x)
    );

    assign rst1_y=(next_pos_y>NEG);
    assign rst2_y=(next_pos_y>(SCREEN_HEIGHT-SPRITE_SIZE));
    calculateX #(
        .POSITION_SHIFT(POSITION_SHIFT),
        .RST0_VALUE(SPRITE_BL_Y),
        .RST1_VALUE(0),
        .RST2_VALUE(SCREEN_HEIGHT-SPRITE_SIZE)
    )
        pos_y(
        .CLK(CLK),
        .i_rst0(rst),
        .i_rst1(rst1_y),
        .i_rst2(rst2_y),
        .i_calc_time(calc_time),
        .i_velocity(velocity_y),
        .o_next_pos(next_pos_y)
    );


    reg [31:0]bl_x_reg=SPRITE_BL_X,bl_y_reg=SPRITE_BL_Y;
    assign bl_x=bl_x_reg;
    assign bl_y=bl_y_reg;
    always @(posedge CLK) begin
        if (rst) begin
            bl_x_reg<=SPRITE_BL_X;
            bl_y_reg<=SPRITE_BL_Y;
        end
        else begin
            bl_x_reg<=next_pos_x;
            bl_y_reg<=next_pos_y;
        end
    end
endmodule