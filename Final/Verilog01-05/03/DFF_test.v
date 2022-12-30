`include "DFF.v"

module main;
reg in,clk;
wire out;
reg out0;

DFF g0(in,clk,out);

initial begin
    $display("----------------DFF-------------");
    $display("|  Time  |  in   |  clk  | out |");
    $display("--------------------------------");
    $monitor("|%4dns  | %3d   | %3d   |%3d  |",$stime,in,clk,out);
    clk<=0;
    in<=0;
end

always #5 begin 
    clk=~clk;
end
always #10 begin 
    in<=~in;
end
initial #35 $finish;
endmodule