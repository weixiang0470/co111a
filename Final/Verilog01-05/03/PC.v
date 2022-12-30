`include "../03/RAM64.v"

module PC(in,load,inc,reset,clk,out);
input[15:0] in;
input load,inc,reset,clk;
output[15:0] out;
wire[15:0] ReturnOut,IncOut,OutByInc,OutByLoad,OutByReset;

 //*if      (reset[t] == 1) out[t+1] = 0
 //* else if (load[t] == 1)  out[t+1] = in[t]
 //* else if (inc[t] == 1)   out[t+1] = out[t] + 1  (integer addition)
 //* else                    out[t+1] = out[t]

Register g0(OutByReset,1'b1,clk,ReturnOut);
Inc16 g1(ReturnOut,IncOut);

Mux16 g5(IncOut,ReturnOut,inc,OutByInc);
Mux16 g2(in,OutByInc,load,OutByLoad);
Mux16 g3(16'b0000000000000000,OutByLoad,reset,OutByReset);

And16 g4(ReturnOut,ReturnOut,out);

endmodule