ASSUME DS:DATA, CS:CODE
DATA SEGMENT
STR1 db 0AH, 0DH, "CSE$";
STR2 db 0AH, 0DH, "2023$";
DATA ENDS
CODE SEGMENT
START:
MOV AX, DATA
MOV DS, AX

LEA DX, STR1
MOV AH, 09H
INT 21H

LEA DX, STR2
MOV AH, 09H
INT 21H        

MOV AH, 4CH
INT 21H
CODE ENDS
END START


