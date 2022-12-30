`include "../05/Memory.v"

module CPU(inM,instruction,reset,clk,outM,writeM,addressM,pc);
    input[15:0] inM,instruction;
    input reset,clk;
    output[15:0] outM;
    output writeM;
    output[14:0] addressM,pc;

    reg inc0=1;
    wire IsA,IsC_dA,Aload,Dload,AllZero,Negative,LEThanZero,Positive,jump23,jump123,PCload;
    wire IsC,Ca,C1,C2,C3,C4,C5,C6,dA,dD,dM,J1,J2,J3;
    wire[15:0] ARegIn,Aout,Dout,M2out,ALUout,PCout;

//Split instruction
//IsC=instruction[15];Ca=instruction[12];
//C1=instruction[11];C2=instruction[10];C3=instruction[9];C4=instruction[8];C5=instruction[7];C6=instruction[6]
//dA=instruction[5];dD=instruction[4];dM=instruction[3];
//J1=instruction[2];J2=instruction[1];J3=instruction[0];
And isc(instruction[15],instruction[15],IsC);
And ca(instruction[12],instruction[12],Ca);
And c1(instruction[11],instruction[11],C1);
And c2(instruction[10],instruction[10],C2);
And c3(instruction[9],instruction[9],C3);
And c4(instruction[8],instruction[8],C4);
And c5(instruction[7],instruction[7],C5);
And c6(instruction[6],instruction[6],C6);
And da(instruction[5],instruction[5],dA);
And dd(instruction[4],instruction[4],dD);
And dm(instruction[3],instruction[3],dM);
And j1(instruction[2],instruction[2],J1);
And j2(instruction[1],instruction[1],J2);
And j3(instruction[0],instruction[0],J3);

//ARegister load//IsA or (IsC && dA==1) ==> ARegister load
Not g0(instruction[15],IsA);
And g1(IsC,dA,IsC_dA);
Or g2(IsA,IsC_dA,Aload);

//Choose input to ARegister//IsA take instruction else take ALUout
Mux16 g3(instruction,ALUout,IsA,ARegIn);
Register A(ARegIn,Aload,clk,Aout);
assign addressM = Aout[14:0];

//DRegister load and out//IsC && dD==1 ==> DRegister load
And g4(IsC,dD,Dload);
Register D(ALUout,Dload,clk,Dout);

//Choose inM or Aout //Ca == 1 take inM,else take ARegister out
Mux16 g5(inM,Aout,Ca,M2out);

//ALU 
ALU alu(Dout,M2out,C1,C2,C3,C4,C5,C6,ALUout,AllZero,Negative);
assign outM = ALUout;
//IsC && dM ==> writeM
assign writeM = IsC & dM;

//PC load
Or g6(AllZero,Negative,LEThanZero);
Not g7(LEThanZero,Positive);
And p1(J3,Positive,JGT);
And p2(J2,AllZero,JEQ);
And p3(J1,Negative,JLT);
Or p4(JGT,JEQ,jump23);
Or p5(jump23,JLT,jump123);
And p6(IsC,jump123,PCload);
//PC done
PC pc0(Aout,PCload,inc0,reset,clk,PCout);
assign pc = PCout[14:0];

endmodule