`include "Memory.v"

module main;
reg signed[15:0] in;
reg load,clk;
reg[14:0] address;
wire signed[15:0] out;

Memory g0(in,load,address,clk,out);

initial begin

    $display("---------------------Memory----------------------------");
    $display("|  Time  |  in   |  load  |  address  |  clk  |  out  |");
    $display("-------------------------------------------------------");
    $monitor("|%4dns  |%-7d| %3d    |   %d   |%4d   |%7d|",$stime,in,load,address,clk,out);
    in=0;load=1;clk=0;address=15'd0;
    #10 in=-16'd1;load=1;address=15'b000000000000000;
    #20 in=16'd9999;load=0;address=15'b000000000000000;
    #20 in=16'd9999;load=0;address=15'b010000000000000;
    #10 in=16'd9999;load=0;address=15'b100000000000000;
    #10 in=16'd2222;load=1;address=15'b010000000000000;
    #20 in=16'd9999;load=0;address=15'b010000000000000;
    #20 in=16'd9999;load=0;address=15'b000000000000000;
    #10 in=16'd9999;load=0;address=15'b100000000000000;
    #10 in=16'd9999;load=0;address=15'b000000000000001;
    #10 in=16'd9999;load=0;address=15'b000000000000010;
    #10 in=16'd9999;load=0;address=15'b000000000000100;
    #10 in=16'd9999;load=0;address=15'b000000000001000;
    #10 in=16'd9999;load=0;address=15'b000000000010000;
    #10 in=16'd9999;load=0;address=15'b000000000100000;
    #10 in=16'd9999;load=0;address=15'b000000001000000;
    #10 in=16'd9999;load=0;address=15'b000000010000000;
    #10 in=16'd9999;load=0;address=15'b000000100000000;
    #10 in=16'd9999;load=0;address=15'b000001000000000;
    #10 in=16'd9999;load=0;address=15'b000010000000000;
    #10 in=16'd9999;load=0;address=15'b000100000000000;
    #10 in=16'd9999;load=0;address=15'b001000000000000;
    #10 in=16'd9999;load=0;address=15'b010000000000000;

    #10 in=16'd1234;load=1;address=15'b001001000110100;
    #20 in=16'd1234;load=0;address=15'b010001000110100;
    #10 in=16'd1234;load=0;address=15'b110001000110100;
    #10 in=16'd2345;load=1;address=15'b010001101000101;
    #20 in=16'd2345;load=0;address=15'b000001101000101;
    #10 in=16'd2345;load=0;address=15'b100001101000101;
    #10 in=16'd2345;load=0;address=15'b110000000000000;

    #10 in=-16'd1;load=1;address=15'b100111111001111;
    #10 in=-16'd1;load=1;address=15'b101000001001111;
    #10 in=-16'd1;load=1;address=15'b000111111001111;
    #10 in=-16'd1;load=1;address=15'b010111111001111;

    #10 in=-16'd1;load=0;address=15'b100111111001110;
    #10 in=-16'd1;load=0;address=15'b100111111001101;
    #10 in=-16'd1;load=0;address=15'b100111111001011;
    #10 in=-16'd1;load=0;address=15'b100111111000111;
    #10 in=-16'd1;load=0;address=15'b100111111011111;
    #10 in=-16'd1;load=0;address=15'b100111111101111;
    #10 in=-16'd1;load=0;address=15'b100111110001111;
    #10 in=-16'd1;load=0;address=15'b100111101001111;
    #10 in=-16'd1;load=0;address=15'b100111011001111;
    #10 in=-16'd1;load=0;address=15'b100110111001111;

    #10 in=-16'd1;load=0;address=15'b100101111001111;
    #10 in=-16'd1;load=0;address=15'b100011111001111;
    #10 in=-16'd1;load=0;address=15'b101111111001111;
    //#10 in=16'd520;load=1;address=15'b110000000000000;
    #10 in=16'd520;load=0;address=15'b110000000000000;

end

always #5 begin
    clk=~clk;
end

initial #541 $finish;

endmodule