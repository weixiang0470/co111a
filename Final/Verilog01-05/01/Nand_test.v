`include "Nand.v"

module main;
reg a,b;
wire abNand;

Nand g1(a,b,abNand);

initial
begin
    $display("  Time  b  a  Nand");
    $display("---------------------");
    $monitor("%4dns %2d %2d %3d",$stime, b,a,abNand);
    a=0;
    b=0;
end

always #50 begin
  a = a+1;
end

always #100 begin
  b = b+1;
end

initial #150 $finish;

endmodule
