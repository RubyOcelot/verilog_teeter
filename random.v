module random(
    input i_clk,
    input i_rst,
    input [15:0]seed,
    output [15:0]rand_value,
);

reg [15:0] current_seed;

always @(posedge i_clk) begin
    if(i_rst) begin
        
    end
end


endmodule