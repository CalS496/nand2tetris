// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@0
D=A
@i  //i=0 AKA the "counter"
M=D
@SUM //sum=0
M=D

(LOOP) //Beginning of loop
@i 
D=M
@1
D=M-D //Condition: if i is = R1, goto END AKA #of iterations
@END
D;JEQ 

@0
D=M
@SUM
M=D+M //Sum=R0+Sum

@i
M=M+1 //i+=1
@LOOP //next iteration
0;JMP

(END)
@END
@SUM
D=M
@2 //store the final sum/product in RAM[2]
M=D
0;JMP //infinite loop as END

