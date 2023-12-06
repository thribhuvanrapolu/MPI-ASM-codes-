DATA SEGMENT
    NUM1 DW 0003H          ; First number (16-bit)
    NUM2 DW 0004H          ; Second number (16-bit)
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA          
    ; Set up data segment
    MOV DS, AX

    MOV AX, NUM1          ; Move the first number to AX register
    MOV BX, NUM2          ;
    ADD AX, BX            ; Add the second number to AX register


    MOV AH, 4CH           ; DOS function code for program termination
    INT 21H

CODE ENDS
END START

