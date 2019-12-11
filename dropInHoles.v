module dropInHoles #(parameter
    RADIUS=16,
    MAX_FAILHOLE_NUM=7,
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
    input [9:0]i_bl_pos_initial_x,
    input [9:0]i_bl_pos_initial_y,
    output o_win,
    output o_fail,
    output [9:0]o_pos_fall_x,
    output [9:0]o_pos_fall_y
);


wire [MAX_FAILHOLE_NUM-1:0]fail;


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
            7'd1: begin
                pos_fall_x=i_fh_pos_x[9:0];
                pos_fall_y=i_fh_pos_y[9:0];
            end
            7'd2: begin
                pos_fall_x=i_fh_pos_x[19:10];
                pos_fall_y=i_fh_pos_y[19:10];
            end
            7'd4: begin
                pos_fall_x=i_fh_pos_x[29:20];
                pos_fall_y=i_fh_pos_y[29:20];
            end
            7'd8: begin
                pos_fall_x=i_fh_pos_x[39:30];
                pos_fall_y=i_fh_pos_y[39:30];
            end
            7'd16: begin
                pos_fall_x=i_fh_pos_x[49:40];
                pos_fall_y=i_fh_pos_y[49:40];
            end
            7'd32: begin
                pos_fall_x=i_fh_pos_x[59:50];
                pos_fall_y=i_fh_pos_y[59:50];
            end
            7'd64: begin
                pos_fall_x=i_fh_pos_x[69:60];
                pos_fall_y=i_fh_pos_y[69:60];
            end
            default: begin
                pos_fall_x=i_bl_pos_initial_x;
                pos_fall_y=i_bl_pos_initial_y;
            end
        endcase
    end
end

positionConflict #(
    .RADIUS(RADIUS)
    )
    winHole(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_decide_ena(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_wh_pos_x),
    .i_hole_pos_y(i_wh_pos_y),
    .o_conflict(o_win)
);

positionConflict #(
    .RADIUS(RADIUS)
    )
    failHole1(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_decide_ena(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[9:0]),
    .i_hole_pos_y(i_fh_pos_y[9:0]),
    .o_conflict(fail[0])
);

positionConflict #(
    .RADIUS(RADIUS)
    )
    failHole2(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_decide_ena(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[19:10]),
    .i_hole_pos_y(i_fh_pos_y[19:10]),
    .o_conflict(fail[1])
);

positionConflict #(
    .RADIUS(RADIUS)
    )
    failHole3(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_decide_ena(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[29:20]),
    .i_hole_pos_y(i_fh_pos_y[29:20]),
    .o_conflict(fail[2])
);

positionConflict #(
    .RADIUS(RADIUS)
    )
    failHole4(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_decide_ena(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[39:30]),
    .i_hole_pos_y(i_fh_pos_y[39:30]),
    .o_conflict(fail[3])
);

positionConflict #(
    .RADIUS(RADIUS)
    )
    failHole5(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_decide_ena(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[49:40]),
    .i_hole_pos_y(i_fh_pos_y[49:40]),
    .o_conflict(fail[4])
);

positionConflict #(
    .RADIUS(RADIUS)
    )
    failHole6(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_decide_ena(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[59:50]),
    .i_hole_pos_y(i_fh_pos_y[59:50]),
    .o_conflict(fail[5])
);

positionConflict #(
    .RADIUS(RADIUS)
    )
    failHole7(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .i_decide_ena(is_game_playing),
    .i_bl_x(i_bl_x),
    .i_bl_y(i_bl_y),
    .i_hole_pos_x(i_fh_pos_x[69:60]),
    .i_hole_pos_y(i_fh_pos_y[69:60]),
    .o_conflict(fail[6])
);


endmodule