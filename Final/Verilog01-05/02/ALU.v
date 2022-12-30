`include "../02/Inc16.v"

module ALU(x,y,zx,nx,zy,ny,f,no,out,zr,ng);
input[15:0] x,y;
input zx,nx,zy,ny,f,no;
output[15:0] out;
output zr,ng;
wire[15:0] Xout1,Xout1Bar,Yout1,Yout1Bar,Xout2,Yout2,XY,XPlusY,Out0,Out0Bar;
wire LowOut,HighOut,ZrOut0;

// if (zx == 1) set x = 0        // 16-bit constant
// if (nx == 1) set x = !x       // bitwise not
// if (zy == 1) set y = 0        // 16-bit constant
// if (ny == 1) set y = !y       // bitwise not
// if (f == 1)  set out = x + y  // integer 2's complement addition
// if (f == 0)  set out = x & y  // bitwise and
// if (no == 1) set out = !out   // bitwise not
// if (out == 0) set zr = 1
// if (out < 0) set ng = 1

//Doing x
Mux16 g0(16'b0000000000000000,x,zx,Xout1);
Not16 g1(Xout1,Xout1Bar);
Mux16 g2(Xout1Bar,Xout1,nx,Xout2);

//Doing y
Mux16 g3(16'b0000000000000000,y,zy,Yout1);
Not16 g4(Yout1,Yout1Bar);
Mux16 g5(Yout1Bar,Yout1,ny,Yout2);

//Doing XY or X+Y
And16 g6(Xout2,Yout2,XY);
Add16 g7(Xout2,Yout2,XPlusY);

//Doing out
Mux16 g8(XPlusY,XY,f,Out0);
Not16 g9(Out0,Out0Bar);
Mux16 g10(Out0Bar,Out0,no,out);

//And16 g16(TempOut,TempOut,out);
//Doing ng
And g11(out[15],out[15],ng);

//Doing zr
Or8Way g12(out[7:0],LowOut);
Or8Way g13(out[15:8],HighOut);
Or g14(LowOut,HighOut,ZrOut0);
Not g15(ZrOut0,zr);

endmodule
