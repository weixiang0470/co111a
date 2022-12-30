`include "RAM64.v"

module main;
    reg signed[15:0] in;
    reg load,clk;
    reg[5:0] address;
    wire signed[15:0] out;

RAM64 g0(in,load,address,clk,out);

initial begin
    $display("------------------------RAM64----------------------");
    $display("|  Time  |  in   |  load  | address|  clk  |  out  |");
    $display("---------------------------------------------------");
    $monitor("|%4dns  |%-7d| %3d    |   %d   |%4d   |%7d|",$stime,in,load,address,clk,out);
    in=0;load=0;clk=0;address=0;
    #10 in=16'd12321;load=1;address=6'd33;
    #10 in=16'd12321;load=1;address=6'd1;
    #10 in=16'd12321;load=1;address=6'd35;
    #10 in=16'd12321;load=1;address=6'd3;
    #10 in=16'd12321;load=1;address=6'd37;
    #10 in=16'd12321;load=1;address=6'd5;
    #10 in=16'd12321;load=1;address=6'd39;
    #10 in=16'd12321;load=1;address=6'd7;
    #10 in=16'd12321;load=1;address=6'd41;
    #10 in=16'd12321;load=1;address=6'd9;
    #10 in=16'd12321;load=1;address=6'd43;
    #10 in=16'd12321;load=1;address=6'd11;
    #10 in=16'd12321;load=1;address=6'd45;
    #10 in=16'd12321;load=1;address=6'd13;
    #10 in=16'd12321;load=1;address=6'd47;
    #10 in=16'd12321;load=1;address=6'd15;
    #10 in=16'd12321;load=1;address=6'd49;
    #10 in=16'd12321;load=1;address=6'd17;
    #10 in=16'd12321;load=1;address=6'd51;
    #10 in=16'd12321;load=1;address=6'd19;
    #10 in=16'd12321;load=1;address=6'd53;
    #10 in=16'd12321;load=1;address=6'd21;
    #10 in=16'd12321;load=1;address=6'd55;
    #10 in=16'd12321;load=1;address=6'd23;
    #10 in=16'd12321;load=1;address=6'd57;
    #10 in=16'd12321;load=1;address=6'd25;
    #10 in=16'd12321;load=1;address=6'd59;
    #10 in=16'd12321;load=1;address=6'd27;
    #10 in=16'd12321;load=1;address=6'd61;
    #10 in=16'd12321;load=1;address=6'd29;
    #10 in=16'd12321;load=1;address=6'd63;
    #10 in=16'd12321;load=1;address=6'd31;

    #5 in=16'd12321;load=0;address=6'd0;
    #5 in=16'd12321;load=0;address=6'd1;
    #5 in=16'd12321;load=0;address=6'd2;
    #5 in=16'd12321;load=0;address=6'd3;
    #5 in=16'd12321;load=0;address=6'd4;
    #5 in=16'd12321;load=0;address=6'd5;
    #5 in=16'd12321;load=0;address=6'd6;
    #5 in=16'd12321;load=0;address=6'd7;
    #5 in=16'd12321;load=0;address=6'd8;
    #5 in=16'd12321;load=0;address=6'd9;
    #5 in=16'd12321;load=0;address=6'd10;
    #5 in=16'd12321;load=0;address=6'd11;
    #5 in=16'd12321;load=0;address=6'd12;
    #5 in=16'd12321;load=0;address=6'd13;
    #5 in=16'd12321;load=0;address=6'd14;
    #5 in=16'd12321;load=0;address=6'd15;
    #5 in=16'd12321;load=0;address=6'd16;
    #5 in=16'd12321;load=0;address=6'd17;
    #5 in=16'd12321;load=0;address=6'd18;
    #5 in=16'd12321;load=0;address=6'd19;
    #5 in=16'd12321;load=0;address=6'd20;
    #5 in=16'd12321;load=0;address=6'd21;
    #5 in=16'd12321;load=0;address=6'd22;
    #5 in=16'd12321;load=0;address=6'd23;
    #5 in=16'd12321;load=0;address=6'd24;
    #5 in=16'd12321;load=0;address=6'd25;
    #5 in=16'd12321;load=0;address=6'd26;
    #5 in=16'd12321;load=0;address=6'd27;
    #5 in=16'd12321;load=0;address=6'd28;
    #5 in=16'd12321;load=0;address=6'd29;
    #5 in=16'd12321;load=0;address=6'd30;
    #5 in=16'd12321;load=0;address=6'd31;
    #5 in=16'd12321;load=0;address=6'd32;
    #5 in=16'd12321;load=0;address=6'd33;
    #5 in=16'd12321;load=0;address=6'd34;
    #5 in=16'd12321;load=0;address=6'd35;
    #5 in=16'd12321;load=0;address=6'd36;
    #5 in=16'd12321;load=0;address=6'd37;
    #5 in=16'd12321;load=0;address=6'd38;
    #5 in=16'd12321;load=0;address=6'd39;
    #5 in=16'd12321;load=0;address=6'd40;
    #5 in=16'd12321;load=0;address=6'd41;
    #5 in=16'd12321;load=0;address=6'd42;
    #5 in=16'd12321;load=0;address=6'd43;
    #5 in=16'd12321;load=0;address=6'd44;
    #5 in=16'd12321;load=0;address=6'd45;
    #5 in=16'd12321;load=0;address=6'd46;
    #5 in=16'd12321;load=0;address=6'd47;
    #5 in=16'd12321;load=0;address=6'd48;
    #5 in=16'd12321;load=0;address=6'd49;
    #5 in=16'd12321;load=0;address=6'd50;
    #5 in=16'd12321;load=0;address=6'd51;
    #5 in=16'd12321;load=0;address=6'd52;
    #5 in=16'd12321;load=0;address=6'd53;
    #5 in=16'd12321;load=0;address=6'd54;
    #5 in=16'd12321;load=0;address=6'd55;
    #5 in=16'd12321;load=0;address=6'd56;
    #5 in=16'd12321;load=0;address=6'd57;
    #5 in=16'd12321;load=0;address=6'd58;
    #5 in=16'd12321;load=0;address=6'd59;
    #5 in=16'd12321;load=0;address=6'd60;
    #5 in=16'd12321;load=0;address=6'd61;
    #5 in=16'd12321;load=0;address=6'd62;
    #5 in=16'd12321;load=0;address=6'd63;
end

always #5 begin
    clk=~clk;
end

initial #641 $finish;

endmodule