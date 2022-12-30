`include "../01/Or8Way.v"

module DMux4Way(in,sel,Y3,Y2,Y1,Y0);
    input in;
    input[1:0] sel;
    output Y3,Y2,Y1,Y0;

    DMux g0(in,sel[1],HOut,LOut);
    DMux g1(HOut,sel[0],Y3,Y2);
    DMux g2(LOut,sel[0],Y1,Y0);
endmodule