`include "../03/Register.v"

module RAM8(in,load,address,clk,out);
input[15:0] in;
input[2:0] address;
input load,clk;
output[15:0] out;
wire[7:0] WAddr;
wire[15:0] Rout0,Rout1,Rout2,Rout3,Rout4,Rout5,Rout6,Rout7;

//deciding which address want to load
DMux8Way g0(load,address,WAddr[7],WAddr[6],WAddr[5],WAddr[4],WAddr[3],WAddr[2],WAddr[1],WAddr[0]);

Register g8(in,WAddr[7],clk,Rout7);
Register g1(in,WAddr[6],clk,Rout6);
Register g2(in,WAddr[5],clk,Rout5);
Register g3(in,WAddr[4],clk,Rout4);
Register g4(in,WAddr[3],clk,Rout3);
Register g5(in,WAddr[2],clk,Rout2);
Register g6(in,WAddr[1],clk,Rout1);
Register g7(in,WAddr[0],clk,Rout0);

Mux8Way16 g9(Rout7,Rout6,Rout5,Rout4,Rout3,Rout2,Rout1,Rout0,address,out);

endmodule