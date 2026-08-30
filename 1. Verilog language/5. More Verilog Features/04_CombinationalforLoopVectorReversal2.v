module top_module( 
    input [99:0] in,
    output reg [99:0] out
);
    always@(*) begin
        //for(int i=0;i<100;i=i+1)
             //out[99-i] = in[i];
        for(int i =0;i<$bits(in);i=i+1) 
            out[$bits(in)-i-1] = in[i];
    end
endmodule