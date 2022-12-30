`include "Mux.v"

module main;
reg d1,d0,sel;
wire MuxOut;

Mux g1(d1,d0,sel,MuxOut);

initial 
begin
    $display("  Time   sel   D1   D0   MuxOut");
    $display("--------------------------------");
    $monitor("%4dns %4d %4d %4d %6d",$stime,sel,d1,d0,MuxOut);
    d1=0;
    d0=0;
    sel=0;
end

always #100 begin
    sel = sel+1;
end
always #50 begin
    d1=d1+1;
end
always #25 begin
    d0=d0+1;
end

initial #176 begin
$display("--------------------------------");
end

initial #176 $finish;

endmodule