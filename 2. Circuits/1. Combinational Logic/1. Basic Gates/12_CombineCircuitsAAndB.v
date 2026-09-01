module top_module (input x, input y, output z);
wire w1,w2;
    assign w1 = ((x^y)&x)|(~(x^y));
    assign w2 = ((x^y)&x)&(~(x^y));
    assign z = w1^w2;
endmodule
