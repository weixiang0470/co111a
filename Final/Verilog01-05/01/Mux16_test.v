`include "Mux16.v"

module main;
reg[15:0] d1,d0,ans;
reg sel;
reg[8*1:1] check;
wire[15:0] Mux16Out;

Mux16 g1(d1,d0,sel,Mux16Out);

//|        D0        |         D1       | sel |       out        |
//| 0000000000000000 | 0000000000000000 |  0  | 0000000000000000 |
//| 0000000000000000 | 0000000000000000 |  1  | 0000000000000000 |
//| 0000000000000000 | 0001001000110100 |  0  | 0000000000000000 |
//| 0000000000000000 | 0001001000110100 |  1  | 0001001000110100 |
//| 1001100001110110 | 0000000000000000 |  0  | 1001100001110110 |
//| 1001100001110110 | 0000000000000000 |  1  | 0000000000000000 |
//| 1010101010101010 | 0101010101010101 |  0  | 1010101010101010 |
//| 1010101010101010 | 0101010101010101 |  1  | 0101010101010101 |

initial begin
    $display("|--------------------------------------------------------------------------------------------|");
    $display("|  Time  |        D1        |        D0        |        sel       |     Mux16Out     | check |");
    $display("|------------------------------------------------------------------------------------|-------|");
    d1=16'b0000000000000000;
    d0=16'b0000000000000000;
    ans=16'b0000000000000000;
    sel=0;
end

initial #11 begin
    d1=16'b0000000000000000;
    d0=16'b0000000000000000;
    ans=16'b0000000000000000;
end
initial #21 begin
    d1=16'b0001001000110100;
    d0=16'b0000000000000000;
    ans=16'b0000000000000000;
end
initial #31 begin
    d1=16'b0001001000110100;
    d0=16'b0000000000000000;
    ans=16'b0001001000110100;
end
initial #41 begin
    d0=16'b1001100001110110;
    d1=16'b0000000000000000;
    ans=16'b1001100001110110;
end
initial #51 begin
    d0=16'b1001100001110110;
    d1=16'b0000000000000000;
    ans=16'b0000000000000000;
end
initial #61 begin
    d0=16'b1010101010101010;
    d1=16'b0101010101010101;
    ans=16'b1010101010101010;
end
initial #71 begin
    d0=16'b1010101010101010;
    d1=16'b0101010101010101;
    ans=16'b0101010101010101;
end
always #10 begin
    if(ans[15:0] == Mux16Out[15:0])check = "v";
    else check ="x";
    $display("|%4dns  | %b | %b | %9d        | %b | %3s   |",$stime,d1,d0,sel,Mux16Out,check);
    sel=sel+1;
end

initial #81 begin
    $display("|--------------------------------------------------------------------------------------------|");
    #1 $finish;
end

endmodule
