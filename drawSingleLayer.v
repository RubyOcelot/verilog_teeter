module drawLayer #(
    PIX_WIDTH=0,
    PIX_HEIGHT=0,
    SPRITE_INDEX=0,
    SPRITE_SIZE=0,
    SPRITEBUF_A_WIDTH=13,
    SCREEN_WIDTH=0,
    VRAM_A_WIDTH=16
    )
    (
    input CLK,
    input rst,
    input ena,
    input is_cur_state,
    input [9:0]i_sprite_pix_x,
    input [9:0]i_sprite_pix_y,
    input i_layer_rst,
    input [9:0]screen_pos_x,    //left
    input [9:0]screen_pos_y,    //top
    input theme_choose,
    output reg [SPRITEBUF_A_WIDTH-1:0]address_s,
    output [VRAM_A_WIDTH-1:0]address_screen,
    output [9:0]o_pix_x,
    output [9:0]o_pix_y,
    output o_layerend
);

reg [9:0]pix_x=0,pix_y=0;
assign o_pix_x=pix_x;
assign o_pix_y=pix_y;

// pipeline registers for for address calculation
reg [VRAM_A_WIDTH-1:0] address_fb1;  
reg [VRAM_A_WIDTH-1:0] address_fb2;

assign address_screen=address_fb2;
assign o_layerend=(pix_y>=PIX_HEIGHT);



always @ (posedge CLK)
begin
    // reset drawing
    if (rst)
    begin 
        pix_x <=0;
        pix_y <=0;
        address_fb1<=0;
    end
    else if(ena) begin
        // draw background
        
        if(i_layer_rst)begin
            pix_x<=0;
            pix_y<=0;
            address_fb1<=0;
        end
        else begin
            if (is_cur_state)
            begin
                if (pix_x < PIX_WIDTH-1)
                    pix_x <= pix_x + 1;
                else if(pix_y < PIX_HEIGHT) begin
                    pix_x <= 0;
                    pix_y <= pix_y + 1;
                end
                // calculate address of sprite and frame buffer (with pipeline)
                address_s <= (SPRITE_SIZE *2* (i_sprite_pix_y+SPRITE_SIZE*SPRITE_INDEX)) + 
                                i_sprite_pix_x+SPRITE_SIZE*theme_choose;
                address_fb1 <= SCREEN_WIDTH * (pix_y + screen_pos_y) + 
                            pix_x + screen_pos_x;
                address_fb2 <= address_fb1;
            end
        end
        
    end
end

endmodule