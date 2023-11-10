;Nhap vao ten thu muc can chuyen den:X
;Thu muc da duoc chuyen
;An phim bat ky de ve Main menu
;
INCLUDE lib1.asm
.MODEL small
.STACK 100h
.DATA
 tm db 13,10,'CHUC NANG CHUYEN DEN THU MUC'
    db 13,10,'----------------------------'
    db 13,10,13,10, 'Hay vao ten thu muc can chuyen den : $'
 error db 13,10, 'Khong chuyen den duoc !$'
 success db 13,10, 'Thu muc da duoc chuyen !$'
 tieptuc db 13,10, 'An phim bat ky de ve Main menu $'
 buff db 30 
    db ?
file_name db 30 dup(?)
.CODE
public @CD$qv
@CD$qv proc
 PS:
	mov ax,@data
    mov ds,ax
L0:
clrscr
HienString  tm
lea dx,buff
call GET_FILE_NAME
lea dx,file_name
mov ah,3Bh
int 21h
jnc L1
HienString error
jmp Exit_TM
   L1:
    HienString success
   Exit_TM:
    HienString tieptuc
    mov ah,1
    int 21h
   Exit:
    ret
@CD$qv endp
INCLUDE lib3.asm
END PS
