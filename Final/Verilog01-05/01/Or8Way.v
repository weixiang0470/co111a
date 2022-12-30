`include "../01/Mux16.v"

module Or8Way(in,out);
    input[7:0] in;
    output out;

    Or g0(in[7],in[6],y0);
    Or g1(in[5],in[4],y1);
    Or g2(in[3],in[2],y2);
    Or g3(in[1],in[0],y3);
    Or g4(y0,y1,out1);
    Or g5(y2,y3,out2);
    Or g6(out1,out2,out);
endmodule
