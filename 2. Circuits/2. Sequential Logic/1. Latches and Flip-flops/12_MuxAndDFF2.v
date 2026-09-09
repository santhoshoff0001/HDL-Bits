module top_module (
    input clk,
    input w, R, E, L,
    output reg Q
);
    wire w1,D;
    assign w1 = E?w:Q;
    assign D = L?R:w1;
    always@(posedge clk)
        Q <= D;

endmodule
