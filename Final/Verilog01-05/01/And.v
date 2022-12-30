`include "../01/Not.v"
module And(a,b,out);
    input a,b;
    output out;

    Nand g1(a,b,y1);
    Not g2(y1,out);

endmodule