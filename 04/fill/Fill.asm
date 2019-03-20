(PRESS) //loop for press
@0
D=A
@i      //iterator for BLACK
M=D
@F      //iterator for WHITE
M=D

@KBD
D=M
@BLACK
D;JNE
@WHITE
D;JEQ

(BLACK)
@i
D=M
@SCREEN
A=A+D
M=-1 
D=A
@i
M=M+1
@24575
D=A-D
@BLACK //If current address is less than @KBD
D; JGT

@PRESS //Confirm that button is held
0;JMP

(WHITE)
@F
D=M
@SCREEN
A=A+D
M=0
D=A
@F
M=M+1
@24575
D=A-D //If current address is less than @KBD limit
@WHITE
D; JGT

@PRESS //Confirm that nothing is held
0;JMP
