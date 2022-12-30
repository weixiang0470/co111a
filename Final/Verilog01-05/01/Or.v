`include "../01/And.v"
module Or(a,b,out);
    input a,b;
    output out;

    Not g1(a,aBar);
    Not g2(b,bBar);
    Nand g3(aBar,bBar,out);
endmodule    
