
section .text
global del
del:
        PUSH ebp
        MOV ebp,esp
        MOV ecx,dword[ebp+8];*source
        MOV eax,dword[ebp+12];*dest
        PUSH ebx
        MOV bl,byte[ecx];1st elem
        INC ecx;2nd sym
        MOV byte[eax],bl
        INC eax
 .while:
        CMP byte[ecx],0
        JE .temp_end; 
        MOV dl, byte[ecx]
        CMP bl,dl
        JE .skips
        MOV byte[eax],dl
        INC eax
 .skips:
        INC ecx
        JMP .while
.temp_end:     
.end:
        POP ebx
        MOV esp,ebp
        POP ebp
        RET

    