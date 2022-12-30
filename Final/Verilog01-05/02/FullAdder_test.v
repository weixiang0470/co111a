`include "FullAdder.v"

module main;
reg a,b,c;
wire sum,carry;

FullAdder g0(a,b,c,sum,carry);
//|   a   |   b   |   c   |  sum  | carry |
//|   0   |   0   |   0   |   0   |   0   |
//|   0   |   0   |   1   |   1   |   0   |
//|   0   |   1   |   0   |   1   |   0   |
//|   0   |   1   |   1   |   0   |   1   |
//|   1   |   0   |   0   |   1   |   0   |
//|   1   |   0   |   1   |   0   |   1   |
//|   1   |   1   |   0   |   0   |   1   |
//|   1   |   1   |   1   |   1   |   1   |

initial begin
    $display("                   Ans");
    $display("-----------------------------------------");
    $display("|   a   |   b   |   c   |  sum  | carry |");
    $display("|   0   |   0   |   0   |   0   |   0   |");
    $display("|   0   |   0   |   1   |   1   |   0   |");
    $display("|   0   |   1   |   0   |   1   |   0   |");
    $display("|   0   |   1   |   1   |   0   |   1   |");
    $display("|   1   |   0   |   0   |   1   |   0   |");
    $display("|   1   |   0   |   1   |   0   |   1   |");
    $display("|   1   |   1   |   0   |   0   |   1   |");
    $display("|   1   |   1   |   1   |   1   |   1   |");
    $display("-----------------------------------------");
    $display("\n\n                   Output : ");
    $display("-------------------FullAdder----------------------");
    $display("|  Time  |   a   |   b   |   c   |  sum  | carry |");
    $display("--------------------------------------------------");
    $monitor("|%4dns  | %3d   | %3d   | %3d   | %3d   | %3d   |\n|------------------------------------------------|",$stime,a,b,c,sum,carry);
    a=0;
    b=0;
    c=0;
end
always #5 begin
    c=c+1;
end
always #10 begin
    b=b+1;
end
always #20 begin
    a = a+1;
end
initial #36 $finish;
endmodule