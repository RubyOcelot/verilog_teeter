module calculateX #(
        parameter
        POSITION_SHIFT=8,
        RST0_VALUE=50,
        RST1_VALUE=0,
        RST2_VALUE=100
    )
    (
    input CLK,
    input i_rst0,
    input i_rst1,
    input i_rst2,
    input i_calc_time,
    input [31:0]i_velocity,
    input [9:0]i_rst0_value,
    output [31:0]o_next_pos
);
    reg [31:0]next_pos=RST0_VALUE<<POSITION_SHIFT;
    assign o_next_pos={{POSITION_SHIFT{next_pos[31]}},next_pos[31:POSITION_SHIFT]};
    always @(posedge CLK) begin
        if(i_rst0) begin
            next_pos<=i_rst0_value<<POSITION_SHIFT;
        end
        else if(i_rst1) begin
            next_pos<=RST1_VALUE<<POSITION_SHIFT;
        end
        else if(i_rst2) begin
            next_pos<=RST2_VALUE<<POSITION_SHIFT;
        end
        else if(i_calc_time) begin
            next_pos<=next_pos+i_velocity;
        end
    end

endmodule