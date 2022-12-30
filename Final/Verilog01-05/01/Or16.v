`include "../01/Not16.v"

module Or16(a,b,out);
    input[15:0] a,b;
    output[15:0] out;

    Or g0(a[0],b[0],out[0]);
    Or g1(a[1],b[1],out[1]);
    Or g2(a[2],b[2],out[2]);
    Or g3(a[3],b[3],out[3]);
    Or g4(a[4],b[4],out[4]);
    Or g5(a[5],b[5],out[5]);
    Or g6(a[6],b[6],out[6]);
    Or g7(a[7],b[7],out[7]);
    Or g8(a[8],b[8],out[8]);
    Or g9(a[9],b[9],out[9]);
    Or g10(a[10],b[10],out[10]);
    Or g11(a[11],b[11],out[11]);
    Or g12(a[12],b[12],out[12]);
    Or g13(a[13],b[13],out[13]);
    Or g14(a[14],b[14],out[14]);
    Or g15(a[15],b[15],out[15]);

endmodule