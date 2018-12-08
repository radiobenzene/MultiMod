
section .text
global change
change:
        PUSH ebp
        MOV ebp,esp
        MOV edx,dword[ebp+8];*str
 .while:
        CMP byte[edx],0
        MOV cl, byte[edx]
        ;PRINT_CHAR cl
        ;NEWLINE
        JE .end; if end of string
        CMP byte[edx],'A'
        JL .skip
        CMP byte[edx],'Z'
        JG .skip
        MOV al,byte[edx];cl = str[i]
        SUB al,'A'
        INC al
 .sub:
        CMP al,10
        JL .end_2
        SUB al,10
        JMP .sub
        
.end_2:
        ;PRINT_DEC 1,al
        ;NEWLINE
        ADD al, '1'
        DEC al 
        ;PRINT_CHAR al
        ;NEWLINE
        MOV byte[edx],al
 .skip:
        INC edx
        JMP .while
 .end:
        MOV esp,ebp
        POP ebp
        RET




