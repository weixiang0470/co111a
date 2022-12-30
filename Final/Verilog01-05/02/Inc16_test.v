`include "Inc16.v"

module main;
reg[15:0] in,ans;
wire[15:0] out;
reg[8*1:1] check;

Inc16 g0(in,out);

//|        in        |       out        |
//| 0000000000000000 | 0000000000000001 |
//| 1111111111111111 | 0000000000000000 |
//| 0000000000000101 | 0000000000000110 |
//| 1111111111111011 | 1111111111111100 |

initial begin
    $display("\n ------------------------------------------------------");
    $display("|  Time  |        in        |     Inc16Out     | check |");
    $display("|----------------------------------------------|-------|");
    in=16'b0000000000000000;
    ans=16'b0000000000000001;
end
initial #11 begin
    in=16'b1111111111111111;
    ans=16'b0000000000000000;
end
initial #21 begin
    in=16'b0000000000000101;
    ans=16'b0000000000000110;
end
initial #31 begin
    in=16'b1111111111111011;
    ans=16'b1111111111111100;
end
always #10 begin
    if(out[15:0] == ans[15:0]) check = "v";
    else check="x";
    $display("|%4dns  | %b | %b |   %s   |",$stime,in,out,check);
    $display("|----------------------------------------------|-------|");
end
initial #41 $finish;

endmodule