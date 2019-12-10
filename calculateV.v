module calculateV #(
    parameter VELOCITY_SHIFT=8
)
    (
    input CLK,
    input i_calc_time,
    input i_rst_v,
    input [7:0]i_accel,
    output [31:0]o_velocity
);
    reg [31:0]velocity=0;
    assign o_velocity={{VELOCITY_SHIFT{velocity[31]}},velocity[31:VELOCITY_SHIFT]};
    always @(posedge CLK) begin
        if(i_rst_v) begin
            velocity<=0;
        end
        else if(i_calc_time)begin 
            velocity<=velocity+{{24{i_accel[7]}},i_accel};
        end

    end
endmodule