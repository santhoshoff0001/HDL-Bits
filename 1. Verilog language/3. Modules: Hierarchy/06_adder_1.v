module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1,w2;
    add16 lower (a[15:0],b[15:0],1'b0,sum[15:0],w1);
    add16 upper (a[31:16],b[31:16],w1,sum[31:16],1'b0);

endmodule
