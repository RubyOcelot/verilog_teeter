module random #(parameter
    INITIAL_SEED=16'h1314
    )
    (
    input i_clk,
    input i_rst,
    input [15:0]seed,
    output [15:0]o_rand_value,
);

reg [15:0] rand_value,rand_value_next;
initial rand_value = (INITIAL_SEED);
assign o_rand_value=rand_value;

wire feedback;
assign feedback = ~(rand_value[15] ^ rand_value[4]);
always @(*)
    rand_value_next={rand_value[14:0],feedback};
always @(posedge i_clk) begin
    if(i_rst) begin
        rand_value<=seed^INITIAL_SEED;
    end
    else begin
        rand_value<=rand_value_next;
    end
end

endmodule