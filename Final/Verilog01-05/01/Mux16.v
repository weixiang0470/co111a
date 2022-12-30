`include "../01/Or16.v"

module Mux16(d1,d0,sel,out);
    input[15:0] d1,d0;
    input sel;
    output[15:0] out;

    Mux g0(d1[0],d0[0],sel,out[0]);
    Mux g1(d1[1],d0[1],sel,out[1]);
    Mux g2(d1[2],d0[2],sel,out[2]);
    Mux g3(d1[3],d0[3],sel,out[3]);
    Mux g4(d1[4],d0[4],sel,out[4]);
    Mux g5(d1[5],d0[5],sel,out[5]);
    Mux g6(d1[6],d0[6],sel,out[6]);
    Mux g7(d1[7],d0[7],sel,out[7]);
    Mux g8(d1[8],d0[8],sel,out[8]);
    Mux g9(d1[9],d0[9],sel,out[9]);
    Mux g10(d1[10],d0[10],sel,out[10]);
    Mux g11(d1[11],d0[11],sel,out[11]);
    Mux g12(d1[12],d0[12],sel,out[12]);
    Mux g13(d1[13],d0[13],sel,out[13]);
    Mux g14(d1[14],d0[14],sel,out[14]);
    Mux g15(d1[15],d0[15],sel,out[15]);

endmodule