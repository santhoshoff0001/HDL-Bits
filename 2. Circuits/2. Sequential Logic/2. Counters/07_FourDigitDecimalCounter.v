
module count(
    input clk,
    input rst,
    input enb,              
    output reg [3:0] q,
    output reg tc           
);
    
    always @(posedge clk) begin
        if (rst) begin
            q <= 4'b0;
        end else if (enb) begin
            if (q == 4'd9) begin
                q <= 4'b0;
            end else begin
                q <= q + 1'b1;
            end
        end
    end

    
    always @(*) begin
        tc = (enb && (q == 4'd9));
    end
endmodule


module top_module (
    input clk,
    input reset,            
    output [3:1] ena,       
    output [15:0] q
);
    
    wire en_tens, en_hundreds, en_thousands;

    
    count ones_digit (
        .clk(clk),
        .rst(reset),
        .enb(1'b1), 
        .q(q[3:0]),
        .tc(en_tens)
    );
    
  
    count tens_digit (
        .clk(clk),
        .rst(reset),
        .enb(en_tens),
        .q(q[7:4]),
        .tc(en_hundreds)
    );
    
    
    count hundreds_digit (
        .clk(clk),
        .rst(reset),
        .enb(en_hundreds),
        .q(q[11:8]),
        .tc(en_thousands)
    );
    
    
    count thousands_digit (
        .clk(clk),
        .rst(reset),
        .enb(en_thousands),
        .q(q[15:12]),
        .tc() 
    );

    
    assign ena[1] = en_tens;
    assign ena[2] = en_hundreds;
    assign ena[3] = en_thousands;

endmodule
