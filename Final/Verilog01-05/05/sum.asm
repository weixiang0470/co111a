@10 //A Register point to RAM[10] or A=10
D=A //D=10
@0 //A Register point to RAM[0] or A=0
M=D //RAM[0]=D=10

// Computes RAM[1] = 1 + ... + RAM[0]
@i //Set a variable called i in RAM[i] 
M=1 // i = 1
@sum //Set a variable called sum in RAM[sum] 
M=0 // sum = 0

(LOOP) //Record a address called LOOP at ROM[LOOP] 
// if i>RAM[0] goto STOP
@i //Point to RAM[i]
D=M //D=RAM[i] or D=i
@R0 //Point to RAM[R0] or RAM[0]
D=D-M //D=D-RAM[R0]
@STOP
D;JGT //if(D>0) go to STOP 

// sum += i
@i //Point to RAM[i]
D=M //D=RAM[i]
@sum //Point to RAM[sum]
M=D+M //RAM[sum]+=D

//i++
@i //Point to RAM[i]
M=M+1 //RAM[i]+=1
@LOOP //ROM[LOOP]
0;JMP //Go to ROM[LOOP] unconditionlly
(STOP) //Record a address called STOP at ROM[STOP]

//Set RAM[R1]='sum'
@sum //Point to RAM[sum]
D=M //D=RAM[sum]
@R1 //Point to RAM[R1] or RAM[1]
M=D // RAM[1]=D or RAM[1]='sum'
// (END)
// @END
// 0;JMP