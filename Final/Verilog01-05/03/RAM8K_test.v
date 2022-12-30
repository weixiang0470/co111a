`include "Mix.v"

module main;
    reg signed[15:0] in;
    reg load,clk;
    reg[12:0] address;
    wire signed[15:0] out;

RAM8K g0(in,load,address,clk,out);
//0~8091
initial begin

    $display("---------------------RAM8K----------------------------");
    $display("|  Time  |  in   |  load  |  address |  clk  |  out  |");
    $display("------------------------------------------------------");
    $monitor("|%4dns  |%-7d| %3d    |   %d   |%4d   |%7d|",$stime,in,load,address,clk,out);
    in=0;load=1;clk=0;address=13'd0;
    #10 in=16'd1;load=1;address=13'd0;
    #10 in=16'd500;load=1;address=13'd500;
    #10 in=16'd1000;load=1;address=13'd1000;
    #10 in=16'd1505;load=1;address=13'd1505;
    #10 in=16'd2022;load=1;address=13'd2022;
    #10 in=16'd2500;load=1;address=13'd2500;
    #10 in=16'd3050;load=1;address=13'd3050;
    #10 in=16'd3600;load=1;address=13'd3600;
    #10 in=16'd4196;load=1;address=13'd4196;
    #10 in=16'd5200;load=1;address=13'd5200;
    #10 in=16'd6666;load=1;address=13'd6666;
    #10 in=16'd7777;load=1;address=13'd7777;
    #10 in=16'd8090;load=1;address=13'd8090;
    #10 in=16'd8091;load=1;address=13'd8091;
    #10 in=0;load=0;address=13'd0;
    #5 in=0;load=0;address=13'd500;
    #5 in=0;load=0;address=13'd501;
    #5 in=0;load=0;address=13'd1000;
    #5 in=0;load=0;address=13'd1001;
    #5 in=0;load=0;address=13'd1505;
    #5 in=0;load=0;address=13'd1506;
    #5 in=0;load=0;address=13'd2022;
    #5 in=0;load=0;address=13'd2023;
    #5 in=0;load=0;address=13'd2500;
    #5 in=0;load=0;address=13'd2501;
    #5 in=0;load=0;address=13'd3050;
    #5 in=0;load=0;address=13'd3051;
    #5 in=0;load=0;address=13'd3600;
    #5 in=0;load=0;address=13'd3599;
    #5 in=0;load=0;address=13'd4196;
    #5 in=0;load=0;address=13'd4195;
    #5 in=0;load=0;address=13'd5200;
    #5 in=0;load=0;address=13'd5201;
    #5 in=0;load=0;address=13'd6666;
    #5 in=0;load=0;address=13'd6667;
    #5 in=0;load=0;address=13'd7777;
    #5 in=0;load=0;address=13'd7778;
    #5 in=0;load=0;address=13'd8090;
    #5 in=0;load=0;address=13'd8091;
end
always #5 begin
    clk=~clk;
end
initial #271 $finish;
endmodule