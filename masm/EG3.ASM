ASSUME DS:DATA, CS:CODE
DATA SEGMENT

DATA ENDS
CODE SEGMENT
START:
MOV AX, DATA
MOV DS, AX


MOV AH, 01H; Reads a character and stores it in AL register
INT 21H

MOV DL,AL;
MOV AH, 02H; Displays a character
INT 21H

MOV AH, 4CH
INT 21H
CODE ENDS
END START

