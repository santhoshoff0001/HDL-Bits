module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire o1_low;
    wire [15:0] o0_up,o1_up;
    
    add16 lower(a[15:0],b[15:0],1'b0,sum[15:0],o1_low);
    
    add16 upper0(a[31:16],b[31:16],1'b0,o0_up,1'b0);
    add16 upper1(a[31:16],b[31:16],1'b1,o1_up,1'b0);
    
    always@(o1_low) begin
        case(o1_low)
        	1'b0 : sum[31:16] = o0_up;
            1'b1 : sum[31:16] = o1_up;
        endcase
    end
    
endmodule
