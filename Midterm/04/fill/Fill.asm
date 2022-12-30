// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(Start)
@24576
D=M
@Start_BLACK
D;JNE
@Start_WHITE
D;JEQ


(Start_BLACK)
@8191
D=A
(BLACK)
@16384
A=A+D
M=-1
D=D-1
@BLACK
D;JGE
@24576
D=M
@Start_BLACK
D;JNE

(Start_WHITE)
@8191
D=A
(WHITE)
@16384
A=A+D
M=0
D=D-1
@WHITE
D;JGE
//@24576
//D=M
//@Start_WHITE
//D;JEQ


@Start
0;JMP

