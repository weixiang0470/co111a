`include "HalfAdder.v"

module main;
reg a,b;
wire sum,carry;

HalfAdder g0(a,b,sum,carry);

//|   a   |   b   |  sum  | carry |
//|   0   |   0   |   0   |   0   |
//|   0   |   1   |   1   |   0   |
//|   1   |   0   |   1   |   0   |
//|   1   |   1   |   0   |   1   |

initial begin
    $display("               Ans");
    $display("---------------------------------");
    $display("|   a   |   b   |  sum  | carry |");
    $display("|   0   |   0   |   0   |   0   |");
    $display("|   0   |   1   |   1   |   0   |");
    $display("|   1   |   0   |   1   |   0   |");
    $display("|   1   |   1   |   0   |   1   |");
    $display("---------------------------------");
    $display("\n\n               Output : ");
    $display(" -----------------HalfAdder-------------- ");
    $display("|  Time  |   a   |   b   |  sum  | carry |");
    $display("|----------------------------------------|");
    $monitor("|%4dns  | %3d   | %3d   | %3d   | %3d   |\n|----------------------------------------|",$stime,a,b,sum,carry);
    a=0;
    b=0;
end
always #5 begin
    b=b+1;
end
always #10 begin
    a = a+1;
end
initial #16 $finish;
endmodule