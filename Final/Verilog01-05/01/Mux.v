`include "../01/Xor.v"

module Mux(d1,d0,sel,out);
    input d1,d0,sel;
    output out;

    //out = d1(sel) + d0(sel)'

    Not g1(sel,sBar);

    And g2(d1,sel,d1s);
    And g3(d0,sBar,d0sBar);

    Or g4(d1s,d0sBar,out);
endmodule