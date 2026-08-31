module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] temp_cout;
    bcd_fadd instan0 
    (.a(a[3:0]),
     .b(b[3:0]),
     .cin(cin),
     .cout(temp_cout[0]),
     .sum(sum[3:0])
    );
    generate
        genvar i;
        for( i = 1;i<100;i=i+1)
            begin:bcd
            bcd_fadd inst_All(.a(a[4*i+3:4*i]),
            .b(b[4*i+3:4*i]),
            .cin(temp_cout[i-1]),
            .cout(temp_cout[i]),
             .sum(sum[4*i+3:4*i])
            );
        end
    endgenerate
    assign cout = temp_cout[99];
endmodule
