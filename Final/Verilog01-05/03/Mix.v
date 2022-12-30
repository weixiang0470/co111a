`include "../03/RAM512.v"

module RAM4K(in,load,address,clk,out);
input[15:0] in;
input load,clk;
input[11:0] address;
output[15:0] out;
reg[15:0] m[0:2**12-1];//0~4095

always @(posedge clk)begin
    if(load) begin
        m[address] = in;
    end
end

endmodule

module RAM8K(in,load, address, clk, out);
input[15:0] in;
input load,clk;
input[12:0] address;
output[15:0] out;
reg[15:0] m[0:2**13-1];//0~8191
  
assign out = m[address];

always @(posedge clk) begin
    if (load) begin
        m[address] = in;
    end
end
endmodule

module RAM16K(in,load,address,clk,out);
input[15:0] in;
input clk,load;
input[13:0] address;
output[15:0] out;
reg[15:0] m[0:2**14-1];//0~16383

assign out = m[address];

always @(posedge clk) begin
if (load) m[address] = in;
end
endmodule

module ROM32K(address,out);
input[14:0] address;
output[15:0] out;
reg[15:0] m[0:2**15-1];//0~32767

assign out = m[address];

endmodule