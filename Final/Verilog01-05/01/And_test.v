`include "And.v"

module main;
reg a,b;
wire AndOut;

And g1(a,b,AndOut);

initial
begin
    $display("  Time  b  a  And");
    $display("--------------------");
    $monitor("%4dns %2d %2d %3d",$stime,b,a,AndOut);
    a=0;
    b=0;
end

always #50 begin
    a=a+1;
end

always #100 begin
    b=b+1;
end

initial #150 $finish;

endmodule