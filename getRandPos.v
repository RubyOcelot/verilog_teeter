module getRandPos #(parameter
    MAX_NUM=9,          //7 failholes
    POS_X_RANGE=320,
    POS_Y_RANGE=180
    )
    (
    input i_clk,
    input i_rst,
    input [15:0]rand_seed,
    output reg [MAX_NUM*20-1:0]o_rand_list,
    output o_data_ready
);

localparam GEN_RESETING=4'h0;
localparam GEN_GET_RAND=4'h1;
localparam GEN_DECIDE_RST=4'h2;
localparam GEN_DECIDE_ENA=4'h6;
localparam GEN_DECIDE_COLLECT=4'h3;
localparam GEN_SUCCESS=4'h4;
localparam GEN_DATA_READY=4'h5;
localparam GEN_RST=GEN_RESETING;

reg [3:0] gen_pos_state=GEN_RST;
reg [3:0] success_cnt=0,decide_cnt=0;
reg [15:0] rand_seed_cnt=0;
wire [15:0] rand_x,rand_y;
wire [9:0] pos_x,pos_y;
assign pos_x=(rand_x*POS_X_RANGE)>>16;
assign pos_y=(rand_y*POS_Y_RANGE)>>16;
reg [9:0]x_deciding,y_deciding;

assign o_data_ready=(gen_pos_state==GEN_DATA_READY);

always @(posedge i_clk) begin
/*
    if(i_rst)begin
        rand_seed_cnt <=rand_seed_cnt + 1;
    end
    else begin

    end*/
end

random #(
    .INITIAL_SEED(16'h2019)
    )
    randomX(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .seed(rand_seed),
    .o_rand_value(rand_x)
);

random #(
    .INITIAL_SEED(16'h1926)
    )
    randomY(
    .i_clk(i_clk),
    .i_rst(i_rst),
    .seed(rand_seed),
    .o_rand_value(rand_y)
);

wire is_conflict;
reg decide_ena=0;
reg [9:0]x_succeeded = 0,y_succeeded = 0;
wire is_decide_reseting;
assign is_decide_reseting=(gen_pos_state==GEN_DECIDE_RST); 

positionConflict #(
    .RADIUS(32)
    )
    genDecide(
    .i_clk(i_clk),
    .i_rst(is_decide_reseting),
    .i_decide_ena(decide_ena),
    .i_bl_x(x_deciding),
    .i_bl_y(y_deciding),
    .i_hole_pos_x(x_succeeded),
    .i_hole_pos_y(y_succeeded),
    .o_conflict(is_conflict)
);


always @(posedge i_clk) begin
    if(i_rst) begin
        gen_pos_state<=GEN_RST;
    end
    else begin
        case(gen_pos_state)
            GEN_RESETING:begin
                success_cnt<=0;
                decide_ena <=0;
                gen_pos_state<=GEN_GET_RAND;
            end
            GEN_GET_RAND: begin
                x_deciding <=pos_x;
                y_deciding <=pos_y;
                decide_cnt <=0;
                
                if(success_cnt>=MAX_NUM) begin
                    gen_pos_state<=GEN_DATA_READY;
                end
                else begin
                    if(success_cnt==0) 
                        gen_pos_state<=GEN_SUCCESS;
                    else
                        gen_pos_state<=GEN_DECIDE_RST;
                end
            end
            GEN_DECIDE_RST: begin
                if(decide_cnt<success_cnt) begin
                    decide_ena<=1;
                    case (decide_cnt)
                        4'h0: begin
                            x_succeeded<=o_rand_list[9:0];
                            y_succeeded<=o_rand_list[99:90];
                        end
                        4'h1: begin
                            x_succeeded<=o_rand_list[19:10];
                            y_succeeded<=o_rand_list[109:100];
                        end
                        4'h2: begin
                            x_succeeded<=o_rand_list[29:20];
                            y_succeeded<=o_rand_list[119:110];
                        end
                        4'h3: begin
                            x_succeeded<=o_rand_list[39:30];
                            y_succeeded<=o_rand_list[129:120];
                        end
                        4'h4: begin
                            x_succeeded<=o_rand_list[49:40];
                            y_succeeded<=o_rand_list[139:130];
                        end
                        4'h5: begin
                            x_succeeded<=o_rand_list[59:50];
                            y_succeeded<=o_rand_list[149:140];
                        end
                        4'h6: begin
                            x_succeeded<=o_rand_list[69:60];
                            y_succeeded<=o_rand_list[159:150];
                        end
                        4'h7: begin
                            x_succeeded<=o_rand_list[79:70];
                            y_succeeded<=o_rand_list[169:160];
                        end
                        4'h8: begin
                            x_succeeded<=o_rand_list[89:80];
                            y_succeeded<=o_rand_list[179:170];
                        end
                        default: begin
                            x_succeeded<=0;
                            y_succeeded<=0;
                        end
                    endcase
                    gen_pos_state<=GEN_DECIDE_ENA;
                end
                else begin
                    gen_pos_state<=GEN_SUCCESS;
                end
            end
            GEN_DECIDE_ENA: begin
                gen_pos_state<=GEN_DECIDE_COLLECT;
            end
            GEN_DECIDE_COLLECT: begin
                if(is_conflict) begin
                    gen_pos_state<=GEN_GET_RAND;
                end
                else begin
                    decide_cnt<=decide_cnt + 1;
                    gen_pos_state<=GEN_DECIDE_RST;
                end
            end
            GEN_SUCCESS: begin
                case (success_cnt)
                    4'h0: begin
                        o_rand_list[9:0]<=x_deciding;
                        o_rand_list[99:90]<=y_deciding;
                    end
                    4'h1: begin
                        o_rand_list[19:10]<=x_deciding;
                        o_rand_list[109:100]<=y_deciding;
                    end
                    4'h2: begin
                        o_rand_list[29:20]<=x_deciding;
                        o_rand_list[119:110]<=y_deciding;
                    end
                    4'h3: begin
                        o_rand_list[39:30]<=x_deciding;
                        o_rand_list[129:120]<=y_deciding;
                    end
                    4'h4: begin
                        o_rand_list[49:40]<=x_deciding;
                        o_rand_list[139:130]<=y_deciding;
                    end
                    4'h5: begin
                        o_rand_list[59:50]<=x_deciding;
                        o_rand_list[149:140]<=y_deciding;
                    end
                    4'h6: begin
                        o_rand_list[69:60]<=x_deciding;
                        o_rand_list[159:150]<=y_deciding;
                    end
                    4'h7: begin
                        o_rand_list[79:70]<=x_deciding;
                        o_rand_list[169:160]<=y_deciding;
                    end
                    4'h8: begin
                        o_rand_list[89:80]<=x_deciding;
                        o_rand_list[179:170]<=y_deciding;
                    end

                    default: begin
                    end
                endcase
                success_cnt<=success_cnt+1;
                gen_pos_state<=GEN_GET_RAND;
            end
            GEN_DATA_READY:begin
                if(success_cnt==0)
                    gen_pos_state<=GEN_RESETING;
                else
                    gen_pos_state<=GEN_DATA_READY;
            end
            default: gen_pos_state<=GEN_RST;
        endcase
    
    end
end

always @(posedge i_clk) begin
end

endmodule