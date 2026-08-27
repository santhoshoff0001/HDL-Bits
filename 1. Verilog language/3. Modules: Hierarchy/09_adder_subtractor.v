module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b_xor_sub;
    wire o1;
    assign b_xor_sub = b^{32{sub}};
    add16 lower (a[15:0],b_xor_sub[15:0],sub,sum[15:0],o1);
    add16 upper (a[31:16],b_xor_sub[31:16],o1,sum[31:16],1'b0);
    
endmodule
