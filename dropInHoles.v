module dropInHoles #(parameter
    RADIUS=16,
    MAX_FAILHOLE_NUM=5,
    SPRITE_BL_X=0,
    SPRITE_BL_Y=0
    )
    (
    input i_clk,
    input i_rst,
    input is_game_playing,
    input [9:0]i_bl_x,
    input [9:0]i_bl_y,
    input [9:0]i_wh_pos_x,
    input [9:0]i_wh_pos_y,
    input [10*(MAX_FAILHOLE_NUM)-1:0]i_fh_pos_x,
    input [10*(MAX_FAILHOLE_NUM)-1:0]i_fh_pos_y,
    output o_win,
    output o_fail,
    output [9:0]o_pos_fall_x,
    output [9:0]o_pos_fall_y,
    output [4:0]o_fail_each
);


wire [4:0]fail;

assign o_fail_each=fail;

assign o_fail=|fail;

reg [9:0]pos_fall_x,pos_fall_y;
assign o_pos_fall_x=pos_fall_x;
assign o_pos_fall_y=pos_fall_y;

always @(*) begin
    if(o_win) begin
        pos_fall_x=i_wh_pos_x;
        pos_fall_y=i_wh_pos_y;
    end
    else begin
        case (fail)
            5'd1: begin
                pos_fall_x=i_fh_pos_x[9:0];
                pos_fall_y=i_fh_pos_y[9:0];
            end
            5'd2: begin
                pos_fall_x=i_fh_pos_x[19:10];
                pos_fall_y=i_fh_pos_y[19:10];
            end
            5'd4: begin
                pos_fall_x=i_fh_pos_x[29:20];
                pos_fall_y=i_fh_pos_y[29:20];
            end
            5'd8: begin
                pos_fall_x=i_fh_pos_x[39:30];
                pos_fall_y=i_fh_pos_y[39:30];
            end
            5'd16: begin
                pos_fall_x=i_fh_pos_x[49:40];
                pos_fall_y=i_fh_pos_y[49:40];
            end
            default: begin
                pos_fall_x=SPRITE_BL_X;
                pos_fall_y=SPRITE_BL_Y;
            end
        endcase
    end
end

dropInSingleHole #(
    .RADIUS(RADIUS)
    )
    winHole(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .is_game_playing(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_wh_pos_x),
    .i_hole_pos_y(i_wh_pos_y),
    .o_fall_in(o_win)
);

dropInSingleHole #(
    .RADIUS(RADIUS)
    )
    failHole1(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .is_game_playing(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[9:0]),
    .i_hole_pos_y(i_fh_pos_y[9:0]),
    .o_fall_in(fail[0])
);

dropInSingleHole #(
    .RADIUS(RADIUS)
    )
    failHole2(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .is_game_playing(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[19:10]),
    .i_hole_pos_y(i_fh_pos_y[19:10]),
    .o_fall_in(fail[1])
);

dropInSingleHole #(
    .RADIUS(RADIUS)
    )
    failHole3(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .is_game_playing(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[29:20]),
    .i_hole_pos_y(i_fh_pos_y[29:20]),
    .o_fall_in(fail[2])
);

dropInSingleHole #(
    .RADIUS(RADIUS)
    )
    failHole4(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .is_game_playing(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[39:30]),
    .i_hole_pos_y(i_fh_pos_y[39:30]),
    .o_fall_in(fail[3])
);

dropInSingleHole #(
    .RADIUS(RADIUS)
    )
    failHole5(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .is_game_playing(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[49:40]),
    .i_hole_pos_y(i_fh_pos_y[49:40]),
    .o_fall_in(fail[4])
);


endmodule