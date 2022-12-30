`include "../01/Or.v"

module Xor(a,b,out);
    input a,b;
    output out;

    Not g1(a,aBar);
    Not g2(b,bBar);

    And g3(a,bBar,abBar);
    And g4(aBar,b,aBarb);

    Or g5(aBarb,abBar,out);

endmodule