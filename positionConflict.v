module positionConflict #(parameter
    RADIUS=16
    )
    (
    input i_clk,
    input i_rst,
    input i_decide_ena,
    input [9:0]i_bl_x,
    input [9:0]i_bl_y,
    input [9:0]i_hole_pos_x,
    input [9:0]i_hole_pos_y,
    output o_conflict
);

reg conflict=0;
assign o_conflict=conflict;


always @(posedge i_clk) begin
    if(i_rst) begin
        conflict<=0;
    end
    else begin 
        if (i_decide_ena) begin
            if((i_bl_x-i_hole_pos_x)*(i_bl_x-i_hole_pos_x)+
                        (i_bl_y-i_hole_pos_y)*(i_bl_y-i_hole_pos_y)<=RADIUS*RADIUS)
                conflict<=1;
        end
    end
end

endmodule