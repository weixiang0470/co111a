`include "Mux4Way16.v"

module main;
reg[15:0] d3,d2,d1,d0,ans;
reg[1:0] sel;
wire[15:0] out;
reg[8*1:1] check;

Mux4Way16 g0(d3,d2,d1,d0,sel,out);

//|        a         |        b         |        c         |        d         | sel  |       out        |
//| 0001001000110100 | 1001100001110110 | 1010101010101010 | 0101010101010101 |  00  | 0001001000110100 |
//| 0001001000110100 | 1001100001110110 | 1010101010101010 | 0101010101010101 |  01  | 1001100001110110 |
//| 0001001000110100 | 1001100001110110 | 1010101010101010 | 0101010101010101 |  10  | 1010101010101010 |
//| 0001001000110100 | 1001100001110110 | 1010101010101010 | 0101010101010101 |  11  | 0101010101010101 |

initial begin
    $display("|---------------------------------------------------------------------------------------------------------------------|");
    $display("|  Time  |        D0        |        D1        |        D2        |        D3        | sel |     Mux4Way16    | check |");
    $display("|-------------------------------------------------------------------------------------------------------------|-------|");
    d3=16'b0101010101010101;
    d2=16'b1010101010101010;
    d1=16'b1001100001110110;
    d0=16'b0001001000110100;
    ans=16'b0001001000110100;
    sel=2'b00;
end

initial #11 begin
    ans=16'b1001100001110110;
end
initial #21 begin
    ans=16'b1010101010101010;
end
initial #31 begin
    ans=16'b0101010101010101;
end

always #10 begin
    if(ans[15:0] == out[15:0])check = "v";
    else check ="x";
    $display("|%4dns  | %b | %b | %b | %b | %3b | %b | %3s   |",$stime,d0,d1,d2,d3,sel,out,check);
    sel=sel+1;
end

initial #41 begin
    $display("|---------------------------------------------------------------------------------------------------------------------|");
    #1 $finish;
end

endmodule
