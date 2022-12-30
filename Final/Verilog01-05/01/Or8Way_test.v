`include "Or8Way.v"

module main;
reg[7:0] in;
reg ans;
reg[8*1:1] check;
wire Or8WayOut;

Or8Way g0(in,Or8WayOut);

//|     in     | out |
//|  00000000  |  0  |
//|  11111111  |  1  |
//|  00010000  |  1  |
//|  00000001  |  1  |
//|  00100110  |  1  |

initial begin
    $display(" --------------------------------- ");
    $display("|  Time  |    in    | out | check |");
    $display("|-------------------------|-------|");
    in=8'b00000000;
    ans=0;
end
initial #11 begin
    in=8'b11111111;
    ans=1;
end
initial #21 begin
    in=8'b00010000;
    ans=1;
end
initial #31 begin
    in=8'b00000001;
    ans=1;
end
initial #41 begin
    in=8'b00100110;
    ans=1;
end
always #10 begin
    if(Or8WayOut == ans) check="v";
    else check="x";
    $display("|%4dns  | %b |  %d  |   %s   |",$stime,in,Or8WayOut,check);
end
initial #52 begin
    $display(" ---------------------------------");
    #1 $finish;
end
endmodule