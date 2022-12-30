`include "../01/Mux8Way16.v"

module HalfAdder(a,b,sum,carry);
    input a,b;
    output sum,carry;

    Xor g1(a,b,sum);
    And g2(a,b,carry);
endmodule