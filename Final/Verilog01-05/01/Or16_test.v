`include "Or16.v"

module main;
reg[8*1:1] check;
reg[15:0] a,b,ans;
wire[15:0] Or16Out;

Or16 g1(a,b,Or16Out);

//|        a         |        b         |       out        |
//| 0000000000000000 | 0000000000000000 | 0000000000000000 |
//| 0000000000000000 | 1111111111111111 | 1111111111111111 |
//| 1111111111111111 | 1111111111111111 | 1111111111111111 |
//| 1010101010101010 | 0101010101010101 | 1111111111111111 |
//| 0011110011000011 | 0000111111110000 | 0011111111110011 |
//| 0001001000110100 | 1001100001110110 | 1001101001110110 |

initial #9 begin
    $display("|--------------------------------------------------------------------------------------------|");
    $display("|  Time  |        a         |        b         |      Or16Out     |        Ans       | Check |");
    $display("|------------------------------------------------------------------------------------|-------|");
    a=16'b0000000000000000;
    b=16'b0000000000000000;
    ans=16'b0000000000000000;
end

initial #19 begin
    a=16'b0000000000000000;
    b=16'b1111111111111111;
    ans=16'b1111111111111111;
end 
initial #29 begin
    a=16'b1111111111111111;
    b=16'b1111111111111111;
    ans=16'b1111111111111111;
end 
initial #39 begin
    a=16'b1010101010101010;
    b=16'b0101010101010101;
    ans=16'b1111111111111111;
end 
initial #49 begin
    a=16'b0011110011000011;
    b=16'b0000111111110000;
    ans=16'b0011111111110011;
end 
initial #59 begin
    a=16'b0001001000110100;
    b=16'b1001100001110110;
    ans=16'b1001101001110110;
end 

always #10 begin
    if(Or16Out[15:0] == ans[15:0]) check = "v";
    else check="x";
    $display("|%4dns  | %b | %b | %b | %b | %3s   |",$stime,a,b,Or16Out,ans,check);
end

initial #61 begin
    $display("|--------------------------------------------------------------------------------------------|");
end
initial #61 $finish;

endmodule