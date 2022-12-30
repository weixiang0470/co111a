`include "../05/Computer.v"

module main;
reg reset, clock;

Computer c(clock, reset);

integer i;

initial
begin
  $readmemb("sum.hack", c.rom.m);
  $display("\nInput file : ");
  $display("-------------------------");
  for (i=0; i < 26; i=i+1) begin
    // $display("%4x: %x", i, c.rom.m[i]);
    $display("| %-2d : %b |", i, c.rom.m[i]);
  end
  $display("-------------------------");
  $display("\nProgram : ");
  $display("-----------------------------------------Computer----------------------------------------------");
  $display("| %4dns | clk=%d | pc=%-d| I=%-d | A=%-d | D=%-d | M=%-d | ALU=%-d | IsC=%d | dD=%d |", $stime, clock,c.pc,c.instruction,c.addressM,c.cpu.Dout,c.outM,c.cpu.ALUout,c.cpu.IsC,c.cpu.dD);
  $display("-----------------------------------------------------------------------------------------------");
  clock = 0;
  #10 reset=1;
  #30 reset=0;
end

always #5 begin
  clock = clock + 1;
  $display("| %4dns | clk=%d | pc=%-d| I=%-d | A=%-d | D=%-d | M=%-d | ALU=%-d | IsC=%d | dD=%d |", $stime, clock,c.pc,c.instruction,c.addressM,c.cpu.Dout,c.outM,c.cpu.ALUout,c.cpu.IsC,c.cpu.dD);
  $display("-----------------------------------------------------------------------------------------------");
end

initial #1641 $finish;

endmodule
