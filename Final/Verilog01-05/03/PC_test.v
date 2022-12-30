`include "PC.v"

module main;
reg signed[15:0] in;
reg load,inc,reset,clk;
wire signed[15:0] out;

PC g0(in,load,inc,reset,clk,out);

initial begin
    $display("--------------------------PC-----------------------");
    $display("|  Time  |  in   |reset|load | inc | clk |  out  |");
    $display("---------------------------------------------------");
    $monitor("|%4dns  |%-7d|%3d  |%3d  |%3d  |%3d  |%7d|",$stime,in,reset,load,inc,clk,out);
    in=16'd0;reset=0;load=1;inc=0;clk=0;
    #10 in=16'd0;reset=0;load=0;inc=0;
    #10 in=16'd0;reset=0;load=0;inc=1;
    #10 in=-16'd32123;reset=0;load=0;inc=1;
    #10 in=-16'd32123;reset=0;load=1;inc=1;
    #10 in=-16'd32123;reset=0;load=0;inc=1;
    #20 in=16'd12345;reset=0;load=1;inc=0;
    #10 in=16'd12345;reset=1;load=1;inc=0;
    #10 in=16'd12345;reset=0;load=1;inc=1;
    #10 in=16'd12345;reset=1;load=1;inc=1;
    #10 in=16'd12345;reset=0;load=0;inc=1;
    #10 in=16'd12345;reset=1;load=0;inc=1;
    #10 in=16'd0;reset=0;load=1;inc=1;
    #10 in=16'd0;reset=0;load=0;inc=1;
    #10 in=16'd22222;reset=1;load=0;inc=0;
end
always #5 begin
    clk=~clk;
end
initial #156 $finish;
endmodule