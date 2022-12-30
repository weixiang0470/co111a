`include "../03/Mix.v"

module Memory(in,load,address,clk,out);
input[15:0] in;
input load,clk;
input[14:0] address;
output[15:0] out;
reg[15:0] temp=16'd520;
reg tempload=0;

//0~16383 ==> RAM16K
//16384~24575 ==> Screen
//24576 ==> Keyboard

wire ScreenKeyLoad,RamLoad,KeyLoad;
wire[15:0] MemoryOut,ScreenOut,KeyOut,ScreenKeyOut;

//Choose who out
DMux g0(load,address[14],ScreenKeyLoad,RamLoad);
//if ( address[14] && address[13] && ~address[12] && ~address[11] && ~address[10] && ~address[9] && ~address[8] && ~address[7] && ~address[6] && ~address[5] && ~address[4] && ~address[3] && ~address[2] && ~address[1] && ~address[0]) begin
//   KeyLoad = 1;
//end else begin
//    KeyLoad = 0;
//end

RAM16K g1(in,RamLoad,address[13:0],clk,MemoryOut);
RAM8K g2(in,ScreenKeyLoad,address[12:0],clk,ScreenOut);
Register g3(temp,tempload,clk,KeyOut);

Mux16 g4(KeyOut,ScreenOut,address[13],ScreenKeyOut);
Mux16 g5(ScreenKeyOut,MemoryOut,address[14],out);

endmodule