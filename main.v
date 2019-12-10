module top(
    input wire CLK,             // board clock: 100 MHz 
    input wire RST_BTN,         // reset button
    input wire GAME_RESTART_BTN,
    input wire ACL_MISO,        // data from accelerometer
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

    wire rst = RST_BTN; 
    wire game_rst;
    assign game_rst=rst|GAME_RESTART_BTN;

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
    localparam SPRITE_COUNT = 8;  // number of sprites in buffer
    localparam SPRITEBUF_D_WIDTH = 8;  // colour bits per pixel
    localparam SPRITEBUF_DEPTH = SPRITE_SIZE * SPRITE_SIZE * SPRITE_COUNT;    
    localparam SPRITEBUF_A_WIDTH = 13;  // 2^13 == 8,096 == 32 x 256 

    // sprites to load and position of player sprite in frame
    localparam SPRITE_BG_INDEX = 0;  // background sprite
    localparam SPRITE_BL_INDEX = 1;  // player sprite
    localparam SPRITE_FH_INDEX = 2;  // fail black hole
    localparam SPRITE_WH_INDEX = 3; // win green hole
    localparam SPRITE_BG_OFFSET = SPRITE_BG_INDEX * SPRITE_SIZE * SPRITE_SIZE;
    localparam SPRITE_BL_OFFSET = SPRITE_BL_INDEX * SPRITE_SIZE * SPRITE_SIZE;
    localparam SPRITE_FH_OFFSET = SPRITE_FH_INDEX * SPRITE_SIZE * SPRITE_SIZE;
    localparam SPRITE_BL_X = (SCREEN_WIDTH - SPRITE_SIZE) >> 1;     // centre
    localparam SPRITE_BL_Y = (SCREEN_HEIGHT - SPRITE_SIZE) >>1;     // centre

    //position of ball
    reg [9:0]bl_x=SPRITE_BL_X,bl_y=SPRITE_BL_Y;
    wire [9:0] rolling_x,rolling_y;
    
    //fail holes
    localparam MAX_FAILHOLE_NUM=5;
    reg [9:0]wh_pos_x=10'd200,wh_pos_y=10'd100;
    reg [10*(MAX_FAILHOLE_NUM)-1:0]fh_pos_x={10'd10,10'd50,10'd100,10'd200,10'd250};
    reg [10*(MAX_FAILHOLE_NUM)-1:0]fh_pos_y={10'd130,10'd25,10'd140,10'd50,10'd70};

    wire screenend;
    //vga controller
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
    
    wire is_game_playing;
    accelBallMove #(
        .SPRITE_BL_X(SPRITE_BL_X),
        .SPRITE_BL_Y(SPRITE_BL_Y),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .SCREEN_HEIGHT(SCREEN_HEIGHT),
        .PIXEL_COORD_BIT(PIXEL_COORD_BIT))
        moveTheBall(
        .CLK(CLK),
        .rst(game_rst),
        .screenend(screenend),
        .accel_x(accel_x[11:4]),
        .accel_y(accel_y[11:4]),
        .is_game_playing(is_game_playing),
        .bl_x(rolling_x),
        .bl_y(rolling_y)
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
        .i_rst(game_rst),
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
        .o_fail_each(LED[4:0])
    );


    //game control state machine
    localparam GAME_IDLE=4'h0;
    localparam GAME_PLAYING=4'h1;
    localparam GAME_FAIL=4'h2;
    localparam GAME_WIN=4'h3;
    localparam GAME_RESETING=4'h4;
    localparam GAME_RST=GAME_RESETING;

    reg [3:0] game_state=GAME_RST,game_state_next=GAME_RST;

    always @(posedge CLK) begin
        case (game_state)
            GAME_RESETING: begin
                game_state_next<=GAME_PLAYING;
                /*
                if(accel_data_ready)
                    game_state_next<=GAME_PLAYING;
                else
                    game_state_next<=GAME_RESETING;*/
            end
            GAME_PLAYING: begin
                if(playing_fail) 
                    game_state_next<=GAME_FAIL;
                else if(playing_win)
                    game_state_next<=GAME_WIN;
                else
                    game_state_next<=GAME_PLAYING;
            end
            default: game_state_next<=game_state;
        endcase
    end
    always @ (posedge CLK)
    begin
        if(game_rst) begin
            game_state<=GAME_RST;
        end
        else begin
            game_state<=game_state_next;
        end
    end

    always @(*) begin
        case (game_state)
            GAME_PLAYING: begin
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
            default: begin
                bl_x=SPRITE_BL_X;
                bl_y=SPRITE_BL_Y;
            end
        endcase
    end

    assign is_game_playing=(game_state==GAME_PLAYING);


endmodule