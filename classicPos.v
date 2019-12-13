module fixPos #(parameter
    LIST_LENGTH=180
    )
    (
    input [3:0]level,	
    output reg[LIST_LENGTH-1:0]pos_list
);

reg [LIST_LENGTH*10-1:0]list_store={
    //bl fh wh
     10'd0,		10'd0,		10'd74,		10'd74,		10'd74,		10'd42,		10'd42,		10'd106,	10'd106,	      //y
     10'd0,		10'd288,	10'd144,	10'd112,	10'd176,	10'd128,	10'd160,	10'd128,	10'd160,	  //x

     10'd148,	10'd0,		10'd0,		10'd0,		10'd0,		10'd148,	10'd148,	10'd148,	10'd50,	      //y
     10'd0,		10'd288,	10'd0,		10'd72,		10'd144,	10'd144,	10'd216,	10'd288,	10'd0,	  //x

     10'd74,	10'd25,		10'd25,		10'd75,		10'd75,		10'd105,	10'd105,	10'd120,	10'd120,	      //y
     10'd144,	10'd100,	10'd188,	10'd64,		10'd224,	10'd96,		10'd192,	10'd126,	10'd162,	  //x

     10'd0,		10'd0,		10'd148,	10'd148,	10'd0,		10'd74,		10'd148,	10'd0,		10'd0,	      //y
     10'd0,		10'd288,	10'd0,		10'd288,	10'd144,	10'd144,	10'd144,	10'd72,		10'd216,	  //x

     10'd74,	10'd74,		10'd74,		10'd42,		10'd106,	10'd0,		10'd148,	10'd0,		10'd148,	      //y
     10'd50,	10'd238,	10'd206,	10'd222,	10'd222,	10'd0,		10'd0,		10'd288,	10'd288,	  //x

     10'd118,	10'd30,		10'd74,		10'd74,		10'd74,		10'd74,		10'd74,		10'd74,		10'd0,	      //y
     10'd228,	10'd60,		10'd0,		10'd57,		10'd114,	10'd171,	10'd228,	10'd285,	10'd0,	 	 //x

     10'd0,		10'd95,		10'd148,	10'd148,	10'd119,	10'd90,		10'd60,		10'd30,		10'd0,	      //y
     10'd0,		10'd230,	10'd288,	10'd0,		10'd57,		10'd114,	10'd171,	10'd228,	10'd285,	  //x

     10'd20,	10'd148,	10'd84,		10'd20,		10'd148,	10'd84,		10'd20,		10'd148,	10'd84,	      //y
     10'd160,	10'd288,	10'd288,	10'd288,	10'd224,	10'd224,	10'd224,	10'd160,	10'd160,	  //x

     10'd140,	10'd100,	10'd100,	10'd100,	10'd128,	10'd128,	10'd72,		10'd50,		10'd0,	      //y
     10'd20,	10'd220,	10'd252,	10'd188,	10'd204,	10'd236,	10'd204,	10'd288,	10'd220,	  //x 

     10'd32,	10'd100,	10'd32,		10'd32,		10'd60,		10'd60,		10'd4,		10'd0,		10'd148,	      //y
     10'd64,	10'd200,	10'd32,		10'd96,		10'd48,		10'd80,		10'd80,		10'd0,		10'd32	  //x 

 };



always @(*) begin
	case(level)
		4'h0:pos_list=list_store[10*LIST_LENGTH-1:9*LIST_LENGTH];
		4'h1:pos_list=list_store[9*LIST_LENGTH-1:8*LIST_LENGTH];
		4'h2:pos_list=list_store[8*LIST_LENGTH-1:7*LIST_LENGTH];
		4'h3:pos_list=list_store[7*LIST_LENGTH-1:6*LIST_LENGTH];
		4'h4:pos_list=list_store[6*LIST_LENGTH-1:5*LIST_LENGTH];
		4'h5:pos_list=list_store[5*LIST_LENGTH-1:4*LIST_LENGTH];
		4'h6:pos_list=list_store[4*LIST_LENGTH-1:3*LIST_LENGTH];
		4'h7:pos_list=list_store[3*LIST_LENGTH-1:2*LIST_LENGTH];
		4'h8:pos_list=list_store[2*LIST_LENGTH-1:1*LIST_LENGTH];
		4'h9:pos_list=list_store[1*LIST_LENGTH-1:0*LIST_LENGTH];
		default:pos_list=0;
	endcase
end

endmodule