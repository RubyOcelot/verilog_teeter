module getRandPos #(parameter
    MAX_NUM=7
    )
    (
    input i_clk,
    input i_rst,
    input [3:0]i_num,
);

localparam GEN_RESETING=4'h0;
localparam GEN_GET_RAND=4'h1;
localparam GEN_DECIDE=4'h2;
localparam GEN_RST=GEN_RESETING;
reg [3:0] gen_pos_state=GEN_RST,gen_pos_state_next=GEN_RST;
reg [3:0] success_cnt=0;
reg [15:0] rand_seed_cnt=0;

always @(posedge i_clk) begin
    if(i_rst)begin
        success_cnt<=0;
        rand_seed_cnt <=rand_seed_cnt + 1;
    end
    else begin

    end
end

random #(
    .INITIAL_SEED(16'h2019)
    )
    randomX(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .seed(rand_seed_cnt),
    .o_rand_value(rand_x)
);



always @(posedge i_clk) begin
    case(gen_pos_state)
        GEN_RESETING:begin
            if(success_cnt==0) begin
                gen_pos_state_next<=GEN_GET_RAND;
            end
        end
        GEN_GET_RAND: begin

        end
        GEN_DECIDE: begin

        end
        default: gen_pos_state_next<=GEN_RST;
    endcase
end

always @(posedge i_clk) begin
    if(i_rst) begin
        gen_pos_state<=GEN_RST;
    end
    else begin
        gen_pos_state<=gen_pos_state_next;
    end
end

endmodule