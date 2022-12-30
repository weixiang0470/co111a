`include "Register.v"

module main;
    reg signed[15:0] in;
    reg load,clk;
    wire signed[15:0] out;
Register g0(in,load,clk,out);

initial begin
    $display("-----------------Register----------------");
    $display("|  Time  |  in   |  load  |  clk  | out |");
    $display("-----------------------------------------");
    $monitor("|%4dns  |%-6d| %3d    |%4d   |%6d|",$stime,in,load,clk,out);
    in=0;load=0;clk=0;
    #20 load=load+1;
    #10 in=-16'd32123;load=load+1;
    //$display("in = %d",in);
    #10 in=11111;
    #10 in=-16'd32123;load=load+1;
    #20 load=load+1;
    #10 in=12345;load=load+1;
    #10 in=0;load=load+1;
    #10 load=load+1;
    #10 in=1;load=load+1;
    #10 load=load+1;
    #10 in=2;load=load+1;
    #10 load=load+1;
    #10 in=4;load=load+1;
    #10 load=load+1;
    #10 in=8;load=load+1;
    #10 load=load+1;
    #10 in=16;load=load+1;
    #10 load=load+1;
end
always #5 begin
    clk=~clk;
end

initial #205 $finish;
endmodule