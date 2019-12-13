module top(
    input wire CLK,             // board clock: 100 MHz 
    input wire RST_BTN,         // btn cpu rst
    input wire NEW_GAME_BTN,    // btn left
    input wire AGAIN_BTN,       // btn right
    input wire ACL_MISO,        // data from accelerometer
    input theme_choose,
    input UP_BTN,
    input DOWN_BTN,
    input OK_BTN,
    input [3:0]level_choose,
    output wire VGA_HS_O,       // horizontal sync output
    output wire VGA_VS_O,       // vertical sync output
    output [3:0] VGA_R,     // 4-bit VGA red output
    output [3:0] VGA_G,     // 4-bit VGA green output
    output [3:0] VGA_B,      // 4-bit VGA blue output
    output wire ACL_MOSI,       // data send to accelerometer
    output wire ACL_SCLK,       //clock for accelerometer
    output wire ACL_CSN,         //signal for accelerometer
    output [15:0]LED            //test
    );

    wire rst,rst_clr; 
    sig_clr rstClr(.i_clk(CLK),.i_sig(RST_BTN),.o_sig(rst_clr));
    sig_pulse rstPulse(.i_clk(CLK),.i_sig(rst_clr),.o_sig(rst));

    wire new_game_rst,new_game_clr,new_game_pulse;
    sig_clr newGameClr(.i_clk(CLK),.i_sig(NEW_GAME_BTN),.o_sig(new_game_clr));
    sig_pulse newGamePulse(.i_clk(CLK),.i_sig(new_game_clr),.o_sig(new_game_pulse));

    wire again_rst,again_clr,again_pulse;
    sig_clr againClr(.i_clk(CLK),.i_sig(AGAIN_BTN),.o_sig(again_clr));
    sig_pulse againPulse(.i_clk(CLK),.i_sig(again_clr),.o_sig(again_pulse));

    wire up_btn,up_btn_clr,up_btn_pulse;
    sig_clr upBTNClr(.i_clk(CLK),.i_sig(UP_BTN),.o_sig(up_btn_clr));
    sig_pulse upBTNPulse(.i_clk(CLK),.i_sig(up_btn_clr),.o_sig(up_btn));

    
    wire down_btn,down_btn_clr,down_btn_pulse;
    sig_clr downBTNClr(.i_clk(CLK),.i_sig(DOWN_BTN),.o_sig(down_btn_clr));
    sig_pulse downBTNPulse(.i_clk(CLK),.i_sig(down_btn_clr),.o_sig(down_btn));

    wire ok_btn,ok_btn_clr,ok_btn_pulse;
    sig_clr okBTNClr(.i_clk(CLK),.i_sig(OK_BTN),.o_sig(ok_btn_clr));
    sig_pulse okBTNPulse(.i_clk(CLK),.i_sig(ok_btn_clr),.o_sig(ok_btn));

    wire rand_rst;

    reg [15:0]rand_seed_cnt=0;

    always @(posedge CLK) begin
        if(rst_clr|new_game_clr|ok_btn_clr)      rand_seed_cnt<=rand_seed_cnt+16'h1;
    end


    // generate a 25 MHz pixel strobe
    reg [15:0] cnt=0;
    reg pix_stb;
    always @(posedge CLK)
        {pix_stb, cnt} <= cnt + 16'h4000;  // divide by 4: (2^16)/4 = 0x4000

    

    // VRAM frame buffers (read-write)
    localparam SCREEN_WIDTH = 320;
    localparam SCREEN_HEIGHT = 180;
    localparam VRAM_DEPTH = SCREEN_WIDTH * SCREEN_HEIGHT; 
    localparam VRAM_A_WIDTH = 16;  // 2^16 > 320 x 180
    localparam VRAM_D_WIDTH = 8;   // colour bits per pixel
    localparam PIXEL_COORD_BIT=10;

    // sprite buffer (read-only)
    localparam SPRITE_SIZE = 32;  // dimensions of square sprites in pixels
    localparam SPRITE_COUNT = 30;  // number of sprites in buffer
    localparam SPRITEBUF_D_WIDTH = 8;  // colour bits per pixel
    localparam SPRITEBUF_DEPTH = SPRITE_SIZE * SPRITE_SIZE * SPRITE_COUNT;    
    localparam SPRITEBUF_A_WIDTH = 15;  // 2^13 == 8,096 == 32 x 256 =SPRITEBUF_DEPTH

    // sprites to load and position of player sprite in frame
    localparam SPRITE_BG_INDEX = 0;  // background sprite
    localparam SPRITE_BL_INDEX = 1;  // player sprite
    localparam SPRITE_FH_INDEX = 2;  // fail black hole
    localparam SPRITE_WH_INDEX = 3; // win green hole
    localparam SPRITE_HD_INDEX = 4;
    localparam SPRITE_SEL_INDEX =6;
    localparam SPRITE_MODE_INDEX=7;
    localparam SPRITE_PAUSE_INDEX=8;
    localparam SPRITE_FAIL_INDEX=9;
    localparam SPRITE_WIN_INDEX=10;
//    localparam SPRITE_BG_OFFSET = SPRITE_BG_INDEX * SPRITE_SIZE * SPRITE_SIZE;
//    localparam SPRITE_BL_OFFSET = SPRITE_BL_INDEX * SPRITE_SIZE * SPRITE_SIZE;
//    localparam SPRITE_FH_OFFSET = SPRITE_FH_INDEX * SPRITE_SIZE * SPRITE_SIZE;
    localparam SPRITE_BL_X = (SCREEN_WIDTH - SPRITE_SIZE) >> 1;     // centre
    localparam SPRITE_BL_Y = (SCREEN_HEIGHT - SPRITE_SIZE) >>1;     // centre

    //position of ball
    reg [9:0]bl_x=SPRITE_BL_X,bl_y=SPRITE_BL_Y;
    wire [9:0] rolling_x,rolling_y;
    reg [9:0]bl_pos_initial_x=SPRITE_BL_X;
    reg [9:0]bl_pos_initial_y=SPRITE_BL_Y;
    
    // holes
    localparam MAX_FAILHOLE_NUM=7;
    reg [9:0]wh_pos_x=10'd200,wh_pos_y=10'd100;
    reg [10*(MAX_FAILHOLE_NUM)-1:0]fh_pos_x={10'd10,10'd50,10'd80,10'd100,10'd200,10'd250,10'd280};
    reg [10*(MAX_FAILHOLE_NUM)-1:0]fh_pos_y={10'd130,10'd25,10'd140,10'd50,10'd100,10'd70,10'd10};
    wire [20*(MAX_FAILHOLE_NUM+2)-1:0]rand_list;
    wire [20*(MAX_FAILHOLE_NUM+2)-1:0]classic_list;
    wire rand_data_ready;

    getRandPos #(
        .MAX_NUM(9),
        .POS_X_RANGE(SCREEN_WIDTH-SPRITE_SIZE),
        .POS_Y_RANGE(SCREEN_HEIGHT-SPRITE_SIZE)
        )
        getAllPos(
        .i_clk(CLK),
        .i_rst(rand_rst),
        .rand_seed(rand_seed_cnt),
        .o_rand_list(rand_list),
        .o_data_ready(rand_data_ready)
    );

    reg [2:0]max_option,select_pos=0;
    wire screenend;
    wire is_game_playing,is_game_pause,is_game_start_menu,is_game_fail,is_game_win,is_game_finish;
    //vga controller

    reg [2:0]select_pos_alt=0;
    always @(*) begin
        case(game_state)
            GAME_START_MENU:select_pos_alt=select_pos;
            GAME_PAUSE: select_pos_alt=select_pos;
            GAME_FAIL: select_pos_alt=select_pos+3'h1;
            GAME_WIN:select_pos_alt=select_pos+3'h1;
            GAME_FINISH:select_pos_alt=select_pos+3'h1;
            default:select_pos_alt=select_pos;
        endcase
    end
    drawScreenCtrl #(
        .VRAM_A_WIDTH(VRAM_A_WIDTH),
        .VRAM_D_WIDTH(VRAM_D_WIDTH),
        .VRAM_DEPTH(VRAM_DEPTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .SCREEN_HEIGHT(SCREEN_HEIGHT),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITE_BL_INDEX(SPRITE_BL_INDEX),
        .SPRITE_BG_INDEX(SPRITE_BG_INDEX),
        .SPRITE_FH_INDEX(SPRITE_FH_INDEX),
        .SPRITE_WH_INDEX(SPRITE_WH_INDEX),
        .SPRITE_HD_INDEX(SPRITE_HD_INDEX),
        .SPRITE_SEL_INDEX(SPRITE_SEL_INDEX),
        .SPRITE_MODE_INDEX(SPRITE_MODE_INDEX),
        .SPRITE_PAUSE_INDEX(SPRITE_PAUSE_INDEX),
        .SPRITE_FAIL_INDEX(SPRITE_FAIL_INDEX),
        .SPRITE_WIN_INDEX(SPRITE_WIN_INDEX),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SPRITEBUF_D_WIDTH(SPRITEBUF_D_WIDTH),
        .SPRITEBUF_DEPTH(SPRITEBUF_DEPTH),
        .MAX_FAILHOLE_NUM(MAX_FAILHOLE_NUM)
        )
        drawScreen (
        .CLK(CLK),
        .rst(rst),
        .pix_stb(pix_stb),
        .bl_x(bl_x),
        .bl_y(bl_y),
        .i_wh_pos_x(wh_pos_x),
        .i_wh_pos_y(wh_pos_y),
        .i_fh_pos_x(fh_pos_x),
        .i_fh_pos_y(fh_pos_y),
        .theme_choose(theme_choose),
        .is_game_start_menu(is_game_start_menu),
        .is_game_pause(is_game_pause),
        .is_game_win(is_game_win),
        .is_game_fail(is_game_fail),
        .is_game_finish(is_game_finish),
        .game_mode(game_mode),
        .i_select_pos(select_pos_alt),
        .VGA_R(VGA_R),
        .VGA_G(VGA_G),
        .VGA_B(VGA_B),
        .VGA_HS_O(VGA_HS_O),
        .VGA_VS_O(VGA_VS_O),
        .o_screenend(screenend),
        .o_led(LED[15:5])
    );

    //accelerometer
    wire [11:0]accel_x,accel_y;
    wire accel_data_ready;
    myAccelerometerCtrl getAccel(
        .CLK(CLK),
        .rst(rst),
        .ACL_MISO(ACL_MISO),
        .ACL_SCLK(ACL_SCLK),
        .ACL_MOSI(ACL_MOSI),
        .ACL_CSN(ACL_CSN),
        .accel_x(accel_x),
        .accel_y(accel_y),
        .o_data_ready(accel_data_ready)
    );

    //move the ball
    
    wire bl_pos_rst;
    wire is_ball_moving;
    assign is_ball_moving=is_game_playing|is_game_start_menu;
    accelBallMove #(
        .SPRITE_BL_X(SPRITE_BL_X),
        .SPRITE_BL_Y(SPRITE_BL_Y),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .SCREEN_HEIGHT(SCREEN_HEIGHT),
        .PIXEL_COORD_BIT(PIXEL_COORD_BIT))
        moveTheBall(
        .CLK(CLK),
        .rst(bl_pos_rst),
        .screenend(screenend),
        .accel_x(accel_x[11:4]),
        .accel_y(accel_y[11:4]),
        .is_ball_moving(is_ball_moving),
        .bl_x(rolling_x),
        .bl_y(rolling_y),
        .i_bl_pos_initial_x(bl_pos_initial_x),
        .i_bl_pos_initial_y(bl_pos_initial_y)
    );
    

    //drop in holes
    wire [9:0]fix_x,fix_y;
    wire playing_win,playing_fail;
    dropInHoles #(
        .RADIUS(14),
        .MAX_FAILHOLE_NUM(MAX_FAILHOLE_NUM),
        .SPRITE_BL_X(SPRITE_BL_X),
        .SPRITE_BL_Y(SPRITE_BL_Y)
        )
        dropControl(
        .i_clk(CLK),
        .i_rst(again_rst),
        .is_game_playing(is_game_playing),
        .i_bl_x(bl_x),
        .i_bl_y(bl_y),
        .i_wh_pos_x(wh_pos_x),
        .i_wh_pos_y(wh_pos_y),
        .i_fh_pos_x(fh_pos_x),
        .i_fh_pos_y(fh_pos_y),
        .o_win(playing_win),
        .o_fail(playing_fail),
        .o_pos_fall_x(fix_x),
        .o_pos_fall_y(fix_y),
        .i_bl_pos_initial_x(bl_pos_initial_x),
        .i_bl_pos_initial_y(bl_pos_initial_y)
    );

    localparam CLASSIC=1'b0;
    localparam ENDLESS=1'b1;
    reg game_mode=ENDLESS;

    //option select control
    always @(*) begin
        case(game_state)
            GAME_START_MENU:max_option=3'h2;
            GAME_PAUSE:begin
                if(game_mode==ENDLESS)begin
                    max_option=3'h3;
                end
                else begin  
                    max_option=3'h2;
                end
            end
            GAME_WIN:max_option=3'h2;
            GAME_FAIL:begin
                if(game_mode==ENDLESS)
                    max_option=3'h2;
                else
                    max_option=3'h1;
            end
            GAME_FINISH:begin
                max_option=3'h1;
            end
            default begin
                max_option=3'h3;
            end
        endcase
    end
    always @(posedge CLK) begin
        if(rst|ok_btn)begin
            select_pos<=0;
        end
        else begin
            if(up_btn&&(select_pos>0))begin
                select_pos<=select_pos-3'h1;
            end
            else if(down_btn&&(select_pos<max_option-1))begin
                select_pos<=select_pos+3'h1;
            end
        end
    end

    reg [3:0]level_cnt=0;
    //classic mode
    fixPos #(
        .LIST_LENGTH(20*(MAX_FAILHOLE_NUM+2))
        )
        classicPos(
            .level(level_cnt),
            .pos_list(classic_list)
    );


    //game control state machine
    localparam GAME_START_MENU=4'h0;
    localparam GAME_NEW_RST=4'h8;
    localparam GAME_NEW=4'h4;
    localparam GAME_BALL_RST=4'h6;
    localparam GAME_AGAIN=4'h5;
    localparam GAME_PLAYING=4'h1;
    localparam GAME_PAUSE=4'h7;
    localparam GAME_FAIL=4'h2;
    localparam GAME_WIN=4'h3;
    localparam GAME_FINISH=4'h9;
    localparam GAME_RST=GAME_START_MENU;

    reg [3:0] game_state=GAME_START_MENU;
    reg is_start_menu=1;


    always @ (posedge CLK)
    begin
        if(rst) begin
            game_state<=GAME_RST;
        end
        else begin
            case (game_state)
                GAME_START_MENU: begin
                    if(ok_btn)begin
                        if(select_pos==0)begin
                            game_mode<=CLASSIC;
                            game_state<=GAME_NEW;
                        end
                        else begin
                            game_mode<=ENDLESS;
                            game_state<=GAME_NEW_RST;
                        end
                    end
                    else
                        game_state<=GAME_START_MENU;
                end
                GAME_NEW_RST: begin
                    game_state<=GAME_NEW;
                end
                GAME_NEW: begin
                    //game_state<=GAME_PLAYING;
                    if(game_mode==ENDLESS) begin
                        if(accel_data_ready&&rand_data_ready)begin
                        //if(rand_data_ready)begin
                            game_state<=GAME_BALL_RST;
                            fh_pos_x<=rand_list[10*(MAX_FAILHOLE_NUM)-1:0];
                            wh_pos_x<=rand_list[10*(MAX_FAILHOLE_NUM+1)-1:10*MAX_FAILHOLE_NUM];
                            bl_pos_initial_x<=rand_list[10*(MAX_FAILHOLE_NUM+2)-1:10*(MAX_FAILHOLE_NUM+1)];
                            fh_pos_y<=rand_list[10*(2*MAX_FAILHOLE_NUM+2)-1:10*(MAX_FAILHOLE_NUM+2)];
                            wh_pos_y<=rand_list[10*(2*MAX_FAILHOLE_NUM+3)-1:10*(2*MAX_FAILHOLE_NUM+2)];
                            bl_pos_initial_y<=rand_list[10*(2*MAX_FAILHOLE_NUM+4)-1:10*(2*MAX_FAILHOLE_NUM+3)];
                        end
                        else
                            game_state<=GAME_NEW;
                    end
                    else begin
                        if(accel_data_ready)begin
                            game_state<=GAME_BALL_RST;
                            fh_pos_x<=classic_list[10*(MAX_FAILHOLE_NUM)-1:0];
                            wh_pos_x<=classic_list[10*(MAX_FAILHOLE_NUM+1)-1:10*MAX_FAILHOLE_NUM];
                            bl_pos_initial_x<=classic_list[10*(MAX_FAILHOLE_NUM+2)-1:10*(MAX_FAILHOLE_NUM+1)];
                            fh_pos_y<=classic_list[10*(2*MAX_FAILHOLE_NUM+2)-1:10*(MAX_FAILHOLE_NUM+2)];
                            wh_pos_y<=classic_list[10*(2*MAX_FAILHOLE_NUM+3)-1:10*(2*MAX_FAILHOLE_NUM+2)];
                            bl_pos_initial_y<=classic_list[10*(2*MAX_FAILHOLE_NUM+4)-1:10*(2*MAX_FAILHOLE_NUM+3)];
                        end
                        else
                            game_state<=GAME_NEW;
                    end
                end
                GAME_BALL_RST:begin
                    game_state<=GAME_PLAYING;
                end
                GAME_AGAIN:begin
                    game_state<=GAME_PLAYING;
                end
                GAME_PLAYING: begin
                    if(playing_fail) 
                        game_state<=GAME_FAIL;
                    else if(playing_win)
                        game_state<=GAME_WIN;
                    else if(ok_btn)begin
                        game_state<=GAME_PAUSE;
                    end
                    else
                        game_state<=GAME_PLAYING;
                end
                GAME_PAUSE: begin
                    if(ok_btn)begin
                        if(game_mode==ENDLESS) begin
                            case(select_pos)
                                3'h0: begin
                                    game_state<=GAME_PLAYING;
                                end
                                3'h1: begin
                                    game_state<=GAME_AGAIN;
                                end
                                3'h2: begin
                                    game_state<=GAME_NEW_RST;
                                end
                                default: begin
                                    game_state<=GAME_PAUSE;
                                end
                            endcase
                        end
                        else begin
                            case(select_pos)
                                3'h0: begin
                                    game_state<=GAME_PLAYING;
                                end
                                3'h1: begin
                                    game_state<=GAME_AGAIN;
                                end
                                default: begin
                                    game_state<=GAME_PAUSE;
                                end
                            endcase
                        end
                    end
                    else
                        game_state<=GAME_PAUSE;
                end
                GAME_FAIL: begin
                    if(ok_btn)begin
                        if(game_mode==ENDLESS) begin
                            case(select_pos)
                                3'h0: begin
                                    game_state<=GAME_AGAIN;
                                end
                                3'h1: begin
                                    game_state<=GAME_NEW_RST;
                                end
                                default: begin
                                    game_state<=GAME_FAIL;
                                end
                            endcase
                        end
                        else begin
                            case(select_pos)
                                3'h0: begin
                                    game_state<=GAME_AGAIN;
                                end
                                default: begin
                                    game_state<=GAME_FAIL;
                                end
                            endcase
                        end
                    end
                    else
                        game_state<=GAME_FAIL;
                end
                GAME_WIN: begin
                    if(ok_btn)begin
                        if(game_mode==ENDLESS) begin
                            case(select_pos)
                                3'h0: begin
                                    game_state<=GAME_AGAIN;
                                end
                                3'h1: begin
                                    game_state<=GAME_NEW_RST;
                                end
                                default: begin
                                    game_state<=GAME_WIN;
                                end
                            endcase
                        end
                        else begin
                            case(select_pos)
                                3'h0: begin
                                    game_state<=GAME_AGAIN;
                                end
                                3'h1: begin
                                    if(level_cnt<4'h9) begin
                                        level_cnt<=level_cnt+4'h1;
                                        game_state<=GAME_NEW_RST;
                                    end
                                    else
                                        game_state<=GAME_FINISH;
                                end
                                default: begin
                                    game_state<=GAME_WIN;
                                end
                            endcase

                        end
                    end
                    else
                        game_state<=GAME_WIN;
                end
                GAME_FINISH: begin
                    if(ok_btn)begin
                        case(select_pos)
                            3'h0: begin
                                game_state<=GAME_START_MENU;
                            end
                            default: begin
                                game_state<=GAME_WIN;
                            end
                        endcase

                    end
                end
            default: game_state<=game_state;
        endcase
        end
    end

    always @(*) begin
        case (game_state)
            GAME_PLAYING: begin
                bl_x=rolling_x;
                bl_y=rolling_y;
            end 
            GAME_PAUSE: begin
                bl_x=rolling_x;
                bl_y=rolling_y;
            end 
            GAME_FAIL: begin
                bl_x=fix_x;
                bl_y=fix_y;
            end
            GAME_WIN:begin
                bl_x=fix_x;
                bl_y=fix_y;
            end
            GAME_START_MENU: begin
                bl_x=rolling_x;
                bl_y=rolling_y;
            end
            default: begin
                bl_x=bl_pos_initial_x;
                bl_y=bl_pos_initial_y;
            end
        endcase
    end

    assign bl_pos_rst=(game_state==GAME_BALL_RST)|(game_state==GAME_AGAIN);
    assign is_game_playing=(game_state==GAME_PLAYING);
    assign is_game_start_menu=(game_state==GAME_START_MENU);
    assign is_game_pause=(game_state==GAME_PAUSE);
    assign is_game_fail=(game_state==GAME_FAIL);
    assign is_game_win=(game_state==GAME_WIN);
    assign is_game_finish=(game_state==GAME_FINISH);
    
    assign new_game_rst=rst|new_game_pulse|(game_state==GAME_NEW_RST);
    assign again_rst=rst|new_game_rst|again_pulse|(game_state==GAME_AGAIN)|(game_state==GAME_NEW_RST);
    assign rand_rst=rst|new_game_rst|(game_state==GAME_NEW_RST);


endmodule