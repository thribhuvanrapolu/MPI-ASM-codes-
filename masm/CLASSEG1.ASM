    ASSUME DS:DATA, CS:CODE
    DATA SEGMENT
    A DW 7FFFH
    B DW 0003H
    DATA ENDS
    CODE SEGMENT
    START:                                  
    MOV AX, DATA
    MOV DS, AX

    SUB AX, AX
    SUB BX, BX

    ADD AX, A
    ADD AX, B

    INC BX

    MOV AH, 4CH
    INT 21H
    CODE ENDS
    END START
    
