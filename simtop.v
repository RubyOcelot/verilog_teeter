module simtop();
reg clk,rst;
reg [3:0]sw;
reg ACL_MISO;
top test1(
    .CLK(clk),
    .RST_BTN(rst),
    .GAME_RESTART_BTN(rst),
    .ACL_MISO(ACL_MISO)
);
initial begin
    clk=0;
    rst=0;
    sw=4'h0;
    ACL_MISO=0;
end

always #5 clk=~clk;
initial begin
    #10000 rst=1;
    #100 rst=0;
    #10000000 rst=1;
    #100 rst=0;
end

endmodule