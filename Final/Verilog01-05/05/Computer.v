`include "../05/CPU.v"

module Computer(clk,reset);
    input clk,reset;
    wire[15:0] inM, outM, instruction;
    wire[14:0] addressM, pc;

    Memory ram(inM,loadM,addressM,!clk, outM);
    ROM32K rom(pc, instruction);
    CPU cpu(outM, instruction, reset, clk, inM, loadM, addressM, pc);	
endmodule
