`include "../02/ALU.v"

module DFF(in,clk,out);
    input in,clk;
    output reg out;
    //output out;
    //reg q;
    //assign out=q;
always @(posedge clk) begin
    out=in;
    //q=in;
end
endmodule