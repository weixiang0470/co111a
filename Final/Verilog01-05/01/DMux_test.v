`include "DMux.v"

module main;
reg D,sel;
wire y1,y0;

DMux g1(D,sel,y1,y0);

initial
begin
    $display("  Time  sel  D  Y0  Y1");
    $display("-------------------------");
    $monitor("%4dns %3d %3d %3d %3d",$stime,sel,D,y0,y1);
    D=0;
    sel=0;
end

always #50 begin
    D=D+1;
end

always #100 begin
    sel=sel+1;
end

initial #151 begin
    $display("-------------------------");
end

initial #151 $finish;

endmodule