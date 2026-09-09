module top_module (
    input clk,
    input d,
    output reg q
);
    reg [1:0]temp;
    always@(posedge clk) begin
        temp[0] = d;
    end
    always@(negedge clk) begin
        temp[1] = d;
    end
    assign q = clk ? temp[0] : temp[1];
endmodule
