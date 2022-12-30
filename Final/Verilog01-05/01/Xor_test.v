`include "Xor.v"

module main;
reg a,b;
wire Xor;

Xor g1(a,b, Xor);

initial
begin  
    $display("  Time   b   a   Xor");
    $display("-----------------------");
    $monitor("%4dns %3d %3d  %3d", $stime,b,a,Xor);
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