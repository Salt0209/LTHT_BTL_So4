INCLUDE lib1.asm
.MODEL	small
.STACK	100h
.DATA
m1 db 13,10,'CHUC NANG VE DUONG THANG'
   db,13,10,'-----------------------'
   db,13,10,13,10,' Vao toa do x: $'
m2 db 13,10,' Vao toa do y: $'
m3 db 13,10,' Vao so luong diem cho duong thang: $'
x dw ?
y dw ?
sodiem dw ?
buffvs db 8
        db ?
        db 8 dup(?)
.CODE
public @draw$qv
@draw$qv proc
PS:
    mov ax,@data
    mov ds,ax
    clrscr
    HienString m1
    call VAO_SO_N
    mov x,ax
    HienString m2
    call VAO_SO_N
    mov y,ax
    HienString m3
    call VAO_SO_N
    mov sodiem,ax

    mov ah,0fh
    int 10h
    push ax
    mov al,4
    mov ah,0
    int 10h
    mov bl,2
    mov bh,0
    mov ah,0bh
    int 10h
    mov bl,0
    mov bh,1
    mov ah,0bh
    int 10h
    mov cx,x
    mov dx,y
    mov si,sodiem
 L1:
    mov al,2
    mov ah,0ch
    int 10h
    inc cx
    inc dx
    dec si
    jnz L1
    mov ah,1
    int 21h
    pop ax
    mov ah,0
    int 10h
 Exit:
    ret
@draw$qv endp
INCLUDE lib2.asm
end PS














