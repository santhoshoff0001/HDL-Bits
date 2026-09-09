module top_module (
    input clk,
    input areset,   // active high asynchronous reset
    input [7:0] d,
    output reg [7:0] q
);
    
   
    always@(posedge clk,posedge areset) 
		q <= areset ? 8'b0 : d; 

endmodule
