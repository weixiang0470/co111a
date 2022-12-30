`include "../01/DMux4Way.v"

module DMux8Way(in,sel,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0);
    input in;
    input[2:0] sel;
    output Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0;

    DMux g0(in,sel[2],HOut,LOut);

    DMux4Way g1(HOut,sel[1:0],Y7,Y6,Y5,Y4);
    DMux4Way g2(LOut,sel[1:0],Y3,Y2,Y1,Y0);
endmodule