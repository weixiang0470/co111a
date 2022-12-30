`include "../02/HalfAdder.v"

module FullAdder(a,b,c,sum,carry);
    input a,b,c;
    output sum,carry;
    wire S1,C1,out1;

    HalfAdder g0(b,c,S1,C1);
    Xor g1(a,S1,sum);
    And g2(a,S1,out1);
    Or g3(out1,C1,carry);
endmodule