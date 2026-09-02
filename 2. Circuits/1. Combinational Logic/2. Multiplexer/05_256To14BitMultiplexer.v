module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output reg [3:0] out 
);
    assign out = {in[sel*4+3'd3],in[sel*4+3'd2],in[sel*4+3'd1],in[sel*4+3'd0]};

endmodule