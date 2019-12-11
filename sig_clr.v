module sig_clr( 
    input i_clk, 
    input i_sig, 
    output o_sig 
); 
reg [3:0]   cnt=0; 
always@(posedge i_clk) begin     
    if(i_sig==1'b0)         
        cnt <= 4'h0;     
    else if(cnt<4'h8)         
        cnt <= cnt + 1'b1; 
end 

assign o_sig = cnt[3]; 

endmodule