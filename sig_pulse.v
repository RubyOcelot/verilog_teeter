module sig_pulse(
    input i_clk,
    input i_sig,
    output o_sig
);
    reg r1=0,r2=0;
    always @(posedge i_clk)begin
        r1<=i_sig;
        r2<=r1;
    end

    assign o_sig=r1&(~r2);

endmodule