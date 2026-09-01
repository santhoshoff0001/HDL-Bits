module top_module( 
    input [2:0] in,
    output reg [1:0] out );
    
    reg [1:0]temp;
     
    
    always@(*) begin
        temp = 2'b00;
        for(integer i =0;i<3;i=i+1) begin
            if(in[i]==1'b1)
                temp= temp+1'b1;
        end
        out = temp;
    end
    //using kmap for out[0] and out[1]
    //assign out[0] = (~in[2] & ~in[1] & in[0]) | (~in[2] & in[1] & ~in[0]) | (in[2] & ~in[1] & ~in[0]) | (in[2] & in[1] & in[0]);
    //assign out[1] = (in[1] & in[0]) | (in[2] & in[0]) | (in[2] & in[1]);
	
	
endmodule
