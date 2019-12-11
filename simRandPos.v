module simRandPos();
reg clk,rst;
wire data_ready;

getRandPos test1(
    .i_clk(clk),
    .i_rst(rst),
    .o_data_ready(data_ready)
);

initial begin
    rst=0;
    clk=0;
    #3000 rst=1;
    #324 rst=0;
end
always #5 clk=~clk;



endmodule