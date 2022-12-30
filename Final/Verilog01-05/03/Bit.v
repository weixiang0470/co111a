`include "../03/DFF.v"

module Bit(in,load,clk,out);
    input in,load,clk;
    output out;
    wire TempOut;
// If load[t] == 1 then out[t+1] = in[t]
// else out does not change (out[t+1] = out[t])
    Mux g1(in,out,load,TempOut);
    DFF g0(TempOut,clk,out);

endmodule