module Nand(a,b,out);
    input a;
    input b;
    output out;

    nand g1(out, a, b);
    
endmodule