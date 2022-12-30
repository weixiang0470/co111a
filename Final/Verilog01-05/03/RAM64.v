`include "../03/RAM8.v"

module RAM64(in,load,address,clk,out);
input[15:0] in;
input load,clk;
input[5:0] address;
output[15:0] out;
wire Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0;
wire[15:0] Rout0,Rout1,Rout2,Rout3,Rout4,Rout5,Rout6,Rout7;

DMux8Way g0(load,address[5:3],Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0);

RAM8 g1(in,Y7,address[2:0],clk,Rout7);
RAM8 g2(in,Y6,address[2:0],clk,Rout6);
RAM8 g3(in,Y5,address[2:0],clk,Rout5);
RAM8 g4(in,Y4,address[2:0],clk,Rout4);
RAM8 g5(in,Y3,address[2:0],clk,Rout3);
RAM8 g6(in,Y2,address[2:0],clk,Rout2);
RAM8 g7(in,Y1,address[2:0],clk,Rout1);
RAM8 g8(in,Y0,address[2:0],clk,Rout0);

Mux8Way16 g9(Rout7,Rout6,Rout5,Rout4,Rout3,Rout2,Rout1,Rout0,address[5:3],out);

endmodule