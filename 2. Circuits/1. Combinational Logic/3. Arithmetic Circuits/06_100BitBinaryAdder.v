module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    
    wire [100:0] w;
    assign w = a+b+cin;
    assign sum = w[99:0];
    assign cout = w[100];
    
   // assign {cout,sum} = a+b+cin;

endmodule
