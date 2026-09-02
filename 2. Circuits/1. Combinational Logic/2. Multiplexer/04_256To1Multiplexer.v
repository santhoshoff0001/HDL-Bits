module top_module( 
    input [255:0] in,
    input [7:0] sel,
    output  out );

    assign out = in[sel];
//    always@(*) begin
//        for(integer i=0;i<256;i=i+1) begin
//            case(sel)
//                i : out= in[i];
//            endcase
//        end
//    end
endmodule