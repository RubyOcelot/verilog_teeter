module simtop();
reg clk,rst,new_game_rst,again_rst;
reg [3:0]sw;
reg ACL_MISO;
top test1(
    .CLK(clk),
    .RST_BTN(rst),
    .NEW_GAME_BTN(new_game_rst),
    .AGAIN_BTN(again_rst),
    .ACL_MISO(ACL_MISO)
);
initial begin
    clk=0;
    rst=0;
    new_game_rst=0;
    again_rst=0;
    ACL_MISO=0;
end

always #5 clk=~clk;
initial begin
    #10000 rst=1;
    #100 rst=0;
    #10000 new_game_rst=1;
    #100 new_game_rst=0;
    #10000 again_rst=1;
    #100 again_rst=0;
end

endmodule