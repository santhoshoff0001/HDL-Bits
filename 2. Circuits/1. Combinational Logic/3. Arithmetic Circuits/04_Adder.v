module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [3:0] c;
    genvar i;
    
    assign c[0] = x[0]&y[0];
    assign sum[0] = x[0]^y[0];
    
    generate
        for(i=1;i<4;i++) begin:FA
            assign sum[i] = x[i]^y[i]^c[i-1];
            assign c[i] = x[i]&y[i]|x[i]&c[i-1]|y[i]&c[i-1];
        end
        assign sum[4] = c[3];
    endgenerate
    
    //assign sum = x+y     is a one line answer for this
    
endmodule
