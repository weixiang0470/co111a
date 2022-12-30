`include "RAM8.v"

module main;
    reg signed[15:0] in;
    reg load,clk;
    reg[2:0] address;
    wire signed[15:0] out;

RAM8 g0(in,load,address,clk,out);

initial begin
    $display("------------------------RAM8-----------------------");
    $display("|  Time  |  in   |  load  |address|  clk  |  out  |");
    $display("---------------------------------------------------");
    $monitor("|%4dns  |%-7d| %3d    |   %d   |%4d   |%7d|",$stime,in,load,address,clk,out);
    in=0;load=0;clk=0;address=0;
    #10 in=0;load=1;address=0;
    #10 in=16'd11111;load=0;address=0;
    #10 in=16'd11111;load=1;address=1;
    #10 in=16'd11111;load=0;address=0;
    #10 in=16'd3333;load=0;address=3'd3;
    #10 in=16'd3333;load=1;address=3'd3;
    #10 in=16'd3333;load=0;address=3'd3;
    #10 in=16'd3333;load=0;address=1;
    #5 in=16'd7777;load=0;address=1;
    #10 in=16'd7777;load=1;address=3'd7;
    #10 in=16'd7777;load=0;address=3'd7;
    #10 in=16'd7777;load=0;address=3'd3;
    #5 in=16'd7777;load=0;address=3'd7;
    #5 in=16'd7777;load=0;address=0;
    #10 in=16'd7777;load=0;address=3'd1;
    #5 in=16'd7777;load=0;address=3'd2;
    #5 in=16'd7777;load=0;address=3'd3;
    #5 in=16'd7777;load=0;address=3'd4;
    #5 in=16'd7777;load=0;address=3'd5;
    #5 in=16'd7777;load=0;address=3'd6;
    #5 in=16'd7777;load=0;address=3'd7;
    #5 in=16'd21845;load=1;address=0;
    #10 in=16'd21845;load=1;address=1;
    #10 in=16'd21845;load=1;address=3'd2;
    #10 in=16'd21845;load=1;address=3'd3;
    #10 in=16'd21845;load=1;address=3'd4;
    #10 in=16'd21845;load=1;address=3'd5;
    #10 in=16'd21845;load=1;address=3'd6;
    #10 in=16'd21845;load=1;address=3'd7;
    #10 in=16'd21845;load=0;address=0;
    #10 in=16'd21845;load=0;address=1;
    #5 in=16'd21845;load=0;address=3'd2;
    #5 in=16'd21845;load=0;address=3'd3;
    #5 in=16'd21845;load=0;address=3'd4;
    #5 in=16'd21845;load=0;address=3'd5;
    #5 in=16'd21845;load=0;address=3'd6;
    #5 in=16'd21845;load=0;address=3'd7;
end

always #5 begin
    clk=~clk;
end
initial #291 $finish;
endmodule