module layerControl #(parameter
    VRAM_A_WIDTH=0,
    SPRITEBUF_A_WIDTH=15,
    SCREEN_WIDTH=320,
    SCREEN_HEIGHT=180,
    SPRITE_BG_INDEX=0,
    SPRITE_FH_INDEX=2,
    SPRITE_WH_INDEX=3,
    SPRITE_BL_INDEX=1,
    SPRITE_HD_INDEX=4,
    SPRITE_SEL_INDEX=6,
    SPRITE_MODE_INDEX=7,
    SPRITE_PAUSE_INDEX=8,
    SPRITE_SIZE=32,
    MAX_FAILHOLE_NUM=7
    )
    (
    input CLK,
    input rst,
    input [9:0]bl_x,
    input [9:0]bl_y,
    input pix_stb,
    input screenend,
    input [9:0]i_wh_pos_x,
    input [9:0]i_wh_pos_y,
    input [10*(MAX_FAILHOLE_NUM)-1:0]i_fh_pos_x,
    input [10*(MAX_FAILHOLE_NUM)-1:0]i_fh_pos_y,
    input theme_choose,
    input is_game_start_menu,
    input is_game_pause,
    input [2:0]i_select_pos,
    output [VRAM_A_WIDTH-1:0] o_address_screen,
    output [SPRITEBUF_A_WIDTH-1:0] o_address_s,
    output o_is_layer_drawing,
    output [10:0]o_led
);

    localparam LAYER_IDLE=4'h3;
    localparam LAYER_BACKGROUND=4'h0;
    localparam LAYER_FAILHOLE=4'h1;
    localparam LAYER_WINHOLE=4'h2;
    localparam LAYER_BALL=4'h4;
    localparam LAYER_HEADING1=4'h6;
    localparam LAYER_HEADING2=4'h9;
    localparam LAYER_OPTION=4'h7;
    localparam LAYER_SELECT=4'h8;
    localparam LAYER_RESETING=4'h5;
    localparam LAYER_RST=LAYER_IDLE;

    reg [3:0] layer_state=LAYER_RESETING;
    wire bg_layer_end,wh_layer_end,bl_layer_end,hd_layer_end_1,hd_layer_end_2,
                op_layer_end,sel_layer_end;
    reg fh_layer_end=0;
    reg [7:0]test_cnt = 0;
    
    //layer state machine
    always @(posedge CLK) begin
        if (rst) begin
            layer_state<=LAYER_RST;
        end
        else begin
            case(layer_state) 
                LAYER_BACKGROUND: begin
                    if(bg_layer_end) begin
                        if(is_game_start_menu) begin
                            layer_state<=LAYER_BALL;
                        end
                        else begin
                            layer_state<=LAYER_FAILHOLE;
                        end
                    end
                    else layer_state<=LAYER_BACKGROUND;
                end
                LAYER_FAILHOLE: begin
                    if (fh_layer_end) begin
                        layer_state<=LAYER_WINHOLE;
                    end
                    else begin
                        layer_state<=LAYER_FAILHOLE;
                    end
                end
                LAYER_WINHOLE: begin
                    if(wh_layer_end) begin
                        layer_state<=LAYER_BALL;
                    end
                    else begin
                        layer_state<=LAYER_WINHOLE;
                    end
                end
                LAYER_BALL: begin
                    if(bl_layer_end) begin
                        if(is_game_start_menu)begin
                            layer_state<=LAYER_HEADING1;
                        end
                        else if(is_game_pause)begin
                            layer_state<=LAYER_OPTION;
                        end
                        else begin
                            layer_state<=LAYER_IDLE;
                        end
                    end
                    else
                        layer_state<=LAYER_BALL;
                end
                LAYER_HEADING1:begin
                   // test_cnt<=test_cnt+4'h1;
                    if(hd_layer_end_1)
                        layer_state<=LAYER_HEADING2;
                    else
                        layer_state<=LAYER_HEADING1; 
                end
                
                LAYER_HEADING2:begin
                    if(hd_layer_end_2)
                        layer_state<=LAYER_OPTION;
                    else
                        layer_state<=LAYER_HEADING2; 
                end
                LAYER_OPTION: begin
                    if(op_layer_end)
                        layer_state<=LAYER_SELECT;
                    else
                        layer_state<=LAYER_OPTION;
                end
                LAYER_SELECT: begin
                    if(sel_layer_end)
                        layer_state<=LAYER_IDLE;
                    else
                        layer_state<=LAYER_SELECT;
                end
                LAYER_IDLE: begin
                    if(screenend)
                        layer_state<=LAYER_RESETING;
                    else
                        layer_state<=LAYER_IDLE;
                end
                LAYER_RESETING: begin
                    if(!bg_layer_end)
                        layer_state<=LAYER_BACKGROUND;
                    else
                        layer_state<=LAYER_RESETING;
                end
                default begin
                    layer_state<=LAYER_RST;
                end
            endcase
        end
    end
    

    // screen address mux 
    reg [VRAM_A_WIDTH-1:0]address_screen;
    wire [VRAM_A_WIDTH-1:0]bg_address_screen;
    wire [VRAM_A_WIDTH-1:0]fh_address_screen;
    wire [VRAM_A_WIDTH-1:0]wh_address_screen;
    wire [VRAM_A_WIDTH-1:0]bl_address_screen;
    wire [VRAM_A_WIDTH-1:0]hd_address_screen_1;
    wire [VRAM_A_WIDTH-1:0]hd_address_screen_2;
    wire [VRAM_A_WIDTH-1:0]op_address_screen;
    wire [VRAM_A_WIDTH-1:0]sel_address_screen;

    assign o_address_screen=address_screen;
    always @(*) begin
        case(layer_state)
            LAYER_BACKGROUND:   address_screen=bg_address_screen;
            LAYER_FAILHOLE:     address_screen=fh_address_screen;
            LAYER_WINHOLE:      address_screen=wh_address_screen;
            LAYER_BALL:         address_screen=bl_address_screen;
            LAYER_HEADING1:     address_screen=hd_address_screen_1;
            LAYER_HEADING2:     address_screen=hd_address_screen_2;
            LAYER_OPTION:       address_screen=op_address_screen;
            LAYER_SELECT:       address_screen=sel_address_screen;
            default:            address_screen=0;
        endcase
    end

    //sprite address mux
    reg [SPRITEBUF_A_WIDTH-1:0] address_s;
    wire [SPRITEBUF_A_WIDTH-1:0] bg_address_s;
    wire [SPRITEBUF_A_WIDTH-1:0] fh_address_s;
    wire [SPRITEBUF_A_WIDTH-1:0] wh_address_s;
    wire [SPRITEBUF_A_WIDTH-1:0] bl_address_s;
    wire [SPRITEBUF_A_WIDTH-1:0] hd_address_s_1;
    wire [SPRITEBUF_A_WIDTH-1:0] hd_address_s_2;
    wire [SPRITEBUF_A_WIDTH-1:0] op_address_s;
    wire [SPRITEBUF_A_WIDTH-1:0] sel_address_s;

    assign o_address_s =address_s;
    always @(*) begin
        case(layer_state)
            LAYER_BACKGROUND:   address_s=bg_address_s;
            LAYER_FAILHOLE:     address_s=fh_address_s;
            LAYER_WINHOLE:      address_s=wh_address_s;
            LAYER_BALL:         address_s=bl_address_s;
            LAYER_HEADING1:     address_s=hd_address_s_1;
            LAYER_HEADING2:     address_s=hd_address_s_2;
            LAYER_OPTION:       address_s=op_address_s;
            LAYER_SELECT:       address_s=sel_address_s;
            default:            address_s=0;
        endcase
    end
    
    wire is_bg_layer_state;
    wire is_fh_layer_state;
    wire is_wh_layer_state;
    wire is_bl_layer_state;
    wire is_hd_layer_state_1;
    wire is_hd_layer_state_2;
    wire is_op_layer_state;
    wire is_sel_layer_state;  
    
    assign is_bg_layer_state=(layer_state==LAYER_BACKGROUND);
    assign is_fh_layer_state=(layer_state==LAYER_FAILHOLE);
    assign is_wh_layer_state=(layer_state==LAYER_WINHOLE);
    assign is_bl_layer_state=(layer_state==LAYER_BALL);
    assign is_hd_layer_state_1=(layer_state==LAYER_HEADING1);
    assign is_hd_layer_state_2=(layer_state==LAYER_HEADING2);
    assign is_op_layer_state=(layer_state==LAYER_OPTION);
    assign is_sel_layer_state=(layer_state==LAYER_SELECT);
    assign o_is_layer_drawing=(layer_state!=LAYER_IDLE)&&(layer_state!=LAYER_RESETING);

/*
    assign o_led[9]=is_bg_layer_state;
    assign o_led[8]=is_fh_layer_state;
    assign o_led[7]=is_wh_layer_state;
    assign o_led[6]=is_bl_layer_state;
    assign o_led[5:2]=fh_cnt;
    assign o_led[1]=new_frame;
    assign o_led[0]=new_layer;*/

    //assign o_led[8:1]=test_cnt;
    assign o_led[3:1]=i_select_pos;
    assign o_led[0]=is_game_start_menu;


    reg ena=1;
    wire new_frame;
    assign new_frame=pix_stb&screenend;

    reg [9:0]bg_pos_x=10'b0,bg_pos_y=10'b0;

    wire [9:0] bg_pix_x,bg_pix_y,bg_pix_y_mod,bg_pix_x_mod;
    assign bg_pix_x_mod={{5'b0},bg_pix_x[4:0]};
    assign bg_pix_y_mod={{5'b0},bg_pix_y[4:0]};
    drawLayer #(
        .PIX_WIDTH(SCREEN_WIDTH+1),
        .PIX_HEIGHT(SCREEN_HEIGHT),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .VRAM_A_WIDTH(VRAM_A_WIDTH)
        )
        drawBackground(
        .CLK(CLK),
        .rst(rst),
        .ena(ena),
        .is_cur_state(is_bg_layer_state),
        .i_sprite_pix_x(bg_pix_x_mod),
        .i_sprite_pix_y(bg_pix_y_mod),
        .i_layer_rst(new_frame),
        .theme_choose(theme_choose),
        .screen_pos_x(bg_pos_x),
        .screen_pos_y(bg_pos_y),
        .o_address_s(bg_address_s),
        .address_screen(bg_address_screen),
        .o_pix_x(bg_pix_x),
        .o_pix_y(bg_pix_y),
        .o_layerend(bg_layer_end),
        .i_sprite_index(SPRITE_BG_INDEX)
    );


    reg [3:0]fh_cnt=0;
    wire [9:0] fh_pix_x,fh_pix_y;
    reg [9:0] fh_pos_x,fh_pos_y;
    reg new_layer=0;
    wire fh_sub_layer_end;
   
   // assign fh_pos_x=array_fh_pos_x[fh_cnt];
   // assign fh_pos_y=array_fh_pos_y[fh_cnt];
    always @(*) begin
        case (fh_cnt)
            4'h0: begin
                fh_pos_x=i_fh_pos_x[9:0];
                fh_pos_y=i_fh_pos_y[9:0];
            end
            4'h1: begin
                fh_pos_x=i_fh_pos_x[19:10];
                fh_pos_y=i_fh_pos_y[19:10];
            end
            4'h2: begin
                fh_pos_x=i_fh_pos_x[29:20];
                fh_pos_y=i_fh_pos_y[29:20];
            end
            4'h3: begin
                fh_pos_x=i_fh_pos_x[39:30];
                fh_pos_y=i_fh_pos_y[39:30];
            end
            4'h4: begin
                fh_pos_x=i_fh_pos_x[49:40];
                fh_pos_y=i_fh_pos_y[49:40];
            end
            4'h5: begin
                fh_pos_x=i_fh_pos_x[59:50];
                fh_pos_y=i_fh_pos_y[59:50];
            end
            4'h6: begin
                fh_pos_x=i_fh_pos_x[69:60];
                fh_pos_y=i_fh_pos_y[69:60];
            end
            default: begin
                fh_pos_x=0;
                fh_pos_y=0;
            end
        endcase
    end

    always @(posedge CLK) begin
        if (rst) begin
            fh_cnt<=0;
        end
        else begin
            if (new_frame) begin
                new_layer<=1'b1;
                fh_cnt<=0;
                fh_layer_end<=0;
            end
            else if(is_fh_layer_state) begin
                if(fh_sub_layer_end) begin
                    
                     //fh_cnt start with 0
                    if(fh_cnt<MAX_FAILHOLE_NUM) begin
                        if(!new_layer) begin
                            fh_cnt<=fh_cnt+4'h1;
                            new_layer<=1'b1;
                        end
                    end
                    else begin
                        fh_layer_end<=1'b1;
                    end
                end
                else begin
                    new_layer<=0;
                end
            end
            else begin
                new_layer<=0;
            end
        end 
    end
    
    drawLayer #(
        .PIX_WIDTH(SPRITE_SIZE),
        .PIX_HEIGHT(SPRITE_SIZE),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .VRAM_A_WIDTH(VRAM_A_WIDTH)
        )
        drawFailhole(
        .CLK(CLK),
        .rst(rst),
        .ena(ena),
        .is_cur_state(is_fh_layer_state),
        .i_sprite_pix_x(fh_pix_x),
        .i_sprite_pix_y(fh_pix_y),
        .i_layer_rst(new_layer),
        .theme_choose(theme_choose),
        .screen_pos_x(fh_pos_x),
        .screen_pos_y(fh_pos_y),
        .o_address_s(fh_address_s),
        .address_screen(fh_address_screen),
        .o_pix_x(fh_pix_x),
        .o_pix_y(fh_pix_y),
        .o_layerend(fh_sub_layer_end),
        .i_sprite_index(SPRITE_FH_INDEX)
    );

    

    
    wire [9:0] wh_pix_x,wh_pix_y;
    drawLayer #(
        .PIX_WIDTH(SPRITE_SIZE),
        .PIX_HEIGHT(SPRITE_SIZE),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .VRAM_A_WIDTH(VRAM_A_WIDTH)
        )
        drawWinhole(
        .CLK(CLK),
        .rst(rst),
        .ena(ena),
        .is_cur_state(is_wh_layer_state),
        .i_sprite_pix_x(wh_pix_x),
        .i_sprite_pix_y(wh_pix_y),
        .i_layer_rst(new_frame),
        .theme_choose(theme_choose),
        .screen_pos_x(i_wh_pos_x),
        .screen_pos_y(i_wh_pos_y),
        .o_address_s(wh_address_s),
        .address_screen(wh_address_screen),
        .o_pix_x(wh_pix_x),
        .o_pix_y(wh_pix_y),
        .o_layerend(wh_layer_end),
        .i_sprite_index(SPRITE_WH_INDEX)
    );

    wire [9:0] bl_pix_x,bl_pix_y;
    drawLayer #(
        .PIX_WIDTH(SPRITE_SIZE),
        .PIX_HEIGHT(SPRITE_SIZE),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .VRAM_A_WIDTH(VRAM_A_WIDTH)
        )
        drawBall(
        .CLK(CLK),
        .rst(rst),
        .ena(ena),
        .is_cur_state(is_bl_layer_state),
        .i_sprite_pix_x(bl_pix_x),
        .i_sprite_pix_y(bl_pix_y),
        .i_layer_rst(new_frame),
        .theme_choose(theme_choose),
        .screen_pos_x(bl_x),
        .screen_pos_y(bl_y),
        .o_address_s(bl_address_s),
        .address_screen(bl_address_screen),
        .o_pix_x(bl_pix_x),
        .o_pix_y(bl_pix_y),
        .o_layerend(bl_layer_end),
        .i_sprite_index(SPRITE_BL_INDEX)
    );



    wire [9:0] hd_pix_x_1,hd_pix_y_1;
   
    localparam HD_POS_X_1=4*SPRITE_SIZE;
    localparam HD_POS_Y_1=1*SPRITE_SIZE;
    
    drawLayer #(
        .PIX_WIDTH(SPRITE_SIZE),
        .PIX_HEIGHT(SPRITE_SIZE),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .VRAM_A_WIDTH(VRAM_A_WIDTH)
        )
        drawHeading1(
        .CLK(CLK),
        .rst(rst),
        .ena(ena),
        .is_cur_state(is_hd_layer_state_1),
        .i_sprite_pix_x(hd_pix_x_1),
        .i_sprite_pix_y(hd_pix_y_1),
        .i_layer_rst(new_frame),
        .theme_choose(theme_choose),
        .screen_pos_x(HD_POS_X_1),
        .screen_pos_y(HD_POS_Y_1),
        .o_address_s(hd_address_s_1),
        .address_screen(hd_address_screen_1),
        .o_pix_x(hd_pix_x_1),
        .o_pix_y(hd_pix_y_1),
        .o_layerend(hd_layer_end_1),
        .i_sprite_index(SPRITE_HD_INDEX)
    );

    wire [9:0] hd_pix_x_2,hd_pix_y_2;
   
    localparam HD_POS_X_2=HD_POS_X_1+SPRITE_SIZE;
    localparam HD_POS_Y_2=HD_POS_Y_1;
    
    
    drawLayer #(
        .PIX_WIDTH(SPRITE_SIZE),
        .PIX_HEIGHT(SPRITE_SIZE),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .VRAM_A_WIDTH(VRAM_A_WIDTH)
        )
        drawHeading2(
        .CLK(CLK),
        .rst(rst),
        .ena(ena),
        .is_cur_state(is_hd_layer_state_2),
        .i_sprite_pix_x(hd_pix_x_2),
        .i_sprite_pix_y(hd_pix_y_2),
        .i_layer_rst(new_frame),
        .theme_choose(theme_choose),
        .screen_pos_x(HD_POS_X_2),
        .screen_pos_y(HD_POS_Y_2),
        .o_address_s(hd_address_s_2),
        .address_screen(hd_address_screen_2),
        .o_pix_x(hd_pix_x_2),
        .o_pix_y(hd_pix_y_2),
        .o_layerend(hd_layer_end_2),
        .i_sprite_index(SPRITE_HD_INDEX+1)
    );
    
    reg [3:0]sprite_op_index=0;
    always @(*) begin
        if(is_game_start_menu) begin
            sprite_op_index=SPRITE_MODE_INDEX;
        end
        else if(is_game_pause)begin
            sprite_op_index=SPRITE_PAUSE_INDEX;
        end
        else begin
            sprite_op_index=0;
        end
    end

    localparam OP_POS_X=HD_POS_X_1+(SPRITE_SIZE>>1);
    localparam OP_POS_Y=HD_POS_Y_1+(SPRITE_SIZE);
    localparam SEL_POS_X=OP_POS_X;

    wire [9:0]select_offset;
    assign select_offset={4'h0,i_select_pos,3'h0}-{7'h0,i_select_pos};

    wire [9:0]se_y;
    assign se_y=OP_POS_Y+select_offset;

    wire [9:0] sel_pix_x,sel_pix_y;
    drawLayer #(
        .PIX_WIDTH(SPRITE_SIZE),
        .PIX_HEIGHT(SPRITE_SIZE),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .VRAM_A_WIDTH(VRAM_A_WIDTH)
        )
        drawSelect(
        .CLK(CLK),
        .rst(rst),
        .ena(ena),
        .is_cur_state(is_sel_layer_state),
        .i_sprite_pix_x(sel_pix_x),
        .i_sprite_pix_y(sel_pix_y),
        .i_layer_rst(new_frame),
        .theme_choose(theme_choose),
        .screen_pos_x(SEL_POS_X),
        .screen_pos_y(se_y),
        .o_address_s(sel_address_s),
        .address_screen(sel_address_screen),
        .o_pix_x(sel_pix_x),
        .o_pix_y(sel_pix_y),
        .o_layerend(sel_layer_end),
        .i_sprite_index(SPRITE_SEL_INDEX)
    );

    wire [9:0] op_pix_x,op_pix_y;
    drawLayer #(
        .PIX_WIDTH(SPRITE_SIZE),
        .PIX_HEIGHT(SPRITE_SIZE),
        .SPRITE_SIZE(SPRITE_SIZE),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .VRAM_A_WIDTH(VRAM_A_WIDTH)
        )
        drawOption(
        .CLK(CLK),
        .rst(rst),
        .ena(ena),
        .is_cur_state(is_op_layer_state),
        .i_sprite_pix_x(op_pix_x),
        .i_sprite_pix_y(op_pix_y),
        .i_layer_rst(new_frame),
        .theme_choose(theme_choose),
        .screen_pos_x(OP_POS_X),
        .screen_pos_y(OP_POS_Y),
        .o_address_s(op_address_s),
        .address_screen(op_address_screen),
        .o_pix_x(op_pix_x),
        .o_pix_y(op_pix_y),
        .o_layerend(op_layer_end),
        .i_sprite_index(sprite_op_index)
    );

    
endmodule