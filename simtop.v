module simtop();
reg clk,rst,new_game_rst,again_rst;
reg [3:0]sw;
reg ACL_MISO;
reg up_btn,down_btn;
top test1(
    .CLK(clk),
    .RST_BTN(rst),
    .NEW_GAME_BTN(new_game_rst),
    .AGAIN_BTN(again_rst),
    .ACL_MISO(ACL_MISO),
    .UP_BTN(up_btn),
    .DOWN_BTN(down_btn)
);
initial begin
    clk=0;
    rst=0;
    new_game_rst=0;
    again_rst=0;
    ACL_MISO=0;
    up_btn=0;
    down_btn=0;
end

always #5 clk=~clk;
initial begin
    #1000 down_btn=1;
    #1000 down_btn=0;
    #1000 up_btn=1;
    #1000 up_btn=0;
end

endmodule