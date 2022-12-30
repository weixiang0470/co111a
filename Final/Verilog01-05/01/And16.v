`include "../01/DMux.v"

module And16(a,b,out);
    input[15:0] a,b;
    output[15:0] out;

    And g0(a[0],b[0],out[0]);
    And g1(a[1],b[1],out[1]);
    And g2(a[2],b[2],out[2]);
    And g3(a[3],b[3],out[3]);
    And g4(a[4],b[4],out[4]);
    And g5(a[5],b[5],out[5]);
    And g6(a[6],b[6],out[6]);
    And g7(a[7],b[7],out[7]);
    And g8(a[8],b[8],out[8]);
    And g9(a[9],b[9],out[9]);
    And g10(a[10],b[10],out[10]);
    And g11(a[11],b[11],out[11]);
    And g12(a[12],b[12],out[12]);
    And g13(a[13],b[13],out[13]);
    And g14(a[14],b[14],out[14]);
    And g15(a[15],b[15],out[15]);

endmodule