`include "../03/Bit.v"

module Register(in,load,clk,out);
    input[15:0] in;
    input load,clk;
    output wire[15:0] out;

    Bit g0(in[0],load,clk,out[0]);
    Bit g1(in[1],load,clk,out[1]);
    Bit g2(in[2],load,clk,out[2]);
    Bit g3(in[3],load,clk,out[3]);
    Bit g4(in[4],load,clk,out[4]);
    Bit g5(in[5],load,clk,out[5]);
    Bit g6(in[6],load,clk,out[6]);
    Bit g7(in[7],load,clk,out[7]);
    Bit g8(in[8],load,clk,out[8]);
    Bit g9(in[9],load,clk,out[9]);
    Bit g10(in[10],load,clk,out[10]);
    Bit g11(in[11],load,clk,out[11]);
    Bit g12(in[12],load,clk,out[12]);
    Bit g13(in[13],load,clk,out[13]);
    Bit g14(in[14],load,clk,out[14]);
    Bit g15(in[15],load,clk,out[15]);
endmodule