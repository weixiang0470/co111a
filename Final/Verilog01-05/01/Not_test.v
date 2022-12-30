`include "Not.v"

module main;
reg in;
wire NotOut;

Not g1(in,NotOut);

initial
begin
    $display("  Time  in  Not");
    $display("--------------------");
    $monitor("%4dns %3d %3d",$stime,in,NotOut);
    in=0;
end

always #50 begin
    in = in+1;
end

initial #150 $finish;

endmodule