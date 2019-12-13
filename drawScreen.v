module drawScreenCtrl #(parameter
    VRAM_A_WIDTH=16,
    VRAM_D_WIDTH=8,
    VRAM_DEPTH=320*180,
    SCREEN_WIDTH=320,
    SCREEN_HEIGHT=180,
    SPRITE_SIZE=32,
    SPRITE_BG_INDEX=0,
    SPRITE_BL_INDEX=1,
    SPRITE_FH_INDEX=2,
    SPRITE_WH_INDEX=3,
    SPRITE_HD_INDEX=4,
    SPRITE_SEL_INDEX=6,
    SPRITE_MODE_INDEX=7,
    SPRITE_PAUSE_INDEX=8,
    SPRITEBUF_A_WIDTH=15,
    SPRITEBUF_D_WIDTH=8,
    SPRITEBUF_DEPTH=32*32*8,
    MAX_FAILHOLE_NUM=5
    )
(
    input CLK,
    input rst,
    input pix_stb,
    input [9:0]bl_x,
    input [9:0]bl_y,
    input [9:0]i_wh_pos_x,
    input [9:0]i_wh_pos_y,
    input theme_choose,
    input [10*(MAX_FAILHOLE_NUM)-1:0]i_fh_pos_x,
    input [10*(MAX_FAILHOLE_NUM)-1:0]i_fh_pos_y,
    input is_game_pause,
    input is_game_start_menu,
    input [2:0]i_select_pos,
    output [3:0]VGA_R,
    output [3:0]VGA_G,
    output [3:0]VGA_B,
    output VGA_HS_O,
    output VGA_VS_O,
    output o_screenend,
    output [10:0]o_led
);
/*
    localparam SPRITE_BL_OFFSET=SPRITE_BL_INDEX*SPRITE_SIZE*SPRITE_SIZE;
    localparam SPRITE_BG_OFFSET=SPRITE_BG_INDEX*SPRITE_SIZE*SPRITE_SIZE;
    localparam SPRITE_FH_OFFSET=SPRITE_FH_INDEX*SPRITE_SIZE*SPRITE_SIZE;
    localparam SPRITE_WH_OFFSET=SPRITE_WH_INDEX*SPRITE_SIZE*SPRITE_SIZE;*/

    wire [9:0] x;       // current pixel x position: 10-bit value: 0-1023
    wire [8:0] y;       // current pixel y position:  9-bit value: 0-511
    wire blanking;      // high within the blanking period
    wire active;        // high during active pixel drawing
    wire screenend;     // high for one tick at the end of screen
    wire animate;       // high for one tick at end of active drawing

    assign o_screenend=screenend;

    vga320x180 display (
        .i_clk(CLK), 
        .i_pix_stb(pix_stb),
        .i_rst(rst),
        .o_hs(VGA_HS_O), 
        .o_vs(VGA_VS_O), 
        .o_x(x), 
        .o_y(y),
        .o_blanking(blanking),
        .o_active(active),
        .o_screenend(screenend),
        .o_animate(animate)
    );

    localparam SCREEN_READING_A=1'b0;
    localparam SCREEN_READING_B=1'b1;
    reg screen_buf_choose_next=SCREEN_READING_B;
    reg [VRAM_A_WIDTH-1:0] address_a, address_b;
    reg [VRAM_D_WIDTH-1:0] datain_a, datain_b;
    wire [VRAM_D_WIDTH-1:0] dataout_a, dataout_b;
    reg we_a=0 , we_b=1  ;  // write enable bit


    // frame buffer A VRAM
    sram #(
        .ADDR_WIDTH(VRAM_A_WIDTH), 
        .DATA_WIDTH(VRAM_D_WIDTH), 
        .DEPTH(VRAM_DEPTH), 
        .MEMFILE("")) 
        vram_a (
        .i_addr(address_a), 
        .i_clk(CLK), 
        .i_write(we_a),
        .i_data(datain_a), 
        .o_data(dataout_a)
    );

    // frame buffer B VRAM
    sram #(
        .ADDR_WIDTH(VRAM_A_WIDTH), 
        .DATA_WIDTH(VRAM_D_WIDTH), 
        .DEPTH(VRAM_DEPTH), 
        .MEMFILE("")) 
        vram_b (
        .i_addr(address_b), 
        .i_clk(CLK), 
        .i_write(we_b),
        .i_data(datain_b), 
        .o_data(dataout_b)
    );
    wire [SPRITEBUF_A_WIDTH-1:0] address_s;
    wire [SPRITEBUF_D_WIDTH-1:0] dataout_s;
    wire [VRAM_A_WIDTH-1:0] address_screen;

   

    // sprite buffer memory
    sram #(
        .ADDR_WIDTH(SPRITEBUF_A_WIDTH), 
        .DATA_WIDTH(SPRITEBUF_D_WIDTH), 
        .DEPTH(SPRITEBUF_DEPTH), 
        .MEMFILE("balance2.mem"))
        spritebuf (
        .i_addr(address_s), 
        .i_clk(CLK), 
        .i_write(0),  // read only
        .i_data(0), 
        .o_data(dataout_s)
    );

    reg [11:0] palette [0:255];  // 256 x 12-bit colour palette entries
    reg [11:0] colour;
    initial begin
        $display("Loading palette.");
        $readmemh("balance2_palette.mem", palette);
    end


    wire dataout_alpha;        
    //sprite alpha buffer memory
    sram #(
        .ADDR_WIDTH(SPRITEBUF_A_WIDTH), 
        .DATA_WIDTH(1), 
        .DEPTH(SPRITEBUF_DEPTH), 
        .MEMFILE("balance2_alpha.mem"))
        spriteAlphabuf (
        .i_addr(address_s), 
        .i_clk(CLK), 
        .i_write(0),  // read only
        .i_data(0), 
        .o_data(dataout_alpha)
    );

    wire is_layer_drawing;        
    layerControl #(
        .VRAM_A_WIDTH(VRAM_A_WIDTH),
        .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
        .SCREEN_WIDTH(SCREEN_WIDTH),
        .SCREEN_HEIGHT(SCREEN_HEIGHT),
        .SPRITE_BG_INDEX(SPRITE_BG_INDEX),
        .SPRITE_FH_INDEX(SPRITE_FH_INDEX),
        .SPRITE_WH_INDEX(SPRITE_WH_INDEX),
        .SPRITE_BL_INDEX(SPRITE_BL_INDEX),
        .SPRITE_HD_INDEX(SPRITE_HD_INDEX),
        .SPRITE_SEL_INDEX(SPRITE_SEL_INDEX),
        .SPRITE_MODE_INDEX(SPRITE_MODE_INDEX),
        .SPRITE_PAUSE_INDEX(SPRITE_PAUSE_INDEX),
        .SPRITE_SIZE(SPRITE_SIZE),
        .MAX_FAILHOLE_NUM(MAX_FAILHOLE_NUM)
        )
        drawLayers(
        .CLK(CLK),
        .rst(rst),
        .bl_x(bl_x),
        .bl_y(bl_y),
        .pix_stb(pix_stb),
        .screenend(screenend),
        .i_wh_pos_x(i_wh_pos_x),
        .i_wh_pos_y(i_wh_pos_y),
        .i_fh_pos_x(i_fh_pos_x),
        .i_fh_pos_y(i_fh_pos_y),
        .is_game_start_menu(is_game_start_menu),
        .is_game_pause(is_game_pause),
        .i_select_pos(i_select_pos),
        .theme_choose(theme_choose),
        .o_address_screen(address_screen),
        .o_address_s(address_s),
        .o_is_layer_drawing(is_layer_drawing),
        .o_led(o_led)
    );


    always @ (posedge CLK)
    begin
        // reset drawing
        if (rst) begin 
            screen_buf_choose_next<=SCREEN_READING_B;
            we_a<=0;
            we_b<=1;
        end
        else begin
            if(is_layer_drawing) begin 
                if (screen_buf_choose_next==SCREEN_READING_A)// when output from B, drawing to A
                begin
                    address_a <= address_screen;
                    datain_a <= dataout_s;
                    we_a<=dataout_alpha;
                end
                else begin
                    address_b <= address_screen;
                    datain_b <= dataout_s;
                    we_b<=dataout_alpha;
                end
            end


            if (pix_stb)  // once per pixel
            begin
                if (screen_buf_choose_next==SCREEN_READING_A)//output from B
                begin
                    address_b <= y * SCREEN_WIDTH + x;
                    colour <= active ? palette[dataout_b] : 0;
                end
                else  // otherwise output from A
                begin
                    address_a <= y * SCREEN_WIDTH + x;
                    colour <= active ? palette[dataout_a] : 0;
                end

                if (screenend)  // switch active buffer once per frame
                begin
                    screen_buf_choose_next <= ~screen_buf_choose_next;
                    
                    we_a<=(screen_buf_choose_next==SCREEN_READING_B);
                    we_b<=(screen_buf_choose_next==SCREEN_READING_A);

                end
            end

        end
    end

    
    assign        VGA_R = colour[11:8];
    assign        VGA_G = colour[7:4];
    assign        VGA_B = colour[3:0];
endmodule
