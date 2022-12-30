`include "../03/PC.v"

module RAM512(in,load,address,clk,out);
input[15:0] in;
input load,clk;
input[8:0] address;
output[15:0] out;
wire Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0;
wire[15:0] Rout0,Rout1,Rout2,Rout3,Rout4,Rout5,Rout6,Rout7;

DMux8Way g0(load,address[8:6],Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0);

RAM64 g1(in,Y7,address[5:0],clk,Rout7);
RAM64 g2(in,Y6,address[5:0],clk,Rout6);
RAM64 g3(in,Y5,address[5:0],clk,Rout5);
RAM64 g4(in,Y4,address[5:0],clk,Rout4);
RAM64 g5(in,Y3,address[5:0],clk,Rout3);
RAM64 g6(in,Y2,address[5:0],clk,Rout2);
RAM64 g7(in,Y1,address[5:0],clk,Rout1);
RAM64 g8(in,Y0,address[5:0],clk,Rout0);

Mux8Way16 g9(Rout7,Rout6,Rout5,Rout4,Rout3,Rout2,Rout1,Rout0,address[8:6],out);

endmodule