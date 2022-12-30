`include "../01/And16.v"

module Not16(in,out);
    input[15:0] in;
    output[15:0] out;

    Not g1(in[15],out[15]);
    Not g2(in[14],out[14]);
    Not g3(in[13],out[13]);
    Not g4(in[12],out[12]);
    Not g5(in[11],out[11]);
    Not g6(in[10],out[10]);
    Not g7(in[9],out[9]);
    Not g8(in[8],out[8]);
    Not g9(in[7],out[7]);
    Not g10(in[6],out[6]);
    Not g11(in[5],out[5]);
    Not g12(in[4],out[4]);
    Not g13(in[3],out[3]);
    Not g14(in[2],out[2]);
    Not g15(in[1],out[1]);
    Not g16(in[0],out[0]);
endmodule