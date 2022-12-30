`include "DMux8Way.v"

module main;
reg in,a0,a1,a2,a3,a4,a5,a6,a7;
reg[2:0] sel;
wire y0,y1,y2,y3,y4,y5,y6,y7;
reg[8*1:1] check;

DMux8Way g0(in,sel,y7,y6,y5,y4,y3,y2,y1,y0);

//| in  |  sel  |  y0 |  y1 |  y2 |  y3 |  y4 |  y5 |  y6 |  y7 |
//|  1  |  000  |  1  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |
//|  1  |  001  |  0  |  1  |  0  |  0  |  0  |  0  |  0  |  0  |
//|  1  |  010  |  0  |  0  |  1  |  0  |  0  |  0  |  0  |  0  |
//|  1  |  011  |  0  |  0  |  0  |  1  |  0  |  0  |  0  |  0  |
//|  1  |  100  |  0  |  0  |  0  |  0  |  1  |  0  |  0  |  0  |
//|  1  |  101  |  0  |  0  |  0  |  0  |  0  |  1  |  0  |  0  |
//|  1  |  110  |  0  |  0  |  0  |  0  |  0  |  0  |  1  |  0  |
//|  1  |  111  |  0  |  0  |  0  |  0  |  0  |  0  |  0  |  1  |

initial begin
    $display(" ------------------------------------------------------------------- ");
    $display("|  Time  | in | sel | Y0 | Y1 | Y2 | Y3 | Y4 | Y5 | Y6 | Y7 | Check |");
    $display("|-----------------------------------------------------------|-------|");
    in=1;
    sel=3'b000;
    a0=1;a1=0;a2=0;a3=0;a4=0;a5=0;a6=0;a7=0;
end
initial #11 begin
    a0=0;a1=1;a2=0;a3=0;a4=0;a5=0;a6=0;a7=0;
end
initial #21 begin
    a0=0;a1=0;a2=1;a3=0;a4=0;a5=0;a6=0;a7=0;
end
initial #31 begin
    a0=0;a1=0;a2=0;a3=1;a4=0;a5=0;a6=0;a7=0;
end
initial #41 begin
    a0=0;a1=0;a2=0;a3=0;a4=1;a5=0;a6=0;a7=0;
end
initial #51 begin
    a0=0;a1=0;a2=0;a3=0;a4=0;a5=1;a6=0;a7=0;
end
initial #61 begin
    a0=0;a1=0;a2=0;a3=0;a4=0;a5=0;a6=1;a7=0;
end
initial #71 begin
    a0=0;a1=0;a2=0;a3=0;a4=0;a5=0;a6=0;a7=1;
end
always #10 begin
    if(y0==a0 & y1==a1 & y2==a2 & y3==a3 & y4==a4 & y5==a5 & y6==a6 & y7==a7)check="v";
    else check="x";
    $display("|%4dns  | %2d | %3b | %2d | %2d | %2d | %2d | %2d | %2d | %2d | %2d | %3s   |",$stime,in,sel,y0,y1,y2,y3,y4,y5,y6,y7,check);
    sel=sel+1;
end
initial #81 begin
    $display(" ------------------------------------------------------------------- ");
    #1 $finish;
end
endmodule
//initial #11 begin
//    a0=0;a1=1;a2=0;a3=0;a4=0;a5=0;a6=0;a7=0;
//end
//initial #21 begin
//    a0=0;a1=0;a2=1;a3=0;a4=0;a5=0;a6=0;a7=0;
//end
//initial #31 begin
//    a0=0;a1=0;a2=0;a3=1;a4=0;a5=0;a6=0;a7=0;
//end
//initial #41 begin
//    a0=0;a1=0;a2=0;a3=0;a4=1;a5=0;a6=0;a7=0;
//end
//initial #51 begin
//    a0=0;a1=0;a2=0;a3=0;a4=0;a5=1;a6=0;a7=0;
//end
//initial #61 begin
//    a0=0;a1=0;a2=0;a3=0;a4=0;a5=0;a6=1;a7=0;
//end
//initial #71 begin
//    a0=0;a1=0;a2=0;a3=0;a4=0;a5=0;a6=0;a7=1;
//end