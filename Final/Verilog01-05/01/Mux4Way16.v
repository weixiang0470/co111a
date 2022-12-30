`include "../01/DMux8Way.v"

module Mux4Way16(d3,d2,d1,d0,sel,out);
    input[15:0] d3,d2,d1,d0;
    input[1:0] sel;
    output[15:0] out;
    wire[15:0] HighOut,LowOut;
    Mux16 g0(d3,d2,sel[0],HighOut);
    Mux16 g1(d1,d0,sel[0],LowOut);
    Mux16 g2(HighOut,LowOut,sel[1],out);
endmodule