`include "../02/Add16.v"

module Inc16(in,out);
    input[15:0] in;
    output[15:0] out;
    reg[15:0] temp=16'b0000000000000001;
    
    Add16 g0(temp,in,out);

endmodule