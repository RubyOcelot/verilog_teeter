module simLayer();
reg clk,rst;
reg [9:0]bl_x,bl_y;
reg pix_stb;
wire screenend;
localparam MAX_FAILHOLE_NUM=5;
localparam VRAM_A_WIDTH=16;
localparam SPRITEBUF_A_WIDTH=13;
localparam SCREEN_WIDTH=320;
localparam SCREEN_HEIGHT=180;
localparam SPRITE_BG_OFFSET=0;
localparam SPRITE_FH_OFFSET=2;
localparam SPRITE_WH_OFFSET=3;
localparam SPRITE_BL_OFFSET=1;
localparam SPRITE_SIZE=32;
reg [9:0]wh_pos_x=10'd200,wh_pos_y=10'd100;
reg [10*(MAX_FAILHOLE_NUM)-1:0]fh_pos_x={10'd10,10'd50,10'd100,10'd200,10'd250};
reg [10*(MAX_FAILHOLE_NUM)-1:0]fh_pos_y={10'd130,10'd25,10'd140,10'd50,10'd70};
layerControl #(
    .VRAM_A_WIDTH(VRAM_A_WIDTH),
    .SPRITEBUF_A_WIDTH(SPRITEBUF_A_WIDTH),
    .SCREEN_WIDTH(SCREEN_WIDTH),
    .SCREEN_HEIGHT(SCREEN_HEIGHT),
    .SPRITE_BG_OFFSET(SPRITE_BG_OFFSET),
    .SPRITE_FH_OFFSET(SPRITE_FH_OFFSET),
    .SPRITE_WH_OFFSET(SPRITE_WH_OFFSET),
    .SPRITE_BL_OFFSET(SPRITE_BL_OFFSET),
    .SPRITE_SIZE(SPRITE_SIZE),
    .MAX_FAILHOLE_NUM(MAX_FAILHOLE_NUM)
    )
    test1(
    .CLK(clk),
    .rst(rst),
    .bl_x(bl_x),
    .bl_y(bl_y),
    .pix_stb(pix_stb),
    .screenend(screenend),
    .i_wh_pos_x(wh_pos_x),
    .i_wh_pos_y(wh_pos_y),
    .i_fh_pos_x(fh_pos_x),
    .i_fh_pos_y(fh_pos_y)
);

initial begin
    clk=0;
    rst=0;
    pix_stb=0;
    bl_x=10'd100;
    bl_y=0;
end

always #5clk=~clk;

reg [15:0] cnt=0;
always @(posedge clk)
    {pix_stb, cnt} <= cnt + 16'h4000; 

localparam WHOLE_FRAME=800*525;
reg [32:0]cnt_vga=0;
always @(posedge clk) begin
    if(pix_stb) begin
        if(cnt_vga<WHOLE_FRAME-1)
            cnt_vga<=cnt_vga+32'b1;
        else
            cnt_vga<=0;
    end
end
assign screenend=(cnt_vga==WHOLE_FRAME-1);

endmodule