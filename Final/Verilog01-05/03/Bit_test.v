`include "Bit.v"

module main;
reg in,clk,load;
wire out;

Bit g0(in,load,clk,out);

initial begin
    $display("---------------------Bit-----------------");
    $display("|  Time  |  in   |  load  |  clk  | out |");
    $display("-----------------------------------------");
    $monitor("|%4dns  | %3d   | %3d    |%4d   |%3d  |",$stime,in,load,clk,out);
    clk=0;
    load=0;
    in=0;

end
always #5 begin
    clk=~clk;
end
initial #10 begin
    load=load+1;
end
initial #20 begin
    load=load+1;
    in=in+1;
end
initial #30 begin
    load=load+1;
end
initial #40 begin
    load=load+1;
    in=in+1;
end
initial #50 begin
    in=in+1;
end
initial #60 begin
    load=load+1;
    in=in+1;
end
initial #70 begin
    in=in+1;
end
initial #80 begin
    load=load+1;
    in=in+1;
end
initial #100 begin
    load=load+1;
end
initial #110 begin
    load=load+1;
    in=in+1;
end
initial #120 $finish;

endmodule
