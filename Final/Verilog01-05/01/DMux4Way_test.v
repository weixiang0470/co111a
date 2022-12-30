`include "DMux4Way.v"

module main;
reg in,A0,A1,A2,A3;
reg[1:0] sel;
wire y0,y1,y2,y3;
reg[8*1:1] check;

DMux4Way g0(in,sel,y3,y2,y1,y0);

//| in  | sel  |  a  |  b  |  c  |  d  |
//|  0  |  00  |  0  |  0  |  0  |  0  |
//|  0  |  01  |  0  |  0  |  0  |  0  |
//|  0  |  10  |  0  |  0  |  0  |  0  |
//|  0  |  11  |  0  |  0  |  0  |  0  |
//|  1  |  00  |  1  |  0  |  0  |  0  |
//|  1  |  01  |  0  |  1  |  0  |  0  |
//|  1  |  10  |  0  |  0  |  1  |  0  |
//|  1  |  11  |  0  |  0  |  0  |  1  |

initial begin
    $display(" ----------------------------------------------- ");
    $display("|  Time  | in | sel | Y0 | Y1 | Y2 | Y3 | Check |");
    $display("|---------------------------------------|-------|");
    in=0;
    sel=2'b00;
    A0=0;A1=0;A2=0;A3=0;
end
initial #41 begin
    in=1;
    A0=1;
end
initial #51 begin
    A0=0;
    A1=1;
end
initial #61 begin
    A1=0;
    A2=1;
end
initial #71 begin
    A2=0;
    A3=1;
end
always #10 begin
    if(y0==A0 & y1==A1 & y2==A2 & y3==A3)check="v";
    else check="x";
    $display("|%4dns  | %2d | %3b | %2d | %2d | %2d | %2d | %3s   |",$stime,in,sel,y0,y1,y2,y3,check);
    sel=sel+1;
end
initial #81 begin
    $display(" ----------------------------------------------- ");
    #1 $finish;
end
endmodule