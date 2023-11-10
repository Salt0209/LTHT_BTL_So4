INCLUDE lib1.asm
.MODEL small
.STACK 100h
.DATA
 m1 db 13,10,'CHUC NANG TIM GIA TRI BE NHAT CUA DAY SO NGUYEN'
    db 13,10,'-----------------------------------------------'
    db 13,10,13,10,'Hay vao so luong thanh phan: $'
 m2 db 13,10, 'So luong thanh phan: $'
 m3 db 13,10, 'a[$'
 m4 db ']=$'
 m5 db 13,10,' Day so vua tao la: $'
 m6 db ' $ '
 m7 db 13,10,' Gia tri be nhat cua day so la: $'
 m8 db 13,10,' An phim bat ky de ve Main menu $'
 sltp dw ?
 i dw ?
 addr dw 100 dup(?)
 min dw ?

.CODE
public @findMin$qv
@findMin$qv proc
PS:
    mov ax,@data
    mov ds,ax
L0:
    clrscr
    HienString m1
    call VAO_SO_N
    HienString m2
    call HIEN_SO_N
    mov sltp,ax
    mov i,0
    mov cx,ax
    lea bx,addr
    ;;Bat dau thuc hien nhap du lieu mang
L1:
    HienString m3
    mov ax,i
    call HIEN_SO_N
    HienString m4
    call VAO_SO_N
    mov [BX],AX
    inc i
    add bx,2
    loop L1
    HienString m5
    mov cx,sltp
    lea bx,addr
    ;;Hien mang len man hinh
L2:
    mov ax,[bx] ;tro bx den vi tri a[0]
    call HIEN_SO_N
    HienString m6
    add bx,2
    loop L2

;;Bat dau thuc hien tim Min
    HienString m7
    lea bx,addr
    mov ax,[bx]
    mov cx,sltp

; Thuc hien vong lap
L3:
    cmp ax,[bx] 
    jle L4
    mov ax,[bx]
L4:
    add bx,2
    loop L3

    call HIEN_SO_N
    HienString m8
    mov ah,1
    int 21h 
   Exit:
    ret  
@findMin$qv endp
INCLUDE lib2.asm
end PS


  