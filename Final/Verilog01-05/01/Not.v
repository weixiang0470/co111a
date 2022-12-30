`include "../01/Nand.v"

module Not(in,out);
    input in;
    output out;

    Nand g1(in,in,out);

endmodule