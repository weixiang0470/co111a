`include "../01/Mux.v"

module DMux(in,sel,outY1,outY0);
    input in,sel;
    output outY1,outY0;

    Not g1(sel,sBar);

    And g2(in,sBar,outY0);
    And g3(in,sel,outY1);
endmodule