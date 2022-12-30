`include "../01/Mux4Way16.v"

module Mux8Way16(d7,d6,d5,d4,d3,d2,d1,d0,sel,out);
    input[15:0] d7,d5,d6,d4,d3,d2,d1,d0;
    input[2:0] sel;
    output[15:0] out;
    wire[15:0] HighOut,LowOut;

    Mux4Way16 g0(d7,d6,d5,d4,sel[1:0],HighOut);
    Mux4Way16 g1(d3,d2,d1,d0,sel[1:0],LowOut);
    Mux16 g2(HighOut,LowOut,sel[2],out);
endmodule