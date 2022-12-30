`include "Not16.v"

module main;
reg[8*1:1] test;
reg[15:0] in,ans;
wire[15:0] Not16Out;

Not16 g1(in,Not16Out);

//|        in        |       out        |
//| 0000000000000000 | 1111111111111111 |
//| 1111111111111111 | 0000000000000000 |
//| 1010101010101010 | 0101010101010101 |
//| 0011110011000011 | 1100001100111100 |
//| 0001001000110100 | 1110110111001011 |


initial #9 begin
    $display("|  Time  |        in        |     Not16Out     |        Ans       | Check |");
    $display("|-----------------------------------------------------------------|-------|");
    in=16'b0000000000000000;
    ans=16'b1111111111111111;
end

initial #19 begin
    in=16'b1111111111111111;
    ans=16'b0000000000000000;
end

initial #29 begin
    in=16'b1010101010101010;
    ans=16'b0101010101010101;
end

initial #39 begin
    in=16'b0011110011000011;
    ans=16'b1100001100111100;
end

initial #49 begin
    in=16'b0001001000110100;
    ans=16'b1110110111001011;
end

always #10 begin
    if( Not16Out[15:0] == ans[15:0] )test="v";
    else test = "x";
    $display("|%4dns  | %b | %b | %b | %3s   |",$stime,in,Not16Out,ans,test);
end

initial #52 begin
    $display("|-----------------------------------------------------------------|-------|");
end

initial #52 $finish;

endmodule