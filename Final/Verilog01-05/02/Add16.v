`include "../02/FullAdder.v"

module Add16(a,b,out);
    input[15:0] a,b;
    output[15:0] out;
    wire[15:0] Carry;

    HalfAdder g0(a[0],b[0],out[0],Carry[0]);
    FullAdder g1(Carry[0],a[1],b[1],out[1],Carry[1]);
    FullAdder g2(Carry[1],a[2],b[2],out[2],Carry[2]);
    FullAdder g3(Carry[2],a[3],b[3],out[3],Carry[3]);
    FullAdder g4(Carry[3],a[4],b[4],out[4],Carry[4]);
    FullAdder g5(Carry[4],a[5],b[5],out[5],Carry[5]);
    FullAdder g6(Carry[5],a[6],b[6],out[6],Carry[6]);
    FullAdder g7(Carry[6],a[7],b[7],out[7],Carry[7]);
    FullAdder g8(Carry[7],a[8],b[8],out[8],Carry[8]);
    FullAdder g9(Carry[8],a[9],b[9],out[9],Carry[9]);
    FullAdder g10(Carry[9],a[10],b[10],out[10],Carry[10]);
    FullAdder g11(Carry[10],a[11],b[11],out[11],Carry[11]);
    FullAdder g12(Carry[11],a[12],b[12],out[12],Carry[12]);
    FullAdder g13(Carry[12],a[13],b[13],out[13],Carry[13]);
    FullAdder g14(Carry[13],a[14],b[14],out[14],Carry[14]);
    FullAdder g15(Carry[14],a[15],b[15],out[15],Carry[15]);
endmodule